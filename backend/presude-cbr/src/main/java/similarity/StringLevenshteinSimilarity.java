package similarity;

import es.ucm.fdi.gaia.jcolibri.exception.NoApplicableSimilarityFunctionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.LocalSimilarityFunction;

public class StringLevenshteinSimilarity implements LocalSimilarityFunction {

    @Override
    public double compute(Object value1, Object value2)
            throws NoApplicableSimilarityFunctionException {

        if (value1 == null || value2 == null)
            return 0;

        String s1 = value1.toString().toLowerCase().trim();
        String s2 = value2.toString().toLowerCase().trim();

        if (s1.equals(s2))
            return 1.0;

        int distance = levenshtein(s1, s2);
        int max = Math.max(s1.length(), s2.length());

        if (max == 0) return 1.0;


        return 1.0 - ((double) distance / max);
    }

    private int levenshtein(String s1, String s2) {

        int[][] dp = new int[s1.length()+1][s2.length()+1];

        for (int i=0;i<=s1.length();i++)
            dp[i][0]=i;

        for (int j=0;j<=s2.length();j++)
            dp[0][j]=j;

        for (int i=1;i<=s1.length();i++)
            for (int j=1;j<=s2.length();j++) {

                int cost = s1.charAt(i-1)==s2.charAt(j-1)?0:1;

                dp[i][j] = Math.min(
                        Math.min(dp[i-1][j]+1, dp[i][j-1]+1),
                        dp[i-1][j-1]+cost
                );
            }

        return dp[s1.length()][s2.length()];
    }

    @Override
    public boolean isApplicable(Object v1, Object v2) {
        return v1 instanceof String && v2 instanceof String;
    }
}