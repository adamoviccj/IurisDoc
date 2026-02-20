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
	
(defeasiblerule rule220_3
		(declare (superior rule220_2 )) 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_4
		(declare (superior rule220_3 )) 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	) 
  => 
	 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	) 
  => 
	 
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule221_1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	) 
  => 
	 
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule221_3
		(declare (superior rule221_1 )) 
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	) 
  => 
	 
	(is_guilty_of_nonpayment_of_support_lv2 
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
	
(defeasiblerule pen220_3_min
		 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen220_3_max
		 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pen220_4_min
		 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen220_4_max
		 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 12)
	) 
) 
	
(defeasiblerule pen220_5
		 
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen221_1
		 
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pen221_3_min
		 
	(is_guilty_of_nonpayment_of_support_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pen221_3_max
		 
	(is_guilty_of_nonpayment_of_support_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 5)
	) 
) 
	