([pen221_3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_3_max-defeasibly-dot-gen436)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_3_max] ) ) ) ?gen394 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen221_3_max $? ) ) ( test ( eq ( class ?gen394 ) max_imprisonment ) ) ( not ( and ?gen401 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen396 & : ( not ( member$ pen221_3_max $?gen396 ) ) ) ) ) ) => ?gen394 <- ( max_imprisonment ( positive 0 ) )"))

([pen221_3_max-defeasibly] of derived-attribute-rule
   (pos-name pen221_3_max-defeasibly-gen438)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_3_max] ) ) ) ?gen401 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen396 & : ( not ( member$ pen221_3_max $?gen396 ) ) ) ) ( test ( eq ( class ?gen394 ) max_imprisonment ) ) => ?gen394 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen221_3_max ?gen401 ) )"))

([pen221_3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen221_3_max-overruled-dot-gen440)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_3_max] ) ) ) ?gen394 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen397 ) ( negative-overruled $?gen398 & : ( subseq-pos ( create$ pen221_3_max-overruled $?gen397 $$$ $?gen398 ) ) ) ) ( test ( eq ( class ?gen394 ) max_imprisonment ) ) ( not ( and ?gen401 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( max_imprisonment ( positive-defeated $?gen396 & : ( not ( member$ pen221_3_max $?gen396 ) ) ) ) ) ) => ( calc ( bind $?gen399 ( delete-member$ $?gen398 ( create$ pen221_3_max-overruled $?gen397 ) ) ) ) ?gen394 <- ( max_imprisonment ( negative-overruled $?gen399 ) )"))

([pen221_3_max-overruled] of derived-attribute-rule
   (pos-name pen221_3_max-overruled-gen442)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_3_max] ) ) ) ?gen401 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen397 ) ( negative-overruled $?gen398 & : ( not ( subseq-pos ( create$ pen221_3_max-overruled $?gen397 $$$ $?gen398 ) ) ) ) ( positive-defeated $?gen396 & : ( not ( member$ pen221_3_max $?gen396 ) ) ) ) ( test ( eq ( class ?gen394 ) max_imprisonment ) ) => ( calc ( bind $?gen399 ( create$ pen221_3_max-overruled $?gen397 $?gen398 ) ) ) ?gen394 <- ( max_imprisonment ( negative-overruled $?gen399 ) )"))

([pen221_3_max-support] of derived-attribute-rule
   (pos-name pen221_3_max-support-gen444)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_3_max] ) ) ) ?gen393 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ?gen394 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen396 & : ( not ( subseq-pos ( create$ pen221_3_max ?gen393 $$$ $?gen396 ) ) ) ) ) ( test ( eq ( class ?gen394 ) max_imprisonment ) ) => ( calc ( bind $?gen399 ( create$ pen221_3_max ?gen393 $?gen396 ) ) ) ?gen394 <- ( max_imprisonment ( positive-support $?gen399 ) )"))

([pen221_3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_3_min-defeasibly-dot-gen446)
   (depends-on declare min_imprisonment is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_3_min] ) ) ) ?gen385 <- ( min_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pen221_3_min $? ) ) ( test ( eq ( class ?gen385 ) min_imprisonment ) ) ( not ( and ?gen392 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen387 & : ( not ( member$ pen221_3_min $?gen387 ) ) ) ) ) ) => ?gen385 <- ( min_imprisonment ( positive 0 ) )"))

([pen221_3_min-defeasibly] of derived-attribute-rule
   (pos-name pen221_3_min-defeasibly-gen448)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_3_min] ) ) ) ?gen392 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( min_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen387 & : ( not ( member$ pen221_3_min $?gen387 ) ) ) ) ( test ( eq ( class ?gen385 ) min_imprisonment ) ) => ?gen385 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen221_3_min ?gen392 ) )"))

([pen221_3_min-overruled-dot] of derived-attribute-rule
   (pos-name pen221_3_min-overruled-dot-gen450)
   (depends-on declare min_imprisonment is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_3_min] ) ) ) ?gen385 <- ( min_imprisonment ( value 6 ) ( negative-support $?gen388 ) ( negative-overruled $?gen389 & : ( subseq-pos ( create$ pen221_3_min-overruled $?gen388 $$$ $?gen389 ) ) ) ) ( test ( eq ( class ?gen385 ) min_imprisonment ) ) ( not ( and ?gen392 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( min_imprisonment ( positive-defeated $?gen387 & : ( not ( member$ pen221_3_min $?gen387 ) ) ) ) ) ) => ( calc ( bind $?gen390 ( delete-member$ $?gen389 ( create$ pen221_3_min-overruled $?gen388 ) ) ) ) ?gen385 <- ( min_imprisonment ( negative-overruled $?gen390 ) )"))

([pen221_3_min-overruled] of derived-attribute-rule
   (pos-name pen221_3_min-overruled-gen452)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_3_min] ) ) ) ?gen392 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( min_imprisonment ( value 6 ) ( negative-support $?gen388 ) ( negative-overruled $?gen389 & : ( not ( subseq-pos ( create$ pen221_3_min-overruled $?gen388 $$$ $?gen389 ) ) ) ) ( positive-defeated $?gen387 & : ( not ( member$ pen221_3_min $?gen387 ) ) ) ) ( test ( eq ( class ?gen385 ) min_imprisonment ) ) => ( calc ( bind $?gen390 ( create$ pen221_3_min-overruled $?gen388 $?gen389 ) ) ) ?gen385 <- ( min_imprisonment ( negative-overruled $?gen390 ) )"))

([pen221_3_min-support] of derived-attribute-rule
   (pos-name pen221_3_min-support-gen454)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_3_min] ) ) ) ?gen384 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ?gen385 <- ( min_imprisonment ( value 6 ) ( positive-support $?gen387 & : ( not ( subseq-pos ( create$ pen221_3_min ?gen384 $$$ $?gen387 ) ) ) ) ) ( test ( eq ( class ?gen385 ) min_imprisonment ) ) => ( calc ( bind $?gen390 ( create$ pen221_3_min ?gen384 $?gen387 ) ) ) ?gen385 <- ( min_imprisonment ( positive-support $?gen390 ) )"))

([pen221_1_prison-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_1_prison-defeasibly-dot-gen456)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_1_prison] ) ) ) ?gen376 <- ( max_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen221_1_prison $? ) ) ( test ( eq ( class ?gen376 ) max_imprisonment ) ) ( not ( and ?gen383 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen378 & : ( not ( member$ pen221_1_prison $?gen378 ) ) ) ) ) ) => ?gen376 <- ( max_imprisonment ( positive 0 ) )"))

([pen221_1_prison-defeasibly] of derived-attribute-rule
   (pos-name pen221_1_prison-defeasibly-gen458)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_1_prison] ) ) ) ?gen383 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( max_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen378 & : ( not ( member$ pen221_1_prison $?gen378 ) ) ) ) ( test ( eq ( class ?gen376 ) max_imprisonment ) ) => ?gen376 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen221_1_prison ?gen383 ) )"))

([pen221_1_prison-overruled-dot] of derived-attribute-rule
   (pos-name pen221_1_prison-overruled-dot-gen460)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_1_prison] ) ) ) ?gen376 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen379 ) ( negative-overruled $?gen380 & : ( subseq-pos ( create$ pen221_1_prison-overruled $?gen379 $$$ $?gen380 ) ) ) ) ( test ( eq ( class ?gen376 ) max_imprisonment ) ) ( not ( and ?gen383 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( max_imprisonment ( positive-defeated $?gen378 & : ( not ( member$ pen221_1_prison $?gen378 ) ) ) ) ) ) => ( calc ( bind $?gen381 ( delete-member$ $?gen380 ( create$ pen221_1_prison-overruled $?gen379 ) ) ) ) ?gen376 <- ( max_imprisonment ( negative-overruled $?gen381 ) )"))

([pen221_1_prison-overruled] of derived-attribute-rule
   (pos-name pen221_1_prison-overruled-gen462)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_1_prison] ) ) ) ?gen383 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen379 ) ( negative-overruled $?gen380 & : ( not ( subseq-pos ( create$ pen221_1_prison-overruled $?gen379 $$$ $?gen380 ) ) ) ) ( positive-defeated $?gen378 & : ( not ( member$ pen221_1_prison $?gen378 ) ) ) ) ( test ( eq ( class ?gen376 ) max_imprisonment ) ) => ( calc ( bind $?gen381 ( create$ pen221_1_prison-overruled $?gen379 $?gen380 ) ) ) ?gen376 <- ( max_imprisonment ( negative-overruled $?gen381 ) )"))

([pen221_1_prison-support] of derived-attribute-rule
   (pos-name pen221_1_prison-support-gen464)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_1_prison] ) ) ) ?gen375 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen376 <- ( max_imprisonment ( value 2 ) ( positive-support $?gen378 & : ( not ( subseq-pos ( create$ pen221_1_prison ?gen375 $$$ $?gen378 ) ) ) ) ) ( test ( eq ( class ?gen376 ) max_imprisonment ) ) => ( calc ( bind $?gen381 ( create$ pen221_1_prison ?gen375 $?gen378 ) ) ) ?gen376 <- ( max_imprisonment ( positive-support $?gen381 ) )"))

([pen221_1_fine-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_1_fine-defeasibly-dot-gen466)
   (depends-on declare to_pay is_guilty_of_nonpayment_of_support_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_1_fine] ) ) ) ?gen367 <- ( to_pay ( value 300 ) ( positive 1 ) ( positive-derivator pen221_1_fine $? ) ) ( test ( eq ( class ?gen367 ) to_pay ) ) ( not ( and ?gen374 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( to_pay ( negative ~ 2 ) ( positive-overruled $?gen369 & : ( not ( member$ pen221_1_fine $?gen369 ) ) ) ) ) ) => ?gen367 <- ( to_pay ( positive 0 ) )"))

([pen221_1_fine-defeasibly] of derived-attribute-rule
   (pos-name pen221_1_fine-defeasibly-gen468)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_1_fine] ) ) ) ?gen374 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( to_pay ( value 300 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen369 & : ( not ( member$ pen221_1_fine $?gen369 ) ) ) ) ( test ( eq ( class ?gen367 ) to_pay ) ) => ?gen367 <- ( to_pay ( positive 1 ) ( positive-derivator pen221_1_fine ?gen374 ) )"))

([pen221_1_fine-overruled-dot] of derived-attribute-rule
   (pos-name pen221_1_fine-overruled-dot-gen470)
   (depends-on declare to_pay is_guilty_of_nonpayment_of_support_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_1_fine] ) ) ) ?gen367 <- ( to_pay ( value 300 ) ( negative-support $?gen370 ) ( negative-overruled $?gen371 & : ( subseq-pos ( create$ pen221_1_fine-overruled $?gen370 $$$ $?gen371 ) ) ) ) ( test ( eq ( class ?gen367 ) to_pay ) ) ( not ( and ?gen374 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( to_pay ( positive-defeated $?gen369 & : ( not ( member$ pen221_1_fine $?gen369 ) ) ) ) ) ) => ( calc ( bind $?gen372 ( delete-member$ $?gen371 ( create$ pen221_1_fine-overruled $?gen370 ) ) ) ) ?gen367 <- ( to_pay ( negative-overruled $?gen372 ) )"))

([pen221_1_fine-overruled] of derived-attribute-rule
   (pos-name pen221_1_fine-overruled-gen472)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_1_fine] ) ) ) ?gen374 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( to_pay ( value 300 ) ( negative-support $?gen370 ) ( negative-overruled $?gen371 & : ( not ( subseq-pos ( create$ pen221_1_fine-overruled $?gen370 $$$ $?gen371 ) ) ) ) ( positive-defeated $?gen369 & : ( not ( member$ pen221_1_fine $?gen369 ) ) ) ) ( test ( eq ( class ?gen367 ) to_pay ) ) => ( calc ( bind $?gen372 ( create$ pen221_1_fine-overruled $?gen370 $?gen371 ) ) ) ?gen367 <- ( to_pay ( negative-overruled $?gen372 ) )"))

([pen221_1_fine-support] of derived-attribute-rule
   (pos-name pen221_1_fine-support-gen474)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_1_fine] ) ) ) ?gen366 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen367 <- ( to_pay ( value 300 ) ( positive-support $?gen369 & : ( not ( subseq-pos ( create$ pen221_1_fine ?gen366 $$$ $?gen369 ) ) ) ) ) ( test ( eq ( class ?gen367 ) to_pay ) ) => ( calc ( bind $?gen372 ( create$ pen221_1_fine ?gen366 $?gen369 ) ) ) ?gen367 <- ( to_pay ( positive-support $?gen372 ) )"))

([pen220_5_prison-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_5_prison-defeasibly-dot-gen476)
   (depends-on declare max_imprisonment is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_5_prison] ) ) ) ?gen358 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen220_5_prison $? ) ) ( test ( eq ( class ?gen358 ) max_imprisonment ) ) ( not ( and ?gen365 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen360 & : ( not ( member$ pen220_5_prison $?gen360 ) ) ) ) ) ) => ?gen358 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_5_prison-defeasibly] of derived-attribute-rule
   (pos-name pen220_5_prison-defeasibly-gen478)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_5_prison] ) ) ) ?gen365 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen360 & : ( not ( member$ pen220_5_prison $?gen360 ) ) ) ) ( test ( eq ( class ?gen358 ) max_imprisonment ) ) => ?gen358 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_5_prison ?gen365 ) )"))

