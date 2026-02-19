(import-rdf "facts.rdf")
		(export-rdf export.rdf  is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv2 min_imprisonment max_imprisonment
)
		(export-proof proof.ruleml)
		
(defeasiblerule rule220_1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_integrity "family_member")
	) 
  => 
	 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_2
		(declare (superior rule220_1 )) 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	) 
  => 
	 
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen220_1
		 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pen220_2_min
		 
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen220_2_max
		 
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 3)
	) 
) 
	