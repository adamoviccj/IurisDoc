package similarity;

import java.util.*;

import es.ucm.fdi.gaia.jcolibri.exception.NoApplicableSimilarityFunctionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.LocalSimilarityFunction;

public class TabularSimilarity implements LocalSimilarityFunction {

	private double[][] matrix;
	private Map<String, Integer> indexMap;

	public TabularSimilarity(List<String> categories) {

		indexMap = new HashMap<>();

		int n = categories.size();
		matrix = new double[n][n];

		for (int i = 0; i < n; i++) {
			String normalized = normalize(categories.get(i));
			indexMap.put(normalized, i);
			matrix[i][i] = 1.0; // identični pojmovi
		}
	}

	private String normalize(String s) {
		if (s == null) return null;
		return s.trim().toLowerCase();
	}

	public void setSimilarity(String value1, String value2, double sim) {
		setSimilarity(value1, value2, sim, sim);
	}

	public void setSimilarity(String value1, String value2, double sim1, double sim2) {

		String v1 = normalize(value1);
		String v2 = normalize(value2);

		Integer index1 = indexMap.get(v1);
		Integer index2 = indexMap.get(v2);

		if (index1 != null && index2 != null) {
			matrix[index1][index2] = sim1;
			matrix[index2][index1] = sim2;
		}
	}

	@Override
	public double compute(Object value1, Object value2)
			throws NoApplicableSimilarityFunctionException {

		if (value1 instanceof String && value2 instanceof String)
			return compute((String) value1, (String) value2);

		if (value1 instanceof List && value2 instanceof List)
			return compute((List<String>) value1, (List<String>) value2);

		return 0;
	}

	public double compute(String str1, String str2) {

		if (str1 == null || str2 == null)
			return 0;

		String s1 = normalize(str1);
		String s2 = normalize(str2);

		// ako su potpuno isti
		if (s1.equals(s2))
			return 1.0;

		Integer index1 = indexMap.get(s1);
		Integer index2 = indexMap.get(s2);

		if (index1 != null && index2 != null)
			return matrix[index1][index2];

		return 0;
	}

	public double compute(List<String> list1, List<String> list2) {

		if (list1 == null || list2 == null)
			return 0;

		if (list1.isEmpty() && list2.isEmpty())
			return 1;

		double sim1to2 = 0;

		for (String el1 : list1) {
			double maxSim = 0;
			for (String el2 : list2)
				maxSim = Math.max(maxSim, compute(el1, el2));
			sim1to2 += maxSim;
		}

		double sim2to1 = 0;

		for (String el2 : list2) {
			double maxSim = 0;
			for (String el1 : list1)
				maxSim = Math.max(maxSim, compute(el2, el1));
			sim2to1 += maxSim;
		}

		return (sim1to2 + sim2to1) / (list1.size() + list2.size());
	}

	@Override
	public boolean isApplicable(Object value1, Object value2) {
		return (value1 instanceof String && value2 instanceof String) ||
				(value1 instanceof List && value2 instanceof List);
	}
}