([pen220_5_prison-overruled-dot] of derived-attribute-rule
   (pos-name pen220_5_prison-overruled-dot-gen480)
   (depends-on declare max_imprisonment is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_5_prison] ) ) ) ?gen358 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen361 ) ( negative-overruled $?gen362 & : ( subseq-pos ( create$ pen220_5_prison-overruled $?gen361 $$$ $?gen362 ) ) ) ) ( test ( eq ( class ?gen358 ) max_imprisonment ) ) ( not ( and ?gen365 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( max_imprisonment ( positive-defeated $?gen360 & : ( not ( member$ pen220_5_prison $?gen360 ) ) ) ) ) ) => ( calc ( bind $?gen363 ( delete-member$ $?gen362 ( create$ pen220_5_prison-overruled $?gen361 ) ) ) ) ?gen358 <- ( max_imprisonment ( negative-overruled $?gen363 ) )"))

([pen220_5_prison-overruled] of derived-attribute-rule
   (pos-name pen220_5_prison-overruled-gen482)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_5_prison] ) ) ) ?gen365 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen361 ) ( negative-overruled $?gen362 & : ( not ( subseq-pos ( create$ pen220_5_prison-overruled $?gen361 $$$ $?gen362 ) ) ) ) ( positive-defeated $?gen360 & : ( not ( member$ pen220_5_prison $?gen360 ) ) ) ) ( test ( eq ( class ?gen358 ) max_imprisonment ) ) => ( calc ( bind $?gen363 ( create$ pen220_5_prison-overruled $?gen361 $?gen362 ) ) ) ?gen358 <- ( max_imprisonment ( negative-overruled $?gen363 ) )"))

([pen220_5_prison-support] of derived-attribute-rule
   (pos-name pen220_5_prison-support-gen484)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_5_prison] ) ) ) ?gen357 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ?gen358 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen360 & : ( not ( subseq-pos ( create$ pen220_5_prison ?gen357 $$$ $?gen360 ) ) ) ) ) ( test ( eq ( class ?gen358 ) max_imprisonment ) ) => ( calc ( bind $?gen363 ( create$ pen220_5_prison ?gen357 $?gen360 ) ) ) ?gen358 <- ( max_imprisonment ( positive-support $?gen363 ) )"))

([pen220_5_fine-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_5_fine-defeasibly-dot-gen486)
   (depends-on declare to_pay is_guilty_of_violating_measures to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_5_fine] ) ) ) ?gen349 <- ( to_pay ( value 500 ) ( positive 1 ) ( positive-derivator pen220_5_fine $? ) ) ( test ( eq ( class ?gen349 ) to_pay ) ) ( not ( and ?gen356 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( to_pay ( negative ~ 2 ) ( positive-overruled $?gen351 & : ( not ( member$ pen220_5_fine $?gen351 ) ) ) ) ) ) => ?gen349 <- ( to_pay ( positive 0 ) )"))

([pen220_5_fine-defeasibly] of derived-attribute-rule
   (pos-name pen220_5_fine-defeasibly-gen488)
   (depends-on declare is_guilty_of_violating_measures to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_5_fine] ) ) ) ?gen356 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( to_pay ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen351 & : ( not ( member$ pen220_5_fine $?gen351 ) ) ) ) ( test ( eq ( class ?gen349 ) to_pay ) ) => ?gen349 <- ( to_pay ( positive 1 ) ( positive-derivator pen220_5_fine ?gen356 ) )"))

([pen220_5_fine-overruled-dot] of derived-attribute-rule
   (pos-name pen220_5_fine-overruled-dot-gen490)
   (depends-on declare to_pay is_guilty_of_violating_measures to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_5_fine] ) ) ) ?gen349 <- ( to_pay ( value 500 ) ( negative-support $?gen352 ) ( negative-overruled $?gen353 & : ( subseq-pos ( create$ pen220_5_fine-overruled $?gen352 $$$ $?gen353 ) ) ) ) ( test ( eq ( class ?gen349 ) to_pay ) ) ( not ( and ?gen356 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( to_pay ( positive-defeated $?gen351 & : ( not ( member$ pen220_5_fine $?gen351 ) ) ) ) ) ) => ( calc ( bind $?gen354 ( delete-member$ $?gen353 ( create$ pen220_5_fine-overruled $?gen352 ) ) ) ) ?gen349 <- ( to_pay ( negative-overruled $?gen354 ) )"))

([pen220_5_fine-overruled] of derived-attribute-rule
   (pos-name pen220_5_fine-overruled-gen492)
   (depends-on declare is_guilty_of_violating_measures to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_5_fine] ) ) ) ?gen356 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( to_pay ( value 500 ) ( negative-support $?gen352 ) ( negative-overruled $?gen353 & : ( not ( subseq-pos ( create$ pen220_5_fine-overruled $?gen352 $$$ $?gen353 ) ) ) ) ( positive-defeated $?gen351 & : ( not ( member$ pen220_5_fine $?gen351 ) ) ) ) ( test ( eq ( class ?gen349 ) to_pay ) ) => ( calc ( bind $?gen354 ( create$ pen220_5_fine-overruled $?gen352 $?gen353 ) ) ) ?gen349 <- ( to_pay ( negative-overruled $?gen354 ) )"))

([pen220_5_fine-support] of derived-attribute-rule
   (pos-name pen220_5_fine-support-gen494)
   (depends-on declare is_guilty_of_violating_measures to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_5_fine] ) ) ) ?gen348 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ?gen349 <- ( to_pay ( value 500 ) ( positive-support $?gen351 & : ( not ( subseq-pos ( create$ pen220_5_fine ?gen348 $$$ $?gen351 ) ) ) ) ) ( test ( eq ( class ?gen349 ) to_pay ) ) => ( calc ( bind $?gen354 ( create$ pen220_5_fine ?gen348 $?gen351 ) ) ) ?gen349 <- ( to_pay ( positive-support $?gen354 ) )"))

([pen220_4_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_4_max-defeasibly-dot-gen496)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_4_max] ) ) ) ?gen340 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pen220_4_max $? ) ) ( test ( eq ( class ?gen340 ) max_imprisonment ) ) ( not ( and ?gen347 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen342 & : ( not ( member$ pen220_4_max $?gen342 ) ) ) ) ) ) => ?gen340 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_4_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_4_max-defeasibly-gen498)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_4_max] ) ) ) ?gen347 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen342 & : ( not ( member$ pen220_4_max $?gen342 ) ) ) ) ( test ( eq ( class ?gen340 ) max_imprisonment ) ) => ?gen340 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_4_max ?gen347 ) )"))

([pen220_4_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_4_max-overruled-dot-gen500)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_4_max] ) ) ) ?gen340 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen343 ) ( negative-overruled $?gen344 & : ( subseq-pos ( create$ pen220_4_max-overruled $?gen343 $$$ $?gen344 ) ) ) ) ( test ( eq ( class ?gen340 ) max_imprisonment ) ) ( not ( and ?gen347 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( max_imprisonment ( positive-defeated $?gen342 & : ( not ( member$ pen220_4_max $?gen342 ) ) ) ) ) ) => ( calc ( bind $?gen345 ( delete-member$ $?gen344 ( create$ pen220_4_max-overruled $?gen343 ) ) ) ) ?gen340 <- ( max_imprisonment ( negative-overruled $?gen345 ) )"))

([pen220_4_max-overruled] of derived-attribute-rule
   (pos-name pen220_4_max-overruled-gen502)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_4_max] ) ) ) ?gen347 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen343 ) ( negative-overruled $?gen344 & : ( not ( subseq-pos ( create$ pen220_4_max-overruled $?gen343 $$$ $?gen344 ) ) ) ) ( positive-defeated $?gen342 & : ( not ( member$ pen220_4_max $?gen342 ) ) ) ) ( test ( eq ( class ?gen340 ) max_imprisonment ) ) => ( calc ( bind $?gen345 ( create$ pen220_4_max-overruled $?gen343 $?gen344 ) ) ) ?gen340 <- ( max_imprisonment ( negative-overruled $?gen345 ) )"))

([pen220_4_max-support] of derived-attribute-rule
   (pos-name pen220_4_max-support-gen504)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_4_max] ) ) ) ?gen339 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen340 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen342 & : ( not ( subseq-pos ( create$ pen220_4_max ?gen339 $$$ $?gen342 ) ) ) ) ) ( test ( eq ( class ?gen340 ) max_imprisonment ) ) => ( calc ( bind $?gen345 ( create$ pen220_4_max ?gen339 $?gen342 ) ) ) ?gen340 <- ( max_imprisonment ( positive-support $?gen345 ) )"))

([pen220_4_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_4_min-defeasibly-dot-gen506)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_4_min] ) ) ) ?gen331 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_4_min $? ) ) ( test ( eq ( class ?gen331 ) min_imprisonment ) ) ( not ( and ?gen338 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen333 & : ( not ( member$ pen220_4_min $?gen333 ) ) ) ) ) ) => ?gen331 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_4_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_4_min-defeasibly-gen508)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_4_min] ) ) ) ?gen338 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen333 & : ( not ( member$ pen220_4_min $?gen333 ) ) ) ) ( test ( eq ( class ?gen331 ) min_imprisonment ) ) => ?gen331 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_4_min ?gen338 ) )"))

([pen220_4_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_4_min-overruled-dot-gen510)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_4_min] ) ) ) ?gen331 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen334 ) ( negative-overruled $?gen335 & : ( subseq-pos ( create$ pen220_4_min-overruled $?gen334 $$$ $?gen335 ) ) ) ) ( test ( eq ( class ?gen331 ) min_imprisonment ) ) ( not ( and ?gen338 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( min_imprisonment ( positive-defeated $?gen333 & : ( not ( member$ pen220_4_min $?gen333 ) ) ) ) ) ) => ( calc ( bind $?gen336 ( delete-member$ $?gen335 ( create$ pen220_4_min-overruled $?gen334 ) ) ) ) ?gen331 <- ( min_imprisonment ( negative-overruled $?gen336 ) )"))

([pen220_4_min-overruled] of derived-attribute-rule
   (pos-name pen220_4_min-overruled-gen512)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_4_min] ) ) ) ?gen338 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen334 ) ( negative-overruled $?gen335 & : ( not ( subseq-pos ( create$ pen220_4_min-overruled $?gen334 $$$ $?gen335 ) ) ) ) ( positive-defeated $?gen333 & : ( not ( member$ pen220_4_min $?gen333 ) ) ) ) ( test ( eq ( class ?gen331 ) min_imprisonment ) ) => ( calc ( bind $?gen336 ( create$ pen220_4_min-overruled $?gen334 $?gen335 ) ) ) ?gen331 <- ( min_imprisonment ( negative-overruled $?gen336 ) )"))

([pen220_4_min-support] of derived-attribute-rule
   (pos-name pen220_4_min-support-gen514)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_4_min] ) ) ) ?gen330 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen331 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen333 & : ( not ( subseq-pos ( create$ pen220_4_min ?gen330 $$$ $?gen333 ) ) ) ) ) ( test ( eq ( class ?gen331 ) min_imprisonment ) ) => ( calc ( bind $?gen336 ( create$ pen220_4_min ?gen330 $?gen333 ) ) ) ?gen331 <- ( min_imprisonment ( positive-support $?gen336 ) )"))

([pen220_3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_3_max-defeasibly-dot-gen536)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_3_max] ) ) ) ?gen304 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen220_3_max $? ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) ( not ( and ?gen311 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ pen220_3_max $?gen306 ) ) ) ) ) ) => ?gen304 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_3_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_3_max-defeasibly-gen538)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_3_max] ) ) ) ?gen311 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ pen220_3_max $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) => ?gen304 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_3_max ?gen311 ) )"))

([pen220_3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_3_max-overruled-dot-gen540)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_3_max] ) ) ) ?gen304 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( subseq-pos ( create$ pen220_3_max-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) ( not ( and ?gen311 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( positive-defeated $?gen306 & : ( not ( member$ pen220_3_max $?gen306 ) ) ) ) ) ) => ( calc ( bind $?gen309 ( delete-member$ $?gen308 ( create$ pen220_3_max-overruled $?gen307 ) ) ) ) ?gen304 <- ( max_imprisonment ( negative-overruled $?gen309 ) )"))

([pen220_3_max-overruled] of derived-attribute-rule
   (pos-name pen220_3_max-overruled-gen542)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_3_max] ) ) ) ?gen311 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( not ( subseq-pos ( create$ pen220_3_max-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( positive-defeated $?gen306 & : ( not ( member$ pen220_3_max $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) => ( calc ( bind $?gen309 ( create$ pen220_3_max-overruled $?gen307 $?gen308 ) ) ) ?gen304 <- ( max_imprisonment ( negative-overruled $?gen309 ) )"))

([pen220_3_max-support] of derived-attribute-rule
   (pos-name pen220_3_max-support-gen544)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_3_max] ) ) ) ?gen303 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen304 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen306 & : ( not ( subseq-pos ( create$ pen220_3_max ?gen303 $$$ $?gen306 ) ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) => ( calc ( bind $?gen309 ( create$ pen220_3_max ?gen303 $?gen306 ) ) ) ?gen304 <- ( max_imprisonment ( positive-support $?gen309 ) )"))

([pen220_3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_3_min-defeasibly-dot-gen546)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_3_min] ) ) ) ?gen295 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen220_3_min $? ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) ( not ( and ?gen302 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen297 & : ( not ( member$ pen220_3_min $?gen297 ) ) ) ) ) ) => ?gen295 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_3_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_3_min-defeasibly-gen548)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_3_min] ) ) ) ?gen302 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen297 & : ( not ( member$ pen220_3_min $?gen297 ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) => ?gen295 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_3_min ?gen302 ) )"))

