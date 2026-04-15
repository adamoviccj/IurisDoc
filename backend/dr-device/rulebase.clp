(import-rdf "facts.rdf")
		(export-rdf export.rdf  is_guilty_of_family_violence_lv1 min_imprisonment max_imprisonment is_guilty_of_family_violence_lv2 to_pay is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures is_guilty_of_nonpayment_of_support_lv1 is_guilty_of_nonpayment_of_support_lv2)
		(export-proof proof.ruleml)
		
(defeasiblerule rule220_1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_gross_violence "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_integrity "family_member_yes")
	) 
  => 
	 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_gross_violence "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_integrity "family_member_yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_weapon "true")
	) 
  => 
	 
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_2_neg
		(declare (superior rule220_1 )) 
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_3_a
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_gross_violence "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_integrity "family_member_yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_weapon "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes_serious_injury "true")
	) 
  => 
	 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_3_b
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_gross_violence "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_integrity "family_member_yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_weapon "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:victim_is_minor "true")
	) 
  => 
	 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_3_neg_1
		(declare (superior rule220_1 )) 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_3_neg_2
		(declare (superior rule220_2 )) 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_4
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_gross_violence "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_integrity "family_member_yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses_weapon "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes_death "true")
	) 
  => 
	 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_4_neg_1
		(declare (superior rule220_1 )) 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_4_neg_2
		(declare (superior rule220_2 )) 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_4_neg_3
		(declare (superior rule220_3_a rule220_3_b )) 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_protection_measures "true")
	) 
  => 
	 
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule220_5_neg_1
		(declare (superior rule220_5 )) 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_5_neg_2
		(declare (superior rule220_5 )) 
	(is_guilty_of_family_violence_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_5_neg_3
		(declare (superior rule220_5 )) 
	(is_guilty_of_family_violence_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule220_5_neg_4
		(declare (superior rule220_5 )) 
	(is_guilty_of_family_violence_lv4 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule221_1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:legal_obligation_to_support "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:duty_established_by_court_order "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:fails_to_pay_support "true")
	) 
  => 
	 
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule221_1_neg
		(declare (superior rule221_1 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:legal_obligation_to_support "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:duty_established_by_court_order "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:fails_to_pay_support "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:justified_reasons_for_nonpayment "true")
	) 
  => 
	
		(not  
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule221_3
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:legal_obligation_to_support "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:duty_established_by_court_order "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:fails_to_pay_support "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:justified_reasons_for_nonpayment "false")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:severe_consequences_for_victim "true")
	) 
  => 
	 
	(is_guilty_of_nonpayment_of_support_lv2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule221_1_neg_3
		(declare (superior rule221_1 )) 
	(is_guilty_of_nonpayment_of_support_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule pen220_1_fine
		 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay 
		(
		 value 1000)
	
		(
		 unit Money)
	) 
) 
	
(defeasiblerule pen220_1_prison
		 
	(is_guilty_of_family_violence_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 2)
	
		(
		 unit Years)
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
	
		(
		 unit Months)
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
	
		(
		 unit Years)
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
	
		(
		 unit Years)
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
	
		(
		 unit Years)
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
	
		(
		 unit Years)
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
	
		(
		 unit Years)
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
	
		(
		 unit Years)
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
	
		(
		 unit Years)
	) 
) 
	
(defeasiblerule pen220_5_fine
		 
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay 
		(
		 value 500)
	
		(
		 unit Money)
	) 
) 
	
(defeasiblerule pen220_5_prison
		 
	(is_guilty_of_violating_measures 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1)
	
		(
		 unit Years)
	) 
) 
	
(defeasiblerule pen221_1_fine
		 
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay 
		(
		 value 300)
	
		(
		 unit Money)
	) 
) 
	
(defeasiblerule pen221_1_prison
		 
	(is_guilty_of_nonpayment_of_support_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 2)
	
		(
		 unit Years)
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
	
		(
		 unit Months)
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
	
		(
		 unit Years)
	) 
) 
	