([pen220_3_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_3_min-overruled-dot-gen550)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_3_min] ) ) ) ?gen295 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen298 ) ( negative-overruled $?gen299 & : ( subseq-pos ( create$ pen220_3_min-overruled $?gen298 $$$ $?gen299 ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) ( not ( and ?gen302 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( positive-defeated $?gen297 & : ( not ( member$ pen220_3_min $?gen297 ) ) ) ) ) ) => ( calc ( bind $?gen300 ( delete-member$ $?gen299 ( create$ pen220_3_min-overruled $?gen298 ) ) ) ) ?gen295 <- ( min_imprisonment ( negative-overruled $?gen300 ) )"))

([pen220_3_min-overruled] of derived-attribute-rule
   (pos-name pen220_3_min-overruled-gen552)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_3_min] ) ) ) ?gen302 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen298 ) ( negative-overruled $?gen299 & : ( not ( subseq-pos ( create$ pen220_3_min-overruled $?gen298 $$$ $?gen299 ) ) ) ) ( positive-defeated $?gen297 & : ( not ( member$ pen220_3_min $?gen297 ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) => ( calc ( bind $?gen300 ( create$ pen220_3_min-overruled $?gen298 $?gen299 ) ) ) ?gen295 <- ( min_imprisonment ( negative-overruled $?gen300 ) )"))

([pen220_3_min-support] of derived-attribute-rule
   (pos-name pen220_3_min-support-gen554)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_3_min] ) ) ) ?gen294 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen295 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen297 & : ( not ( subseq-pos ( create$ pen220_3_min ?gen294 $$$ $?gen297 ) ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) => ( calc ( bind $?gen300 ( create$ pen220_3_min ?gen294 $?gen297 ) ) ) ?gen295 <- ( min_imprisonment ( positive-support $?gen300 ) )"))

([pen220_2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-dot-gen556)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_max] ) ) ) ?gen286 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_max $? ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) ( not ( and ?gen293 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen288 & : ( not ( member$ pen220_2_max $?gen288 ) ) ) ) ) ) => ?gen286 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_2_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-gen558)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_max] ) ) ) ?gen293 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen288 & : ( not ( member$ pen220_2_max $?gen288 ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) => ?gen286 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_2_max ?gen293 ) )"))

([pen220_2_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-dot-gen560)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_max] ) ) ) ?gen286 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen289 ) ( negative-overruled $?gen290 & : ( subseq-pos ( create$ pen220_2_max-overruled $?gen289 $$$ $?gen290 ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) ( not ( and ?gen293 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( positive-defeated $?gen288 & : ( not ( member$ pen220_2_max $?gen288 ) ) ) ) ) ) => ( calc ( bind $?gen291 ( delete-member$ $?gen290 ( create$ pen220_2_max-overruled $?gen289 ) ) ) ) ?gen286 <- ( max_imprisonment ( negative-overruled $?gen291 ) )"))

([pen220_2_max-overruled] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-gen562)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_max] ) ) ) ?gen293 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen289 ) ( negative-overruled $?gen290 & : ( not ( subseq-pos ( create$ pen220_2_max-overruled $?gen289 $$$ $?gen290 ) ) ) ) ( positive-defeated $?gen288 & : ( not ( member$ pen220_2_max $?gen288 ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) => ( calc ( bind $?gen291 ( create$ pen220_2_max-overruled $?gen289 $?gen290 ) ) ) ?gen286 <- ( max_imprisonment ( negative-overruled $?gen291 ) )"))

([pen220_2_max-support] of derived-attribute-rule
   (pos-name pen220_2_max-support-gen564)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_max] ) ) ) ?gen285 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen286 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen288 & : ( not ( subseq-pos ( create$ pen220_2_max ?gen285 $$$ $?gen288 ) ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) => ( calc ( bind $?gen291 ( create$ pen220_2_max ?gen285 $?gen288 ) ) ) ?gen286 <- ( max_imprisonment ( positive-support $?gen291 ) )"))

([pen220_2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-dot-gen566)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_min] ) ) ) ?gen277 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_min $? ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) ( not ( and ?gen284 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ pen220_2_min $?gen279 ) ) ) ) ) ) => ?gen277 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_2_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-gen568)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_min] ) ) ) ?gen284 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ pen220_2_min $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) => ?gen277 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_2_min ?gen284 ) )"))

([pen220_2_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-dot-gen570)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_min] ) ) ) ?gen277 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( subseq-pos ( create$ pen220_2_min-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) ( not ( and ?gen284 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( positive-defeated $?gen279 & : ( not ( member$ pen220_2_min $?gen279 ) ) ) ) ) ) => ( calc ( bind $?gen282 ( delete-member$ $?gen281 ( create$ pen220_2_min-overruled $?gen280 ) ) ) ) ?gen277 <- ( min_imprisonment ( negative-overruled $?gen282 ) )"))

([pen220_2_min-overruled] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-gen572)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_min] ) ) ) ?gen284 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( not ( subseq-pos ( create$ pen220_2_min-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( positive-defeated $?gen279 & : ( not ( member$ pen220_2_min $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) => ( calc ( bind $?gen282 ( create$ pen220_2_min-overruled $?gen280 $?gen281 ) ) ) ?gen277 <- ( min_imprisonment ( negative-overruled $?gen282 ) )"))

([pen220_2_min-support] of derived-attribute-rule
   (pos-name pen220_2_min-support-gen574)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_min] ) ) ) ?gen276 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen277 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen279 & : ( not ( subseq-pos ( create$ pen220_2_min ?gen276 $$$ $?gen279 ) ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) => ( calc ( bind $?gen282 ( create$ pen220_2_min ?gen276 $?gen279 ) ) ) ?gen277 <- ( min_imprisonment ( positive-support $?gen282 ) )"))

([pen220_1_prison-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_1_prison-defeasibly-dot-gen576)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_1_prison] ) ) ) ?gen268 <- ( max_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen220_1_prison $? ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) ( not ( and ?gen275 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ pen220_1_prison $?gen270 ) ) ) ) ) ) => ?gen268 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_1_prison-defeasibly] of derived-attribute-rule
   (pos-name pen220_1_prison-defeasibly-gen578)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_1_prison] ) ) ) ?gen275 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ pen220_1_prison $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ?gen268 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_1_prison ?gen275 ) )"))

([pen220_1_prison-overruled-dot] of derived-attribute-rule
   (pos-name pen220_1_prison-overruled-dot-gen580)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_1_prison] ) ) ) ?gen268 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( subseq-pos ( create$ pen220_1_prison-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) ( not ( and ?gen275 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( positive-defeated $?gen270 & : ( not ( member$ pen220_1_prison $?gen270 ) ) ) ) ) ) => ( calc ( bind $?gen273 ( delete-member$ $?gen272 ( create$ pen220_1_prison-overruled $?gen271 ) ) ) ) ?gen268 <- ( max_imprisonment ( negative-overruled $?gen273 ) )"))

([pen220_1_prison-overruled] of derived-attribute-rule
   (pos-name pen220_1_prison-overruled-gen582)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_1_prison] ) ) ) ?gen275 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( not ( subseq-pos ( create$ pen220_1_prison-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( positive-defeated $?gen270 & : ( not ( member$ pen220_1_prison $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ( calc ( bind $?gen273 ( create$ pen220_1_prison-overruled $?gen271 $?gen272 ) ) ) ?gen268 <- ( max_imprisonment ( negative-overruled $?gen273 ) )"))

([pen220_1_prison-support] of derived-attribute-rule
   (pos-name pen220_1_prison-support-gen584)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_1_prison] ) ) ) ?gen267 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen268 <- ( max_imprisonment ( value 2 ) ( positive-support $?gen270 & : ( not ( subseq-pos ( create$ pen220_1_prison ?gen267 $$$ $?gen270 ) ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ( calc ( bind $?gen273 ( create$ pen220_1_prison ?gen267 $?gen270 ) ) ) ?gen268 <- ( max_imprisonment ( positive-support $?gen273 ) )"))

([pen220_1_fine-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_1_fine-defeasibly-dot-gen586)
   (depends-on declare to_pay is_guilty_of_family_violence_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_1_fine] ) ) ) ?gen259 <- ( to_pay ( value 1000 ) ( positive 1 ) ( positive-derivator pen220_1_fine $? ) ) ( test ( eq ( class ?gen259 ) to_pay ) ) ( not ( and ?gen266 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( to_pay ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ pen220_1_fine $?gen261 ) ) ) ) ) ) => ?gen259 <- ( to_pay ( positive 0 ) )"))

([pen220_1_fine-defeasibly] of derived-attribute-rule
   (pos-name pen220_1_fine-defeasibly-gen588)
   (depends-on declare is_guilty_of_family_violence_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_1_fine] ) ) ) ?gen266 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( to_pay ( value 1000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ pen220_1_fine $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) to_pay ) ) => ?gen259 <- ( to_pay ( positive 1 ) ( positive-derivator pen220_1_fine ?gen266 ) )"))

([pen220_1_fine-overruled-dot] of derived-attribute-rule
   (pos-name pen220_1_fine-overruled-dot-gen590)
   (depends-on declare to_pay is_guilty_of_family_violence_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_1_fine] ) ) ) ?gen259 <- ( to_pay ( value 1000 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( subseq-pos ( create$ pen220_1_fine-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( test ( eq ( class ?gen259 ) to_pay ) ) ( not ( and ?gen266 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( to_pay ( positive-defeated $?gen261 & : ( not ( member$ pen220_1_fine $?gen261 ) ) ) ) ) ) => ( calc ( bind $?gen264 ( delete-member$ $?gen263 ( create$ pen220_1_fine-overruled $?gen262 ) ) ) ) ?gen259 <- ( to_pay ( negative-overruled $?gen264 ) )"))

([pen220_1_fine-overruled] of derived-attribute-rule
   (pos-name pen220_1_fine-overruled-gen592)
   (depends-on declare is_guilty_of_family_violence_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_1_fine] ) ) ) ?gen266 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( to_pay ( value 1000 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( not ( subseq-pos ( create$ pen220_1_fine-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( positive-defeated $?gen261 & : ( not ( member$ pen220_1_fine $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) to_pay ) ) => ( calc ( bind $?gen264 ( create$ pen220_1_fine-overruled $?gen262 $?gen263 ) ) ) ?gen259 <- ( to_pay ( negative-overruled $?gen264 ) )"))

([pen220_1_fine-support] of derived-attribute-rule
   (pos-name pen220_1_fine-support-gen594)
   (depends-on declare is_guilty_of_family_violence_lv1 to_pay)
   (implies to_pay)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_1_fine] ) ) ) ?gen258 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen259 <- ( to_pay ( value 1000 ) ( positive-support $?gen261 & : ( not ( subseq-pos ( create$ pen220_1_fine ?gen258 $$$ $?gen261 ) ) ) ) ) ( test ( eq ( class ?gen259 ) to_pay ) ) => ( calc ( bind $?gen264 ( create$ pen220_1_fine ?gen258 $?gen261 ) ) ) ?gen259 <- ( to_pay ( positive-support $?gen264 ) )"))

([rule221_1_neg_3-defeated-dot] of derived-attribute-rule
   (pos-name rule221_1_neg_3-defeated-dot-gen596)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule221_1_neg_3] ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen253 & : ( subseq-pos ( create$ rule221_1_neg_3-defeated rule221_1 $$$ $?gen253 ) ) ) ) ( test ( eq ( class ?gen250 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ?gen257 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ) => ( calc ( bind $?gen252 ( delete-member$ $?gen253 ( create$ rule221_1_neg_3-defeated rule221_1 ) ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-defeated $?gen252 ) )"))

([rule221_1_neg_3-defeated] of derived-attribute-rule
   (pos-name rule221_1_neg_3-defeated-gen598)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule221_1_neg_3] ) ) ) ?gen257 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen253 & : ( not ( subseq-pos ( create$ rule221_1_neg_3-defeated rule221_1 $$$ $?gen253 ) ) ) ) ) ( test ( eq ( class ?gen250 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen252 ( create$ rule221_1_neg_3-defeated rule221_1 $?gen253 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-defeated $?gen252 ) )"))

([rule221_1_neg_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_1_neg_3-defeasibly-dot-gen600)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_1_neg_3] ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule221_1_neg_3 $? ) ) ( test ( eq ( class ?gen250 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen257 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive ~ 2 ) ( negative-overruled $?gen252 & : ( not ( member$ rule221_1_neg_3 $?gen252 ) ) ) ) ) ) => ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative 0 ) )"))

([rule221_1_neg_3-defeasibly] of derived-attribute-rule
   (pos-name rule221_1_neg_3-defeasibly-gen602)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_1_neg_3] ) ) ) ?gen257 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen252 & : ( not ( member$ rule221_1_neg_3 $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative 1 ) ( negative-derivator rule221_1_neg_3 ?gen257 ) )"))

([rule221_1_neg_3-overruled-dot] of derived-attribute-rule
   (pos-name rule221_1_neg_3-overruled-dot-gen604)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_1_neg_3] ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-support $?gen253 ) ( positive-overruled $?gen254 & : ( subseq-pos ( create$ rule221_1_neg_3-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( test ( eq ( class ?gen250 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen257 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-defeated $?gen252 & : ( not ( member$ rule221_1_neg_3 $?gen252 ) ) ) ) ) ) => ( calc ( bind $?gen255 ( delete-member$ $?gen254 ( create$ rule221_1_neg_3-overruled $?gen253 ) ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-overruled $?gen255 ) )"))

([rule221_1_neg_3-overruled] of derived-attribute-rule
   (pos-name rule221_1_neg_3-overruled-gen606)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_1_neg_3] ) ) ) ?gen257 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-support $?gen253 ) ( positive-overruled $?gen254 & : ( not ( subseq-pos ( create$ rule221_1_neg_3-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( negative-defeated $?gen252 & : ( not ( member$ rule221_1_neg_3 $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen255 ( create$ rule221_1_neg_3-overruled $?gen253 $?gen254 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-overruled $?gen255 ) )"))

([rule221_1_neg_3-support] of derived-attribute-rule
   (pos-name rule221_1_neg_3-support-gen608)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_1_neg_3] ) ) ) ?gen249 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen252 & : ( not ( subseq-pos ( create$ rule221_1_neg_3 ?gen249 $$$ $?gen252 ) ) ) ) ) ( test ( eq ( class ?gen250 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen255 ( create$ rule221_1_neg_3 ?gen249 $?gen252 ) ) ) ?gen250 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-support $?gen255 ) )"))

([rule221_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_3-defeasibly-dot-gen610)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 lc:case lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_3] ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule221_3 $? ) ) ( test ( eq ( class ?gen233 ) is_guilty_of_nonpayment_of_support_lv2 ) ) ( not ( and ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen246 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"false\" ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen248 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_for_victim \"true\" ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative ~ 2 ) ( positive-overruled $?gen235 & : ( not ( member$ rule221_3 $?gen235 ) ) ) ) ) ) => ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive 0 ) )"))

([rule221_3-defeasibly] of derived-attribute-rule
   (pos-name rule221_3-defeasibly-gen612)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_3] ) ) ) ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen246 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"false\" ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen248 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_for_victim \"true\" ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen235 & : ( not ( member$ rule221_3 $?gen235 ) ) ) ) ( test ( eq ( class ?gen233 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive 1 ) ( positive-derivator rule221_3 ?gen240 ?gen242 ?gen244 ?gen246 ?gen248 ) )"))

([rule221_3-overruled-dot] of derived-attribute-rule
   (pos-name rule221_3-overruled-dot-gen614)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 lc:case lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_3] ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-support $?gen236 ) ( negative-overruled $?gen237 & : ( subseq-pos ( create$ rule221_3-overruled $?gen236 $$$ $?gen237 ) ) ) ) ( test ( eq ( class ?gen233 ) is_guilty_of_nonpayment_of_support_lv2 ) ) ( not ( and ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen246 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"false\" ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen248 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_for_victim \"true\" ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive-defeated $?gen235 & : ( not ( member$ rule221_3 $?gen235 ) ) ) ) ) ) => ( calc ( bind $?gen238 ( delete-member$ $?gen237 ( create$ rule221_3-overruled $?gen236 ) ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-overruled $?gen238 ) )"))

([rule221_3-overruled] of derived-attribute-rule
   (pos-name rule221_3-overruled-gen616)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_3] ) ) ) ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen246 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"false\" ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen248 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_for_victim \"true\" ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-support $?gen236 ) ( negative-overruled $?gen237 & : ( not ( subseq-pos ( create$ rule221_3-overruled $?gen236 $$$ $?gen237 ) ) ) ) ( positive-defeated $?gen235 & : ( not ( member$ rule221_3 $?gen235 ) ) ) ) ( test ( eq ( class ?gen233 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ( calc ( bind $?gen238 ( create$ rule221_3-overruled $?gen236 $?gen237 ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-overruled $?gen238 ) )"))

([rule221_3-support] of derived-attribute-rule
   (pos-name rule221_3-support-gen618)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_3] ) ) ) ?gen228 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ?gen229 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ?gen231 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"false\" ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_for_victim \"true\" ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive-support $?gen235 & : ( not ( subseq-pos ( create$ rule221_3 ?gen228 ?gen229 ?gen230 ?gen231 ?gen232 $$$ $?gen235 ) ) ) ) ) ( test ( eq ( class ?gen233 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ( calc ( bind $?gen238 ( create$ rule221_3 ?gen228 ?gen229 ?gen230 ?gen231 ?gen232 $?gen235 ) ) ) ?gen233 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive-support $?gen238 ) )"))

([rule221_1_neg-defeated-dot] of derived-attribute-rule
   (pos-name rule221_1_neg-defeated-dot-gen620)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case lc:case)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule221_1_neg] ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen217 & : ( subseq-pos ( create$ rule221_1_neg-defeated rule221_1 $$$ $?gen217 ) ) ) ) ( test ( eq ( class ?gen214 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen223 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen222 & : ( >= ?gen222 1 ) ) ) ?gen225 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen227 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ) ) => ( calc ( bind $?gen216 ( delete-member$ $?gen217 ( create$ rule221_1_neg-defeated rule221_1 ) ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-defeated $?gen216 ) )"))

([rule221_1_neg-defeated] of derived-attribute-rule
   (pos-name rule221_1_neg-defeated-gen622)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule221_1_neg] ) ) ) ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen223 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen222 & : ( >= ?gen222 1 ) ) ) ?gen225 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen227 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen217 & : ( not ( subseq-pos ( create$ rule221_1_neg-defeated rule221_1 $$$ $?gen217 ) ) ) ) ) ( test ( eq ( class ?gen214 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen216 ( create$ rule221_1_neg-defeated rule221_1 $?gen217 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-defeated $?gen216 ) )"))

([rule221_1_neg-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_1_neg-defeasibly-dot-gen624)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_1_neg] ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule221_1_neg $? ) ) ( test ( eq ( class ?gen214 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen223 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen222 & : ( >= ?gen222 1 ) ) ) ?gen225 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen227 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive ~ 2 ) ( negative-overruled $?gen216 & : ( not ( member$ rule221_1_neg $?gen216 ) ) ) ) ) ) => ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative 0 ) )"))

([rule221_1_neg-defeasibly] of derived-attribute-rule
   (pos-name rule221_1_neg-defeasibly-gen626)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_1_neg] ) ) ) ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen223 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen222 & : ( >= ?gen222 1 ) ) ) ?gen225 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen227 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen216 & : ( not ( member$ rule221_1_neg $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative 1 ) ( negative-derivator rule221_1_neg ?gen221 ?gen223 ?gen225 ?gen227 ) )"))

([rule221_1_neg-overruled-dot] of derived-attribute-rule
   (pos-name rule221_1_neg-overruled-dot-gen628)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_1_neg] ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-support $?gen217 ) ( positive-overruled $?gen218 & : ( subseq-pos ( create$ rule221_1_neg-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( test ( eq ( class ?gen214 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen223 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen222 & : ( >= ?gen222 1 ) ) ) ?gen225 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen227 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-defeated $?gen216 & : ( not ( member$ rule221_1_neg $?gen216 ) ) ) ) ) ) => ( calc ( bind $?gen219 ( delete-member$ $?gen218 ( create$ rule221_1_neg-overruled $?gen217 ) ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-overruled $?gen219 ) )"))

([rule221_1_neg-overruled] of derived-attribute-rule
   (pos-name rule221_1_neg-overruled-gen630)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_1_neg] ) ) ) ?gen221 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen223 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen222 & : ( >= ?gen222 1 ) ) ) ?gen225 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen227 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-support $?gen217 ) ( positive-overruled $?gen218 & : ( not ( subseq-pos ( create$ rule221_1_neg-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( negative-defeated $?gen216 & : ( not ( member$ rule221_1_neg $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen219 ( create$ rule221_1_neg-overruled $?gen217 $?gen218 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-overruled $?gen219 ) )"))

([rule221_1_neg-support] of derived-attribute-rule
   (pos-name rule221_1_neg-support-gen632)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_1_neg] ) ) ) ?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ?gen211 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ?gen213 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen216 & : ( not ( subseq-pos ( create$ rule221_1_neg ?gen210 ?gen211 ?gen212 ?gen213 $$$ $?gen216 ) ) ) ) ) ( test ( eq ( class ?gen214 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen219 ( create$ rule221_1_neg ?gen210 ?gen211 ?gen212 ?gen213 $?gen216 ) ) ) ?gen214 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-support $?gen219 ) )"))

([rule221_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_1-defeasibly-dot-gen634)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_1] ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule221_1 $? ) ) ( test ( eq ( class ?gen198 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen205 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen204 & : ( >= ?gen204 1 ) ) ) ?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen206 & : ( >= ?gen206 1 ) ) ) ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative ~ 2 ) ( positive-overruled $?gen200 & : ( not ( member$ rule221_1 $?gen200 ) ) ) ) ) ) => ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive 0 ) )"))

([rule221_1-defeasibly] of derived-attribute-rule
   (pos-name rule221_1-defeasibly-gen636)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_1] ) ) ) ?gen205 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen204 & : ( >= ?gen204 1 ) ) ) ?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen206 & : ( >= ?gen206 1 ) ) ) ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen200 & : ( not ( member$ rule221_1 $?gen200 ) ) ) ) ( test ( eq ( class ?gen198 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive 1 ) ( positive-derivator rule221_1 ?gen205 ?gen207 ?gen209 ) )"))

([rule221_1-overruled-dot] of derived-attribute-rule
   (pos-name rule221_1-overruled-dot-gen638)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_1] ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen201 ) ( negative-overruled $?gen202 & : ( subseq-pos ( create$ rule221_1-overruled $?gen201 $$$ $?gen202 ) ) ) ) ( test ( eq ( class ?gen198 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen205 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen204 & : ( >= ?gen204 1 ) ) ) ?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen206 & : ( >= ?gen206 1 ) ) ) ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-defeated $?gen200 & : ( not ( member$ rule221_1 $?gen200 ) ) ) ) ) ) => ( calc ( bind $?gen203 ( delete-member$ $?gen202 ( create$ rule221_1-overruled $?gen201 ) ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-overruled $?gen203 ) )"))

([rule221_1-overruled] of derived-attribute-rule
   (pos-name rule221_1-overruled-gen640)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_1] ) ) ) ?gen205 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ( positive ?gen204 & : ( >= ?gen204 1 ) ) ) ?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ( positive ?gen206 & : ( >= ?gen206 1 ) ) ) ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen201 ) ( negative-overruled $?gen202 & : ( not ( subseq-pos ( create$ rule221_1-overruled $?gen201 $$$ $?gen202 ) ) ) ) ( positive-defeated $?gen200 & : ( not ( member$ rule221_1 $?gen200 ) ) ) ) ( test ( eq ( class ?gen198 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen203 ( create$ rule221_1-overruled $?gen201 $?gen202 ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-overruled $?gen203 ) )"))

([rule221_1-support] of derived-attribute-rule
   (pos-name rule221_1-support-gen642)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_1] ) ) ) ?gen195 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ?gen197 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-support $?gen200 & : ( not ( subseq-pos ( create$ rule221_1 ?gen195 ?gen196 ?gen197 $$$ $?gen200 ) ) ) ) ) ( test ( eq ( class ?gen198 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen203 ( create$ rule221_1 ?gen195 ?gen196 ?gen197 $?gen200 ) ) ) ?gen198 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-support $?gen203 ) )"))

([rule220_5_neg_4-defeated-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_4-defeated-dot-gen644)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_5_neg_4] ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( subseq-pos ( create$ rule220_5_neg_4-defeated rule220_5 $$$ $?gen190 ) ) ) ) ( test ( eq ( class ?gen187 ) is_guilty_of_violating_measures ) ) ( not ?gen194 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen190 ( create$ rule220_5_neg_4-defeated rule220_5 ) ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen189 ) )"))

([rule220_5_neg_4-defeated] of derived-attribute-rule
   (pos-name rule220_5_neg_4-defeated-gen646)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_5_neg_4] ) ) ) ?gen194 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( not ( subseq-pos ( create$ rule220_5_neg_4-defeated rule220_5 $$$ $?gen190 ) ) ) ) ) ( test ( eq ( class ?gen187 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen189 ( create$ rule220_5_neg_4-defeated rule220_5 $?gen190 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen189 ) )"))

([rule220_5_neg_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_4-defeasibly-dot-gen648)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_5_neg_4] ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_5_neg_4 $? ) ) ( test ( eq ( class ?gen187 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen194 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule220_5_neg_4 $?gen189 ) ) ) ) ) ) => ?gen187 <- ( is_guilty_of_violating_measures ( negative 0 ) )"))

([rule220_5_neg_4-defeasibly] of derived-attribute-rule
   (pos-name rule220_5_neg_4-defeasibly-gen650)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_5_neg_4] ) ) ) ?gen194 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule220_5_neg_4 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) is_guilty_of_violating_measures ) ) => ?gen187 <- ( is_guilty_of_violating_measures ( negative 1 ) ( negative-derivator rule220_5_neg_4 ?gen194 ) )"))

([rule220_5_neg_4-overruled-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_4-overruled-dot-gen652)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_5_neg_4] ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( subseq-pos ( create$ rule220_5_neg_4-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( test ( eq ( class ?gen187 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen194 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( negative-defeated $?gen189 & : ( not ( member$ rule220_5_neg_4 $?gen189 ) ) ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen191 ( create$ rule220_5_neg_4-overruled $?gen190 ) ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen192 ) )"))

([rule220_5_neg_4-overruled] of derived-attribute-rule
   (pos-name rule220_5_neg_4-overruled-gen654)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_5_neg_4] ) ) ) ?gen194 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( not ( subseq-pos ( create$ rule220_5_neg_4-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( negative-defeated $?gen189 & : ( not ( member$ rule220_5_neg_4 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen192 ( create$ rule220_5_neg_4-overruled $?gen190 $?gen191 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen192 ) )"))

([rule220_5_neg_4-support] of derived-attribute-rule
   (pos-name rule220_5_neg_4-support-gen656)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_5_neg_4] ) ) ) ?gen186 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen187 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen189 & : ( not ( subseq-pos ( create$ rule220_5_neg_4 ?gen186 $$$ $?gen189 ) ) ) ) ) ( test ( eq ( class ?gen187 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen192 ( create$ rule220_5_neg_4 ?gen186 $?gen189 ) ) ) ?gen187 <- ( is_guilty_of_violating_measures ( negative-support $?gen192 ) )"))

([rule220_5_neg_3-defeated-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_3-defeated-dot-gen658)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_5_neg_3] ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( subseq-pos ( create$ rule220_5_neg_3-defeated rule220_5 $$$ $?gen181 ) ) ) ) ( test ( eq ( class ?gen178 ) is_guilty_of_violating_measures ) ) ( not ?gen185 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen181 ( create$ rule220_5_neg_3-defeated rule220_5 ) ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen180 ) )"))

([rule220_5_neg_3-defeated] of derived-attribute-rule
   (pos-name rule220_5_neg_3-defeated-gen660)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_5_neg_3] ) ) ) ?gen185 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( not ( subseq-pos ( create$ rule220_5_neg_3-defeated rule220_5 $$$ $?gen181 ) ) ) ) ) ( test ( eq ( class ?gen178 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen180 ( create$ rule220_5_neg_3-defeated rule220_5 $?gen181 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen180 ) )"))

([rule220_5_neg_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_3-defeasibly-dot-gen662)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv3 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_5_neg_3] ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_5_neg_3 $? ) ) ( test ( eq ( class ?gen178 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen185 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule220_5_neg_3 $?gen180 ) ) ) ) ) ) => ?gen178 <- ( is_guilty_of_violating_measures ( negative 0 ) )"))

([rule220_5_neg_3-defeasibly] of derived-attribute-rule
   (pos-name rule220_5_neg_3-defeasibly-gen664)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_5_neg_3] ) ) ) ?gen185 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule220_5_neg_3 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) is_guilty_of_violating_measures ) ) => ?gen178 <- ( is_guilty_of_violating_measures ( negative 1 ) ( negative-derivator rule220_5_neg_3 ?gen185 ) )"))

([rule220_5_neg_3-overruled-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_3-overruled-dot-gen666)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv3 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_5_neg_3] ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( subseq-pos ( create$ rule220_5_neg_3-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen185 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( negative-defeated $?gen180 & : ( not ( member$ rule220_5_neg_3 $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ rule220_5_neg_3-overruled $?gen181 ) ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen183 ) )"))

([rule220_5_neg_3-overruled] of derived-attribute-rule
   (pos-name rule220_5_neg_3-overruled-gen668)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_5_neg_3] ) ) ) ?gen185 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( not ( subseq-pos ( create$ rule220_5_neg_3-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( negative-defeated $?gen180 & : ( not ( member$ rule220_5_neg_3 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen183 ( create$ rule220_5_neg_3-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen183 ) )"))

([rule220_5_neg_3-support] of derived-attribute-rule
   (pos-name rule220_5_neg_3-support-gen670)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_5_neg_3] ) ) ) ?gen177 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen178 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen180 & : ( not ( subseq-pos ( create$ rule220_5_neg_3 ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen183 ( create$ rule220_5_neg_3 ?gen177 $?gen180 ) ) ) ?gen178 <- ( is_guilty_of_violating_measures ( negative-support $?gen183 ) )"))

([rule220_5_neg_2-defeated-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_2-defeated-dot-gen672)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_5_neg_2] ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( subseq-pos ( create$ rule220_5_neg_2-defeated rule220_5 $$$ $?gen172 ) ) ) ) ( test ( eq ( class ?gen169 ) is_guilty_of_violating_measures ) ) ( not ?gen176 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen172 ( create$ rule220_5_neg_2-defeated rule220_5 ) ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen171 ) )"))

([rule220_5_neg_2-defeated] of derived-attribute-rule
   (pos-name rule220_5_neg_2-defeated-gen674)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_5_neg_2] ) ) ) ?gen176 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( not ( subseq-pos ( create$ rule220_5_neg_2-defeated rule220_5 $$$ $?gen172 ) ) ) ) ) ( test ( eq ( class ?gen169 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen171 ( create$ rule220_5_neg_2-defeated rule220_5 $?gen172 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen171 ) )"))

([rule220_5_neg_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_2-defeasibly-dot-gen676)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv2 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_5_neg_2] ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_5_neg_2 $? ) ) ( test ( eq ( class ?gen169 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen176 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule220_5_neg_2 $?gen171 ) ) ) ) ) ) => ?gen169 <- ( is_guilty_of_violating_measures ( negative 0 ) )"))

([rule220_5_neg_2-defeasibly] of derived-attribute-rule
   (pos-name rule220_5_neg_2-defeasibly-gen678)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_5_neg_2] ) ) ) ?gen176 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule220_5_neg_2 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) is_guilty_of_violating_measures ) ) => ?gen169 <- ( is_guilty_of_violating_measures ( negative 1 ) ( negative-derivator rule220_5_neg_2 ?gen176 ) )"))

([rule220_5_neg_2-overruled-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_2-overruled-dot-gen680)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv2 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_5_neg_2] ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( subseq-pos ( create$ rule220_5_neg_2-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen176 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( negative-defeated $?gen171 & : ( not ( member$ rule220_5_neg_2 $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ rule220_5_neg_2-overruled $?gen172 ) ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen174 ) )"))

([rule220_5_neg_2-overruled] of derived-attribute-rule
   (pos-name rule220_5_neg_2-overruled-gen682)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_5_neg_2] ) ) ) ?gen176 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( not ( subseq-pos ( create$ rule220_5_neg_2-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( negative-defeated $?gen171 & : ( not ( member$ rule220_5_neg_2 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen174 ( create$ rule220_5_neg_2-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen174 ) )"))

([rule220_5_neg_2-support] of derived-attribute-rule
   (pos-name rule220_5_neg_2-support-gen684)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_5_neg_2] ) ) ) ?gen168 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen169 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen171 & : ( not ( subseq-pos ( create$ rule220_5_neg_2 ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen174 ( create$ rule220_5_neg_2 ?gen168 $?gen171 ) ) ) ?gen169 <- ( is_guilty_of_violating_measures ( negative-support $?gen174 ) )"))

([rule220_5_neg_1-defeated-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_1-defeated-dot-gen686)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_5_neg_1] ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen163 & : ( subseq-pos ( create$ rule220_5_neg_1-defeated rule220_5 $$$ $?gen163 ) ) ) ) ( test ( eq ( class ?gen160 ) is_guilty_of_violating_measures ) ) ( not ?gen167 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ) => ( calc ( bind $?gen162 ( delete-member$ $?gen163 ( create$ rule220_5_neg_1-defeated rule220_5 ) ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen162 ) )"))

([rule220_5_neg_1-defeated] of derived-attribute-rule
   (pos-name rule220_5_neg_1-defeated-gen688)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_5_neg_1] ) ) ) ?gen167 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-defeated $?gen163 & : ( not ( subseq-pos ( create$ rule220_5_neg_1-defeated rule220_5 $$$ $?gen163 ) ) ) ) ) ( test ( eq ( class ?gen160 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen162 ( create$ rule220_5_neg_1-defeated rule220_5 $?gen163 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen162 ) )"))

([rule220_5_neg_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_1-defeasibly-dot-gen690)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv1 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_5_neg_1] ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_5_neg_1 $? ) ) ( test ( eq ( class ?gen160 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen167 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( positive ~ 2 ) ( negative-overruled $?gen162 & : ( not ( member$ rule220_5_neg_1 $?gen162 ) ) ) ) ) ) => ?gen160 <- ( is_guilty_of_violating_measures ( negative 0 ) )"))

([rule220_5_neg_1-defeasibly] of derived-attribute-rule
   (pos-name rule220_5_neg_1-defeasibly-gen692)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_5_neg_1] ) ) ) ?gen167 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen162 & : ( not ( member$ rule220_5_neg_1 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) is_guilty_of_violating_measures ) ) => ?gen160 <- ( is_guilty_of_violating_measures ( negative 1 ) ( negative-derivator rule220_5_neg_1 ?gen167 ) )"))

([rule220_5_neg_1-overruled-dot] of derived-attribute-rule
   (pos-name rule220_5_neg_1-overruled-dot-gen694)
   (depends-on declare is_guilty_of_violating_measures is_guilty_of_family_violence_lv1 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_5_neg_1] ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen163 ) ( positive-overruled $?gen164 & : ( subseq-pos ( create$ rule220_5_neg_1-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen167 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( negative-defeated $?gen162 & : ( not ( member$ rule220_5_neg_1 $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ rule220_5_neg_1-overruled $?gen163 ) ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen165 ) )"))

([rule220_5_neg_1-overruled] of derived-attribute-rule
   (pos-name rule220_5_neg_1-overruled-gen696)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_5_neg_1] ) ) ) ?gen167 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen163 ) ( positive-overruled $?gen164 & : ( not ( subseq-pos ( create$ rule220_5_neg_1-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( negative-defeated $?gen162 & : ( not ( member$ rule220_5_neg_1 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen165 ( create$ rule220_5_neg_1-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( positive-overruled $?gen165 ) )"))

([rule220_5_neg_1-support] of derived-attribute-rule
   (pos-name rule220_5_neg_1-support-gen698)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_5_neg_1] ) ) ) ?gen159 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen160 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen162 & : ( not ( subseq-pos ( create$ rule220_5_neg_1 ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen165 ( create$ rule220_5_neg_1 ?gen159 $?gen162 ) ) ) ?gen160 <- ( is_guilty_of_violating_measures ( negative-support $?gen165 ) )"))

([rule220_5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_5-defeasibly-dot-gen700)
   (depends-on declare is_guilty_of_violating_measures lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_5] ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_5 $? ) ) ( test ( eq ( class ?gen151 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen158 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_protection_measures \"true\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ rule220_5 $?gen153 ) ) ) ) ) ) => ?gen151 <- ( is_guilty_of_violating_measures ( positive 0 ) )"))

([rule220_5-defeasibly] of derived-attribute-rule
   (pos-name rule220_5-defeasibly-gen702)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_5] ) ) ) ?gen158 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_protection_measures \"true\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ rule220_5 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) is_guilty_of_violating_measures ) ) => ?gen151 <- ( is_guilty_of_violating_measures ( positive 1 ) ( positive-derivator rule220_5 ?gen158 ) )"))

([rule220_5-overruled-dot] of derived-attribute-rule
   (pos-name rule220_5-overruled-dot-gen704)
   (depends-on declare is_guilty_of_violating_measures lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_5] ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( subseq-pos ( create$ rule220_5-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( test ( eq ( class ?gen151 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen158 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_protection_measures \"true\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen153 & : ( not ( member$ rule220_5 $?gen153 ) ) ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen155 ( create$ rule220_5-overruled $?gen154 ) ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( negative-overruled $?gen156 ) )"))

([rule220_5-overruled] of derived-attribute-rule
   (pos-name rule220_5-overruled-gen706)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_5] ) ) ) ?gen158 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_protection_measures \"true\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( not ( subseq-pos ( create$ rule220_5-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( positive-defeated $?gen153 & : ( not ( member$ rule220_5 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen156 ( create$ rule220_5-overruled $?gen154 $?gen155 ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( negative-overruled $?gen156 ) )"))

([rule220_5-support] of derived-attribute-rule
   (pos-name rule220_5-support-gen708)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_5] ) ) ) ?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_protection_measures \"true\" ) ) ?gen151 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen153 & : ( not ( subseq-pos ( create$ rule220_5 ?gen150 $$$ $?gen153 ) ) ) ) ) ( test ( eq ( class ?gen151 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen156 ( create$ rule220_5 ?gen150 $?gen153 ) ) ) ?gen151 <- ( is_guilty_of_violating_measures ( positive-support $?gen156 ) )"))

([rule220_4_neg_3-defeated-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_3-defeated-dot-gen710)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_4_neg_3] ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( subseq-pos ( create$ rule220_4_neg_3-defeated rule220_3_a rule220_3_b $$$ $?gen145 ) ) ) ) ( test ( eq ( class ?gen142 ) is_guilty_of_family_violence_lv3 ) ) ( not ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen145 ( create$ rule220_4_neg_3-defeated rule220_3_a rule220_3_b ) ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( positive-defeated $?gen144 ) )"))

([rule220_4_neg_3-defeated] of derived-attribute-rule
   (pos-name rule220_4_neg_3-defeated-gen712)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_4_neg_3] ) ) ) ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( not ( subseq-pos ( create$ rule220_4_neg_3-defeated rule220_3_a rule220_3_b $$$ $?gen145 ) ) ) ) ) ( test ( eq ( class ?gen142 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen144 ( create$ rule220_4_neg_3-defeated rule220_3_a rule220_3_b $?gen145 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( positive-defeated $?gen144 ) )"))

([rule220_4_neg_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_3-defeasibly-dot-gen714)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_4_neg_3] ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_4_neg_3 $? ) ) ( test ( eq ( class ?gen142 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule220_4_neg_3 $?gen144 ) ) ) ) ) ) => ?gen142 <- ( is_guilty_of_family_violence_lv3 ( negative 0 ) )"))

([rule220_4_neg_3-defeasibly] of derived-attribute-rule
   (pos-name rule220_4_neg_3-defeasibly-gen716)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_4_neg_3] ) ) ) ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule220_4_neg_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) is_guilty_of_family_violence_lv3 ) ) => ?gen142 <- ( is_guilty_of_family_violence_lv3 ( negative 1 ) ( negative-derivator rule220_4_neg_3 ?gen149 ) )"))

([rule220_4_neg_3-overruled-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_3-overruled-dot-gen718)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_4_neg_3] ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( subseq-pos ( create$ rule220_4_neg_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen142 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( negative-defeated $?gen144 & : ( not ( member$ rule220_4_neg_3 $?gen144 ) ) ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen146 ( create$ rule220_4_neg_3-overruled $?gen145 ) ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( positive-overruled $?gen147 ) )"))

([rule220_4_neg_3-overruled] of derived-attribute-rule
   (pos-name rule220_4_neg_3-overruled-gen720)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_4_neg_3] ) ) ) ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( not ( subseq-pos ( create$ rule220_4_neg_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( negative-defeated $?gen144 & : ( not ( member$ rule220_4_neg_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen147 ( create$ rule220_4_neg_3-overruled $?gen145 $?gen146 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( positive-overruled $?gen147 ) )"))

([rule220_4_neg_3-support] of derived-attribute-rule
   (pos-name rule220_4_neg_3-support-gen722)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_4_neg_3] ) ) ) ?gen141 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen144 & : ( not ( subseq-pos ( create$ rule220_4_neg_3 ?gen141 $$$ $?gen144 ) ) ) ) ) ( test ( eq ( class ?gen142 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen147 ( create$ rule220_4_neg_3 ?gen141 $?gen144 ) ) ) ?gen142 <- ( is_guilty_of_family_violence_lv3 ( negative-support $?gen147 ) )"))

([rule220_4_neg_2-defeated-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_2-defeated-dot-gen724)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_4_neg_2] ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( subseq-pos ( create$ rule220_4_neg_2-defeated rule220_2 $$$ $?gen136 ) ) ) ) ( test ( eq ( class ?gen133 ) is_guilty_of_family_violence_lv2 ) ) ( not ?gen140 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen136 ( create$ rule220_4_neg_2-defeated rule220_2 ) ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen135 ) )"))

([rule220_4_neg_2-defeated] of derived-attribute-rule
   (pos-name rule220_4_neg_2-defeated-gen726)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_4_neg_2] ) ) ) ?gen140 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( not ( subseq-pos ( create$ rule220_4_neg_2-defeated rule220_2 $$$ $?gen136 ) ) ) ) ) ( test ( eq ( class ?gen133 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen135 ( create$ rule220_4_neg_2-defeated rule220_2 $?gen136 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen135 ) )"))

([rule220_4_neg_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_2-defeasibly-dot-gen728)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_4_neg_2] ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_4_neg_2 $? ) ) ( test ( eq ( class ?gen133 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen140 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule220_4_neg_2 $?gen135 ) ) ) ) ) ) => ?gen133 <- ( is_guilty_of_family_violence_lv2 ( negative 0 ) )"))

([rule220_4_neg_2-defeasibly] of derived-attribute-rule
   (pos-name rule220_4_neg_2-defeasibly-gen730)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_4_neg_2] ) ) ) ?gen140 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule220_4_neg_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) is_guilty_of_family_violence_lv2 ) ) => ?gen133 <- ( is_guilty_of_family_violence_lv2 ( negative 1 ) ( negative-derivator rule220_4_neg_2 ?gen140 ) )"))

([rule220_4_neg_2-overruled-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_2-overruled-dot-gen732)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_4_neg_2] ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( subseq-pos ( create$ rule220_4_neg_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen140 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( negative-defeated $?gen135 & : ( not ( member$ rule220_4_neg_2 $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ rule220_4_neg_2-overruled $?gen136 ) ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( positive-overruled $?gen138 ) )"))

([rule220_4_neg_2-overruled] of derived-attribute-rule
   (pos-name rule220_4_neg_2-overruled-gen734)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_4_neg_2] ) ) ) ?gen140 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( not ( subseq-pos ( create$ rule220_4_neg_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( negative-defeated $?gen135 & : ( not ( member$ rule220_4_neg_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen138 ( create$ rule220_4_neg_2-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( positive-overruled $?gen138 ) )"))

([rule220_4_neg_2-support] of derived-attribute-rule
   (pos-name rule220_4_neg_2-support-gen736)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_4_neg_2] ) ) ) ?gen132 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen135 & : ( not ( subseq-pos ( create$ rule220_4_neg_2 ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen138 ( create$ rule220_4_neg_2 ?gen132 $?gen135 ) ) ) ?gen133 <- ( is_guilty_of_family_violence_lv2 ( negative-support $?gen138 ) )"))

([rule220_4_neg_1-defeated-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_1-defeated-dot-gen738)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_4_neg_1] ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( subseq-pos ( create$ rule220_4_neg_1-defeated rule220_1 $$$ $?gen127 ) ) ) ) ( test ( eq ( class ?gen124 ) is_guilty_of_family_violence_lv1 ) ) ( not ?gen131 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen127 ( create$ rule220_4_neg_1-defeated rule220_1 ) ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen126 ) )"))

([rule220_4_neg_1-defeated] of derived-attribute-rule
   (pos-name rule220_4_neg_1-defeated-gen740)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_4_neg_1] ) ) ) ?gen131 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( not ( subseq-pos ( create$ rule220_4_neg_1-defeated rule220_1 $$$ $?gen127 ) ) ) ) ) ( test ( eq ( class ?gen124 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen126 ( create$ rule220_4_neg_1-defeated rule220_1 $?gen127 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen126 ) )"))

([rule220_4_neg_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_1-defeasibly-dot-gen742)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_4_neg_1] ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_4_neg_1 $? ) ) ( test ( eq ( class ?gen124 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen131 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule220_4_neg_1 $?gen126 ) ) ) ) ) ) => ?gen124 <- ( is_guilty_of_family_violence_lv1 ( negative 0 ) )"))

([rule220_4_neg_1-defeasibly] of derived-attribute-rule
   (pos-name rule220_4_neg_1-defeasibly-gen744)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_4_neg_1] ) ) ) ?gen131 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule220_4_neg_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) is_guilty_of_family_violence_lv1 ) ) => ?gen124 <- ( is_guilty_of_family_violence_lv1 ( negative 1 ) ( negative-derivator rule220_4_neg_1 ?gen131 ) )"))

([rule220_4_neg_1-overruled-dot] of derived-attribute-rule
   (pos-name rule220_4_neg_1-overruled-dot-gen746)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_4_neg_1] ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( subseq-pos ( create$ rule220_4_neg_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen124 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen131 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( negative-defeated $?gen126 & : ( not ( member$ rule220_4_neg_1 $?gen126 ) ) ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen128 ( create$ rule220_4_neg_1-overruled $?gen127 ) ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen129 ) )"))

([rule220_4_neg_1-overruled] of derived-attribute-rule
   (pos-name rule220_4_neg_1-overruled-gen748)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_4_neg_1] ) ) ) ?gen131 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( not ( subseq-pos ( create$ rule220_4_neg_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( negative-defeated $?gen126 & : ( not ( member$ rule220_4_neg_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen129 ( create$ rule220_4_neg_1-overruled $?gen127 $?gen128 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen129 ) )"))

([rule220_4_neg_1-support] of derived-attribute-rule
   (pos-name rule220_4_neg_1-support-gen750)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_4_neg_1] ) ) ) ?gen123 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen126 & : ( not ( subseq-pos ( create$ rule220_4_neg_1 ?gen123 $$$ $?gen126 ) ) ) ) ) ( test ( eq ( class ?gen124 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen129 ( create$ rule220_4_neg_1 ?gen123 $?gen126 ) ) ) ?gen124 <- ( is_guilty_of_family_violence_lv1 ( negative-support $?gen129 ) )"))

([rule220_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_4-defeasibly-dot-gen752)
   (depends-on declare is_guilty_of_family_violence_lv4 lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_4] ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_4 $? ) ) ( test ( eq ( class ?gen109 ) is_guilty_of_family_violence_lv4 ) ) ( not ( and ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_death \"true\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( negative ~ 2 ) ( positive-overruled $?gen111 & : ( not ( member$ rule220_4 $?gen111 ) ) ) ) ) ) => ?gen109 <- ( is_guilty_of_family_violence_lv4 ( positive 0 ) )"))

([rule220_4-defeasibly] of derived-attribute-rule
   (pos-name rule220_4-defeasibly-gen754)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_4] ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_death \"true\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen111 & : ( not ( member$ rule220_4 $?gen111 ) ) ) ) ( test ( eq ( class ?gen109 ) is_guilty_of_family_violence_lv4 ) ) => ?gen109 <- ( is_guilty_of_family_violence_lv4 ( positive 1 ) ( positive-derivator rule220_4 ?gen116 ?gen118 ?gen120 ?gen122 ) )"))

([rule220_4-overruled-dot] of derived-attribute-rule
   (pos-name rule220_4-overruled-dot-gen756)
   (depends-on declare is_guilty_of_family_violence_lv4 lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_4] ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-support $?gen112 ) ( negative-overruled $?gen113 & : ( subseq-pos ( create$ rule220_4-overruled $?gen112 $$$ $?gen113 ) ) ) ) ( test ( eq ( class ?gen109 ) is_guilty_of_family_violence_lv4 ) ) ( not ( and ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_death \"true\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( positive-defeated $?gen111 & : ( not ( member$ rule220_4 $?gen111 ) ) ) ) ) ) => ( calc ( bind $?gen114 ( delete-member$ $?gen113 ( create$ rule220_4-overruled $?gen112 ) ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( negative-overruled $?gen114 ) )"))

([rule220_4-overruled] of derived-attribute-rule
   (pos-name rule220_4-overruled-gen758)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_4] ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_death \"true\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-support $?gen112 ) ( negative-overruled $?gen113 & : ( not ( subseq-pos ( create$ rule220_4-overruled $?gen112 $$$ $?gen113 ) ) ) ) ( positive-defeated $?gen111 & : ( not ( member$ rule220_4 $?gen111 ) ) ) ) ( test ( eq ( class ?gen109 ) is_guilty_of_family_violence_lv4 ) ) => ( calc ( bind $?gen114 ( create$ rule220_4-overruled $?gen112 $?gen113 ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( negative-overruled $?gen114 ) )"))

([rule220_4-support] of derived-attribute-rule
   (pos-name rule220_4-support-gen760)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_4] ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_death \"true\" ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive-support $?gen111 & : ( not ( subseq-pos ( create$ rule220_4 ?gen105 ?gen106 ?gen107 ?gen108 $$$ $?gen111 ) ) ) ) ) ( test ( eq ( class ?gen109 ) is_guilty_of_family_violence_lv4 ) ) => ( calc ( bind $?gen114 ( create$ rule220_4 ?gen105 ?gen106 ?gen107 ?gen108 $?gen111 ) ) ) ?gen109 <- ( is_guilty_of_family_violence_lv4 ( positive-support $?gen114 ) )"))

([rule220_3_neg_2-defeated-dot] of derived-attribute-rule
   (pos-name rule220_3_neg_2-defeated-dot-gen762)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_3_neg_2] ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( subseq-pos ( create$ rule220_3_neg_2-defeated rule220_2 $$$ $?gen100 ) ) ) ) ( test ( eq ( class ?gen97 ) is_guilty_of_family_violence_lv2 ) ) ( not ?gen104 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ) => ( calc ( bind $?gen99 ( delete-member$ $?gen100 ( create$ rule220_3_neg_2-defeated rule220_2 ) ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen99 ) )"))

([rule220_3_neg_2-defeated] of derived-attribute-rule
   (pos-name rule220_3_neg_2-defeated-gen764)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_3_neg_2] ) ) ) ?gen104 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( not ( subseq-pos ( create$ rule220_3_neg_2-defeated rule220_2 $$$ $?gen100 ) ) ) ) ) ( test ( eq ( class ?gen97 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen99 ( create$ rule220_3_neg_2-defeated rule220_2 $?gen100 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen99 ) )"))

([rule220_3_neg_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_3_neg_2-defeasibly-dot-gen766)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_3_neg_2] ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_3_neg_2 $? ) ) ( test ( eq ( class ?gen97 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen104 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule220_3_neg_2 $?gen99 ) ) ) ) ) ) => ?gen97 <- ( is_guilty_of_family_violence_lv2 ( negative 0 ) )"))

([rule220_3_neg_2-defeasibly] of derived-attribute-rule
   (pos-name rule220_3_neg_2-defeasibly-gen768)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_3_neg_2] ) ) ) ?gen104 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule220_3_neg_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) is_guilty_of_family_violence_lv2 ) ) => ?gen97 <- ( is_guilty_of_family_violence_lv2 ( negative 1 ) ( negative-derivator rule220_3_neg_2 ?gen104 ) )"))

([rule220_3_neg_2-overruled-dot] of derived-attribute-rule
   (pos-name rule220_3_neg_2-overruled-dot-gen770)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_3_neg_2] ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( subseq-pos ( create$ rule220_3_neg_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen97 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen104 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( negative-defeated $?gen99 & : ( not ( member$ rule220_3_neg_2 $?gen99 ) ) ) ) ) ) => ( calc ( bind $?gen102 ( delete-member$ $?gen101 ( create$ rule220_3_neg_2-overruled $?gen100 ) ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( positive-overruled $?gen102 ) )"))

([rule220_3_neg_2-overruled] of derived-attribute-rule
   (pos-name rule220_3_neg_2-overruled-gen772)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_3_neg_2] ) ) ) ?gen104 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( not ( subseq-pos ( create$ rule220_3_neg_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( negative-defeated $?gen99 & : ( not ( member$ rule220_3_neg_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen102 ( create$ rule220_3_neg_2-overruled $?gen100 $?gen101 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( positive-overruled $?gen102 ) )"))

([rule220_3_neg_2-support] of derived-attribute-rule
   (pos-name rule220_3_neg_2-support-gen774)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_3_neg_2] ) ) ) ?gen96 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen99 & : ( not ( subseq-pos ( create$ rule220_3_neg_2 ?gen96 $$$ $?gen99 ) ) ) ) ) ( test ( eq ( class ?gen97 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen102 ( create$ rule220_3_neg_2 ?gen96 $?gen99 ) ) ) ?gen97 <- ( is_guilty_of_family_violence_lv2 ( negative-support $?gen102 ) )"))

([rule220_3_neg_1-defeated-dot] of derived-attribute-rule
   (pos-name rule220_3_neg_1-defeated-dot-gen776)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_3_neg_1] ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( subseq-pos ( create$ rule220_3_neg_1-defeated rule220_1 $$$ $?gen91 ) ) ) ) ( test ( eq ( class ?gen88 ) is_guilty_of_family_violence_lv1 ) ) ( not ?gen95 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ) => ( calc ( bind $?gen90 ( delete-member$ $?gen91 ( create$ rule220_3_neg_1-defeated rule220_1 ) ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen90 ) )"))

([rule220_3_neg_1-defeated] of derived-attribute-rule
   (pos-name rule220_3_neg_1-defeated-gen778)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_3_neg_1] ) ) ) ?gen95 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( not ( subseq-pos ( create$ rule220_3_neg_1-defeated rule220_1 $$$ $?gen91 ) ) ) ) ) ( test ( eq ( class ?gen88 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen90 ( create$ rule220_3_neg_1-defeated rule220_1 $?gen91 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen90 ) )"))

([rule220_3_neg_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_3_neg_1-defeasibly-dot-gen780)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_3_neg_1] ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_3_neg_1 $? ) ) ( test ( eq ( class ?gen88 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen95 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule220_3_neg_1 $?gen90 ) ) ) ) ) ) => ?gen88 <- ( is_guilty_of_family_violence_lv1 ( negative 0 ) )"))

([rule220_3_neg_1-defeasibly] of derived-attribute-rule
   (pos-name rule220_3_neg_1-defeasibly-gen782)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_3_neg_1] ) ) ) ?gen95 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule220_3_neg_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) is_guilty_of_family_violence_lv1 ) ) => ?gen88 <- ( is_guilty_of_family_violence_lv1 ( negative 1 ) ( negative-derivator rule220_3_neg_1 ?gen95 ) )"))

([rule220_3_neg_1-overruled-dot] of derived-attribute-rule
   (pos-name rule220_3_neg_1-overruled-dot-gen784)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_3_neg_1] ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( subseq-pos ( create$ rule220_3_neg_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( test ( eq ( class ?gen88 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen95 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( negative-defeated $?gen90 & : ( not ( member$ rule220_3_neg_1 $?gen90 ) ) ) ) ) ) => ( calc ( bind $?gen93 ( delete-member$ $?gen92 ( create$ rule220_3_neg_1-overruled $?gen91 ) ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen93 ) )"))

([rule220_3_neg_1-overruled] of derived-attribute-rule
   (pos-name rule220_3_neg_1-overruled-gen786)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_3_neg_1] ) ) ) ?gen95 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( not ( subseq-pos ( create$ rule220_3_neg_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( negative-defeated $?gen90 & : ( not ( member$ rule220_3_neg_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen93 ( create$ rule220_3_neg_1-overruled $?gen91 $?gen92 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen93 ) )"))

([rule220_3_neg_1-support] of derived-attribute-rule
   (pos-name rule220_3_neg_1-support-gen788)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_3_neg_1] ) ) ) ?gen87 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen90 & : ( not ( subseq-pos ( create$ rule220_3_neg_1 ?gen87 $$$ $?gen90 ) ) ) ) ) ( test ( eq ( class ?gen88 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen93 ( create$ rule220_3_neg_1 ?gen87 $?gen90 ) ) ) ?gen88 <- ( is_guilty_of_family_violence_lv1 ( negative-support $?gen93 ) )"))

([rule220_3_b-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_3_b-defeasibly-dot-gen790)
   (depends-on declare is_guilty_of_family_violence_lv3 lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_3_b] ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_3_b $? ) ) ( test ( eq ( class ?gen73 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_is_minor \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( negative ~ 2 ) ( positive-overruled $?gen75 & : ( not ( member$ rule220_3_b $?gen75 ) ) ) ) ) ) => ?gen73 <- ( is_guilty_of_family_violence_lv3 ( positive 0 ) )"))

([rule220_3_b-defeasibly] of derived-attribute-rule
   (pos-name rule220_3_b-defeasibly-gen792)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_3_b] ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_is_minor \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen75 & : ( not ( member$ rule220_3_b $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) is_guilty_of_family_violence_lv3 ) ) => ?gen73 <- ( is_guilty_of_family_violence_lv3 ( positive 1 ) ( positive-derivator rule220_3_b ?gen80 ?gen82 ?gen84 ?gen86 ) )"))

([rule220_3_b-overruled-dot] of derived-attribute-rule
   (pos-name rule220_3_b-overruled-dot-gen794)
   (depends-on declare is_guilty_of_family_violence_lv3 lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_3_b] ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen76 ) ( negative-overruled $?gen77 & : ( subseq-pos ( create$ rule220_3_b-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( test ( eq ( class ?gen73 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_is_minor \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( positive-defeated $?gen75 & : ( not ( member$ rule220_3_b $?gen75 ) ) ) ) ) ) => ( calc ( bind $?gen78 ( delete-member$ $?gen77 ( create$ rule220_3_b-overruled $?gen76 ) ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen78 ) )"))

([rule220_3_b-overruled] of derived-attribute-rule
   (pos-name rule220_3_b-overruled-gen796)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_3_b] ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_is_minor \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen76 ) ( negative-overruled $?gen77 & : ( not ( subseq-pos ( create$ rule220_3_b-overruled $?gen76 $$$ $?gen77 ) ) ) ) ( positive-defeated $?gen75 & : ( not ( member$ rule220_3_b $?gen75 ) ) ) ) ( test ( eq ( class ?gen73 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen78 ( create$ rule220_3_b-overruled $?gen76 $?gen77 ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen78 ) )"))

([rule220_3_b-support] of derived-attribute-rule
   (pos-name rule220_3_b-support-gen798)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_3_b] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_is_minor \"true\" ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-support $?gen75 & : ( not ( subseq-pos ( create$ rule220_3_b ?gen69 ?gen70 ?gen71 ?gen72 $$$ $?gen75 ) ) ) ) ) ( test ( eq ( class ?gen73 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen78 ( create$ rule220_3_b ?gen69 ?gen70 ?gen71 ?gen72 $?gen75 ) ) ) ?gen73 <- ( is_guilty_of_family_violence_lv3 ( positive-support $?gen78 ) )"))

([rule220_3_a-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_3_a-defeasibly-dot-gen800)
   (depends-on declare is_guilty_of_family_violence_lv3 lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_3_a] ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_3_a $? ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_serious_injury \"true\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( negative ~ 2 ) ( positive-overruled $?gen57 & : ( not ( member$ rule220_3_a $?gen57 ) ) ) ) ) ) => ?gen55 <- ( is_guilty_of_family_violence_lv3 ( positive 0 ) )"))

([rule220_3_a-defeasibly] of derived-attribute-rule
   (pos-name rule220_3_a-defeasibly-gen802)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_3_a] ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_serious_injury \"true\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen57 & : ( not ( member$ rule220_3_a $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv3 ) ) => ?gen55 <- ( is_guilty_of_family_violence_lv3 ( positive 1 ) ( positive-derivator rule220_3_a ?gen62 ?gen64 ?gen66 ?gen68 ) )"))

([rule220_3_a-overruled-dot] of derived-attribute-rule
   (pos-name rule220_3_a-overruled-dot-gen804)
   (depends-on declare is_guilty_of_family_violence_lv3 lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_3_a] ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen58 ) ( negative-overruled $?gen59 & : ( subseq-pos ( create$ rule220_3_a-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_serious_injury \"true\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( positive-defeated $?gen57 & : ( not ( member$ rule220_3_a $?gen57 ) ) ) ) ) ) => ( calc ( bind $?gen60 ( delete-member$ $?gen59 ( create$ rule220_3_a-overruled $?gen58 ) ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen60 ) )"))

([rule220_3_a-overruled] of derived-attribute-rule
   (pos-name rule220_3_a-overruled-gen806)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_3_a] ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_serious_injury \"true\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen58 ) ( negative-overruled $?gen59 & : ( not ( subseq-pos ( create$ rule220_3_a-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( positive-defeated $?gen57 & : ( not ( member$ rule220_3_a $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen60 ( create$ rule220_3_a-overruled $?gen58 $?gen59 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen60 ) )"))

([rule220_3_a-support] of derived-attribute-rule
   (pos-name rule220_3_a-support-gen808)
   (depends-on declare lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_3_a] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_serious_injury \"true\" ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-support $?gen57 & : ( not ( subseq-pos ( create$ rule220_3_a ?gen51 ?gen52 ?gen53 ?gen54 $$$ $?gen57 ) ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen60 ( create$ rule220_3_a ?gen51 ?gen52 ?gen53 ?gen54 $?gen57 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv3 ( positive-support $?gen60 ) )"))

([rule220_2_neg-defeated-dot] of derived-attribute-rule
   (pos-name rule220_2_neg-defeated-dot-gen810)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_2_neg] ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( subseq-pos ( create$ rule220_2_neg-defeated rule220_1 $$$ $?gen46 ) ) ) ) ( test ( eq ( class ?gen43 ) is_guilty_of_family_violence_lv1 ) ) ( not ?gen50 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen46 ( create$ rule220_2_neg-defeated rule220_1 ) ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen45 ) )"))

([rule220_2_neg-defeated] of derived-attribute-rule
   (pos-name rule220_2_neg-defeated-gen812)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_2_neg] ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( not ( subseq-pos ( create$ rule220_2_neg-defeated rule220_1 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen43 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen45 ( create$ rule220_2_neg-defeated rule220_1 $?gen46 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen45 ) )"))

([rule220_2_neg-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_2_neg-defeasibly-dot-gen814)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_2_neg] ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_2_neg $? ) ) ( test ( eq ( class ?gen43 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen50 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule220_2_neg $?gen45 ) ) ) ) ) ) => ?gen43 <- ( is_guilty_of_family_violence_lv1 ( negative 0 ) )"))

([rule220_2_neg-defeasibly] of derived-attribute-rule
   (pos-name rule220_2_neg-defeasibly-gen816)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_2_neg] ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule220_2_neg $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) is_guilty_of_family_violence_lv1 ) ) => ?gen43 <- ( is_guilty_of_family_violence_lv1 ( negative 1 ) ( negative-derivator rule220_2_neg ?gen50 ) )"))

([rule220_2_neg-overruled-dot] of derived-attribute-rule
   (pos-name rule220_2_neg-overruled-dot-gen818)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_2_neg] ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( subseq-pos ( create$ rule220_2_neg-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen50 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( negative-defeated $?gen45 & : ( not ( member$ rule220_2_neg $?gen45 ) ) ) ) ) ) => ( calc ( bind $?gen48 ( delete-member$ $?gen47 ( create$ rule220_2_neg-overruled $?gen46 ) ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen48 ) )"))

([rule220_2_neg-overruled] of derived-attribute-rule
   (pos-name rule220_2_neg-overruled-gen820)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_2_neg] ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( not ( subseq-pos ( create$ rule220_2_neg-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( negative-defeated $?gen45 & : ( not ( member$ rule220_2_neg $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen48 ( create$ rule220_2_neg-overruled $?gen46 $?gen47 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen48 ) )"))

([rule220_2_neg-support] of derived-attribute-rule
   (pos-name rule220_2_neg-support-gen822)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_2_neg] ) ) ) ?gen42 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen45 & : ( not ( subseq-pos ( create$ rule220_2_neg ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen48 ( create$ rule220_2_neg ?gen42 $?gen45 ) ) ) ?gen43 <- ( is_guilty_of_family_violence_lv1 ( negative-support $?gen48 ) )"))

([rule220_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-dot-gen824)
   (depends-on declare is_guilty_of_family_violence_lv2 lc:case lc:case lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_2] ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_2 $? ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule220_2 $?gen32 ) ) ) ) ) ) => ?gen30 <- ( is_guilty_of_family_violence_lv2 ( positive 0 ) )"))

([rule220_2-defeasibly] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-gen826)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule220_2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv2 ) ) => ?gen30 <- ( is_guilty_of_family_violence_lv2 ( positive 1 ) ( positive-derivator rule220_2 ?gen37 ?gen39 ?gen41 ) )"))

([rule220_2-overruled-dot] of derived-attribute-rule
   (pos-name rule220_2-overruled-dot-gen828)
   (depends-on declare is_guilty_of_family_violence_lv2 lc:case lc:case lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_2] ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( subseq-pos ( create$ rule220_2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen32 & : ( not ( member$ rule220_2 $?gen32 ) ) ) ) ) ) => ( calc ( bind $?gen35 ( delete-member$ $?gen34 ( create$ rule220_2-overruled $?gen33 ) ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen35 ) )"))

([rule220_2-overruled] of derived-attribute-rule
   (pos-name rule220_2-overruled-gen830)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( not ( subseq-pos ( create$ rule220_2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( positive-defeated $?gen32 & : ( not ( member$ rule220_2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen35 ( create$ rule220_2-overruled $?gen33 $?gen34 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen35 ) )"))

([rule220_2-support] of derived-attribute-rule
   (pos-name rule220_2-support-gen832)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_2] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen32 & : ( not ( subseq-pos ( create$ rule220_2 ?gen27 ?gen28 ?gen29 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen35 ( create$ rule220_2 ?gen27 ?gen28 ?gen29 $?gen32 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv2 ( positive-support $?gen35 ) )"))

([rule220_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-dot-gen834)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_1 $? ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 0 ) )"))

([rule220_1-defeasibly] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-gen836)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 1 ) ( positive-derivator rule220_1 ?gen24 ?gen26 ) )"))

([rule220_1-overruled-dot] of derived-attribute-rule
   (pos-name rule220_1-overruled-dot-gen838)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule220_1-overruled $?gen20 ) ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-overruled] of derived-attribute-rule
   (pos-name rule220_1-overruled-gen840)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-support] of derived-attribute-rule
   (pos-name rule220_1-support-gen842)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule220_1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-support $?gen22 ) )"))

([pen221_3_max-deductive] of ntm-deductive-rule
   (pos-name pen221_3_max-deductive-gen435)
   (depends-on is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen393 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen221_3_max-deductive-gen435 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen393 ) ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pen221_3_min-deductive] of ntm-deductive-rule
   (pos-name pen221_3_min-deductive-gen434)
   (depends-on is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen384 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 6 ) ) ) => ( min_imprisonment ( value 6 ) )")
   (production-rule "( defrule pen221_3_min-deductive-gen434 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen384 ) ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 6 ) ) ) ( make-instance ?oid of min_imprisonment ( value 6 ) ) )")
   (derived-class min_imprisonment))

([pen221_1_prison-deductive] of ntm-deductive-rule
   (pos-name pen221_1_prison-deductive-gen433)
   (depends-on is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen375 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2 ) ) ) => ( max_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen221_1_prison-deductive-gen433 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen375 ) ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2 ) ) )")
   (derived-class max_imprisonment))

([pen221_1_fine-deductive] of ntm-deductive-rule
   (pos-name pen221_1_fine-deductive-gen432)
   (depends-on is_guilty_of_nonpayment_of_support_lv1 to_pay)
   (implies to_pay)
   (deductive-rule "?gen366 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ( not ( to_pay ( value 300 ) ) ) => ( to_pay ( value 300 ) )")
   (production-rule "( defrule pen221_1_fine-deductive-gen432 ( declare ( salience ( calc-salience to_pay ) ) ) ( run-deductive-rules ) ( object ( name ?gen366 ) ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay ) ( value 300 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay 300 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay 300 ) ) ) ( make-instance ?oid of to_pay ( value 300 ) ) )")
   (derived-class to_pay))

([pen220_5_prison-deductive] of ntm-deductive-rule
   (pos-name pen220_5_prison-deductive-gen431)
   (depends-on is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen357 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen220_5_prison-deductive-gen431 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen357 ) ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pen220_5_fine-deductive] of ntm-deductive-rule
   (pos-name pen220_5_fine-deductive-gen430)
   (depends-on is_guilty_of_violating_measures to_pay)
   (implies to_pay)
   (deductive-rule "?gen348 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ( not ( to_pay ( value 500 ) ) ) => ( to_pay ( value 500 ) )")
   (production-rule "( defrule pen220_5_fine-deductive-gen430 ( declare ( salience ( calc-salience to_pay ) ) ) ( run-deductive-rules ) ( object ( name ?gen348 ) ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay 500 ) ) ) ( make-instance ?oid of to_pay ( value 500 ) ) )")
   (derived-class to_pay))

([pen220_4_max-deductive] of ntm-deductive-rule
   (pos-name pen220_4_max-deductive-gen429)
   (depends-on is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen339 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pen220_4_max-deductive-gen429 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen339 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pen220_4_min-deductive] of ntm-deductive-rule
   (pos-name pen220_4_min-deductive-gen428)
   (depends-on is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen330 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_4_min-deductive-gen428 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen330 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pen220_3_max-deductive] of ntm-deductive-rule
   (pos-name pen220_3_max-deductive-gen427)
   (depends-on is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen303 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen220_3_max-deductive-gen427 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen303 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pen220_3_min-deductive] of ntm-deductive-rule
   (pos-name pen220_3_min-deductive-gen426)
   (depends-on is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen294 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen220_3_min-deductive-gen426 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen294 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pen220_2_max-deductive] of ntm-deductive-rule
   (pos-name pen220_2_max-deductive-gen425)
   (depends-on is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen285 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_max-deductive-gen425 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen285 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pen220_2_min-deductive] of ntm-deductive-rule
   (pos-name pen220_2_min-deductive-gen424)
   (depends-on is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen276 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_min-deductive-gen424 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen276 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pen220_1_prison-deductive] of ntm-deductive-rule
   (pos-name pen220_1_prison-deductive-gen423)
   (depends-on is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen267 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2 ) ) ) => ( max_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen220_1_prison-deductive-gen423 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen267 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2 ) ) )")
   (derived-class max_imprisonment))

([pen220_1_fine-deductive] of ntm-deductive-rule
   (pos-name pen220_1_fine-deductive-gen422)
   (depends-on is_guilty_of_family_violence_lv1 to_pay)
   (implies to_pay)
   (deductive-rule "?gen258 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( to_pay ( value 1000 ) ) ) => ( to_pay ( value 1000 ) )")
   (production-rule "( defrule pen220_1_fine-deductive-gen422 ( declare ( salience ( calc-salience to_pay ) ) ) ( run-deductive-rules ) ( object ( name ?gen258 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay ) ( value 1000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay 1000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay 1000 ) ) ) ( make-instance ?oid of to_pay ( value 1000 ) ) )")
   (derived-class to_pay))

([rule221_1_neg_3-deductive] of ntm-deductive-rule
   (pos-name rule221_1_neg_3-deductive-gen421)
   (depends-on is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (deductive-rule "?gen249 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ( not ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_1_neg_3-deductive-gen421 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen249 ) ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv1))

([rule221_3-deductive] of ntm-deductive-rule
   (pos-name rule221_3-deductive-gen420)
   (depends-on lc:case lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (deductive-rule "?gen228 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ?gen229 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ?gen231 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"false\" ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_for_victim \"true\" ) ) ( not ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_3-deductive-gen420 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen228 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ( object ( name ?gen229 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ( object ( name ?gen230 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ( object ( name ?gen231 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"false\" ) ) ( object ( name ?gen232 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:severe_consequences_for_victim \"true\" ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv2))

([rule221_1_neg-deductive] of ntm-deductive-rule
   (pos-name rule221_1_neg-deductive-gen419)
   (depends-on lc:case lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (deductive-rule "?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ?gen211 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ?gen213 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ) ( not ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_1_neg-deductive-gen419 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen210 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ( object ( name ?gen211 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ( object ( name ?gen212 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ( object ( name ?gen213 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:justified_reasons_for_nonpayment \"true\" ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv1))

([rule221_1-deductive] of ntm-deductive-rule
   (pos-name rule221_1-deductive-gen418)
   (depends-on lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (deductive-rule "?gen195 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ?gen197 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ( not ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_1-deductive-gen418 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:legal_obligation_to_support \"true\" ) ) ( object ( name ?gen196 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:duty_established_by_court_order \"true\" ) ) ( object ( name ?gen197 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fails_to_pay_support \"true\" ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv1))

([rule220_5_neg_4-deductive] of ntm-deductive-rule
   (pos-name rule220_5_neg_4-deductive-gen417)
   (depends-on is_guilty_of_family_violence_lv4 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (deductive-rule "?gen186 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ) => ( is_guilty_of_violating_measures ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_5_neg_4-deductive-gen417 ( declare ( salience ( calc-salience is_guilty_of_violating_measures ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_violating_measures ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_violating_measures))

([rule220_5_neg_3-deductive] of ntm-deductive-rule
   (pos-name rule220_5_neg_3-deductive-gen416)
   (depends-on is_guilty_of_family_violence_lv3 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (deductive-rule "?gen177 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ) => ( is_guilty_of_violating_measures ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_5_neg_3-deductive-gen416 ( declare ( salience ( calc-salience is_guilty_of_violating_measures ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_violating_measures ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_violating_measures))

([rule220_5_neg_2-deductive] of ntm-deductive-rule
   (pos-name rule220_5_neg_2-deductive-gen415)
   (depends-on is_guilty_of_family_violence_lv2 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (deductive-rule "?gen168 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ) => ( is_guilty_of_violating_measures ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_5_neg_2-deductive-gen415 ( declare ( salience ( calc-salience is_guilty_of_violating_measures ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_violating_measures ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_violating_measures))

([rule220_5_neg_1-deductive] of ntm-deductive-rule
   (pos-name rule220_5_neg_1-deductive-gen414)
   (depends-on is_guilty_of_family_violence_lv1 is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (deductive-rule "?gen159 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ) => ( is_guilty_of_violating_measures ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_5_neg_1-deductive-gen414 ( declare ( salience ( calc-salience is_guilty_of_violating_measures ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_violating_measures ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_violating_measures))

([rule220_5-deductive] of ntm-deductive-rule
   (pos-name rule220_5-deductive-gen413)
   (depends-on lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (deductive-rule "?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_protection_measures \"true\" ) ) ( not ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ) => ( is_guilty_of_violating_measures ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_5-deductive-gen413 ( declare ( salience ( calc-salience is_guilty_of_violating_measures ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_protection_measures \"true\" ) ) ( not ( object ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_violating_measures ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_violating_measures))

([rule220_4_neg_3-deductive] of ntm-deductive-rule
   (pos-name rule220_4_neg_3-deductive-gen412)
   (depends-on is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (deductive-rule "?gen141 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_4_neg_3-deductive-gen412 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv3))

([rule220_4_neg_2-deductive] of ntm-deductive-rule
   (pos-name rule220_4_neg_2-deductive-gen411)
   (depends-on is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (deductive-rule "?gen132 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_4_neg_2-deductive-gen411 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv2))

([rule220_4_neg_1-deductive] of ntm-deductive-rule
   (pos-name rule220_4_neg_1-deductive-gen410)
   (depends-on is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen123 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_4_neg_1-deductive-gen410 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

([rule220_4-deductive] of ntm-deductive-rule
   (pos-name rule220_4-deductive-gen409)
   (depends-on lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (deductive-rule "?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_death \"true\" ) ) ( not ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_4-deductive-gen409 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv4 ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ( object ( name ?gen106 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ( object ( name ?gen107 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ( object ( name ?gen108 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes_death \"true\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv4 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv4 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv4))

([rule220_3_neg_2-deductive] of ntm-deductive-rule
   (pos-name rule220_3_neg_2-deductive-gen408)
   (depends-on is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (deductive-rule "?gen96 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_3_neg_2-deductive-gen408 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv2))

([rule220_3_neg_1-deductive] of ntm-deductive-rule
   (pos-name rule220_3_neg_1-deductive-gen407)
   (depends-on is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen87 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_3_neg_1-deductive-gen407 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen87 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

([rule220_3_b-deductive] of ntm-deductive-rule
   (pos-name rule220_3_b-deductive-gen406)
   (depends-on lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (deductive-rule "?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_is_minor \"true\" ) ) ( not ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_3_b-deductive-gen406 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ( object ( name ?gen70 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ( object ( name ?gen71 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ( object ( name ?gen72 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_is_minor \"true\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv3))

([rule220_3_a-deductive] of ntm-deductive-rule
   (pos-name rule220_3_a-deductive-gen405)
   (depends-on lc:case lc:case lc:case lc:case is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (deductive-rule "?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes_serious_injury \"true\" ) ) ( not ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_3_a-deductive-gen405 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ( object ( name ?gen52 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ( object ( name ?gen53 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes_serious_injury \"true\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv3))

([rule220_2_neg-deductive] of ntm-deductive-rule
   (pos-name rule220_2_neg-deductive-gen404)
   (depends-on is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen42 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_2_neg-deductive-gen404 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

([rule220_2-deductive] of ntm-deductive-rule
   (pos-name rule220_2-deductive-gen403)
   (depends-on lc:case lc:case lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ( not ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_2-deductive-gen403 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_weapon \"true\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv2))

([rule220_1-deductive] of ntm-deductive-rule
   (pos-name rule220_1-deductive-gen402)
   (depends-on lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_1-deductive-gen402 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses_gross_violence \"true\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member_yes\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

