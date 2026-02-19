([pen220_2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-dot-gen71)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_max] ) ) ) ?gen58 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_max $? ) ) ( test ( eq ( class ?gen58 ) max_imprisonment ) ) ( not ( and ?gen65 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen60 & : ( not ( member$ pen220_2_max $?gen60 ) ) ) ) ) ) => ?gen58 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_2_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-gen73)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_max] ) ) ) ?gen65 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen60 & : ( not ( member$ pen220_2_max $?gen60 ) ) ) ) ( test ( eq ( class ?gen58 ) max_imprisonment ) ) => ?gen58 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_2_max ?gen65 ) )"))

([pen220_2_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-dot-gen75)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_max] ) ) ) ?gen58 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen61 ) ( negative-overruled $?gen62 & : ( subseq-pos ( create$ pen220_2_max-overruled $?gen61 $$$ $?gen62 ) ) ) ) ( test ( eq ( class ?gen58 ) max_imprisonment ) ) ( not ( and ?gen65 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( max_imprisonment ( positive-defeated $?gen60 & : ( not ( member$ pen220_2_max $?gen60 ) ) ) ) ) ) => ( calc ( bind $?gen63 ( delete-member$ $?gen62 ( create$ pen220_2_max-overruled $?gen61 ) ) ) ) ?gen58 <- ( max_imprisonment ( negative-overruled $?gen63 ) )"))

([pen220_2_max-overruled] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-gen77)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_max] ) ) ) ?gen65 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen61 ) ( negative-overruled $?gen62 & : ( not ( subseq-pos ( create$ pen220_2_max-overruled $?gen61 $$$ $?gen62 ) ) ) ) ( positive-defeated $?gen60 & : ( not ( member$ pen220_2_max $?gen60 ) ) ) ) ( test ( eq ( class ?gen58 ) max_imprisonment ) ) => ( calc ( bind $?gen63 ( create$ pen220_2_max-overruled $?gen61 $?gen62 ) ) ) ?gen58 <- ( max_imprisonment ( negative-overruled $?gen63 ) )"))

([pen220_2_max-support] of derived-attribute-rule
   (pos-name pen220_2_max-support-gen79)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_max] ) ) ) ?gen57 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen58 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen60 & : ( not ( subseq-pos ( create$ pen220_2_max ?gen57 $$$ $?gen60 ) ) ) ) ) ( test ( eq ( class ?gen58 ) max_imprisonment ) ) => ( calc ( bind $?gen63 ( create$ pen220_2_max ?gen57 $?gen60 ) ) ) ?gen58 <- ( max_imprisonment ( positive-support $?gen63 ) )"))

([pen220_2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-dot-gen81)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_min] ) ) ) ?gen49 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_min $? ) ) ( test ( eq ( class ?gen49 ) min_imprisonment ) ) ( not ( and ?gen56 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen51 & : ( not ( member$ pen220_2_min $?gen51 ) ) ) ) ) ) => ?gen49 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_2_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-gen83)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_min] ) ) ) ?gen56 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen51 & : ( not ( member$ pen220_2_min $?gen51 ) ) ) ) ( test ( eq ( class ?gen49 ) min_imprisonment ) ) => ?gen49 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_2_min ?gen56 ) )"))

([pen220_2_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-dot-gen85)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_min] ) ) ) ?gen49 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen52 ) ( negative-overruled $?gen53 & : ( subseq-pos ( create$ pen220_2_min-overruled $?gen52 $$$ $?gen53 ) ) ) ) ( test ( eq ( class ?gen49 ) min_imprisonment ) ) ( not ( and ?gen56 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( min_imprisonment ( positive-defeated $?gen51 & : ( not ( member$ pen220_2_min $?gen51 ) ) ) ) ) ) => ( calc ( bind $?gen54 ( delete-member$ $?gen53 ( create$ pen220_2_min-overruled $?gen52 ) ) ) ) ?gen49 <- ( min_imprisonment ( negative-overruled $?gen54 ) )"))

([pen220_2_min-overruled] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-gen87)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_min] ) ) ) ?gen56 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen52 ) ( negative-overruled $?gen53 & : ( not ( subseq-pos ( create$ pen220_2_min-overruled $?gen52 $$$ $?gen53 ) ) ) ) ( positive-defeated $?gen51 & : ( not ( member$ pen220_2_min $?gen51 ) ) ) ) ( test ( eq ( class ?gen49 ) min_imprisonment ) ) => ( calc ( bind $?gen54 ( create$ pen220_2_min-overruled $?gen52 $?gen53 ) ) ) ?gen49 <- ( min_imprisonment ( negative-overruled $?gen54 ) )"))

([pen220_2_min-support] of derived-attribute-rule
   (pos-name pen220_2_min-support-gen89)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_min] ) ) ) ?gen48 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen49 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen51 & : ( not ( subseq-pos ( create$ pen220_2_min ?gen48 $$$ $?gen51 ) ) ) ) ) ( test ( eq ( class ?gen49 ) min_imprisonment ) ) => ( calc ( bind $?gen54 ( create$ pen220_2_min ?gen48 $?gen51 ) ) ) ?gen49 <- ( min_imprisonment ( positive-support $?gen54 ) )"))

([pen220_1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_1-defeasibly-dot-gen91)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_1] ) ) ) ?gen40 <- ( max_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen220_1 $? ) ) ( test ( eq ( class ?gen40 ) max_imprisonment ) ) ( not ( and ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ pen220_1 $?gen42 ) ) ) ) ) ) => ?gen40 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_1-defeasibly] of derived-attribute-rule
   (pos-name pen220_1-defeasibly-gen93)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_1] ) ) ) ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( max_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ pen220_1 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) max_imprisonment ) ) => ?gen40 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_1 ?gen47 ) )"))

([pen220_1-overruled-dot] of derived-attribute-rule
   (pos-name pen220_1-overruled-dot-gen95)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_1] ) ) ) ?gen40 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( subseq-pos ( create$ pen220_1-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( test ( eq ( class ?gen40 ) max_imprisonment ) ) ( not ( and ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( max_imprisonment ( positive-defeated $?gen42 & : ( not ( member$ pen220_1 $?gen42 ) ) ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen44 ( create$ pen220_1-overruled $?gen43 ) ) ) ) ?gen40 <- ( max_imprisonment ( negative-overruled $?gen45 ) )"))

([pen220_1-overruled] of derived-attribute-rule
   (pos-name pen220_1-overruled-gen97)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_1] ) ) ) ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( not ( subseq-pos ( create$ pen220_1-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( positive-defeated $?gen42 & : ( not ( member$ pen220_1 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) max_imprisonment ) ) => ( calc ( bind $?gen45 ( create$ pen220_1-overruled $?gen43 $?gen44 ) ) ) ?gen40 <- ( max_imprisonment ( negative-overruled $?gen45 ) )"))

([pen220_1-support] of derived-attribute-rule
   (pos-name pen220_1-support-gen99)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_1] ) ) ) ?gen39 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen40 <- ( max_imprisonment ( value 2 ) ( positive-support $?gen42 & : ( not ( subseq-pos ( create$ pen220_1 ?gen39 $$$ $?gen42 ) ) ) ) ) ( test ( eq ( class ?gen40 ) max_imprisonment ) ) => ( calc ( bind $?gen45 ( create$ pen220_1 ?gen39 $?gen42 ) ) ) ?gen40 <- ( max_imprisonment ( positive-support $?gen45 ) )"))

([rule220_2-defeated-dot] of derived-attribute-rule
   (pos-name rule220_2-defeated-dot-gen101)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_2] ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen32 & : ( subseq-pos ( create$ rule220_2-defeated rule220_1 $$$ $?gen32 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ) ) => ( calc ( bind $?gen31 ( delete-member$ $?gen32 ( create$ rule220_2-defeated rule220_1 ) ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-defeated $?gen31 ) )"))

([rule220_2-defeated] of derived-attribute-rule
   (pos-name rule220_2-defeated-gen103)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_2] ) ) ) ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen32 & : ( not ( subseq-pos ( create$ rule220_2-defeated rule220_1 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen31 ( create$ rule220_2-defeated rule220_1 $?gen32 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-defeated $?gen31 ) )"))

([rule220_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-dot-gen105)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_2] ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_2 $? ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ) ) => ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive 0 ) )"))

([rule220_2-defeasibly] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-gen107)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_2] ) ) ) ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive 1 ) ( positive-derivator rule220_2 ?gen36 ?gen38 ) )"))

([rule220_2-overruled-dot] of derived-attribute-rule
   (pos-name rule220_2-overruled-dot-gen109)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_2] ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( subseq-pos ( create$ rule220_2-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ) ) => ( calc ( bind $?gen34 ( delete-member$ $?gen33 ( create$ rule220_2-overruled $?gen32 ) ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen34 ) )"))

([rule220_2-overruled] of derived-attribute-rule
   (pos-name rule220_2-overruled-gen111)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_2] ) ) ) ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( not ( subseq-pos ( create$ rule220_2-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( positive-defeated $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen34 ( create$ rule220_2-overruled $?gen32 $?gen33 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen34 ) )"))

([rule220_2-support] of derived-attribute-rule
   (pos-name rule220_2-support-gen113)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_2] ) ) ) ?gen27 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen31 & : ( not ( subseq-pos ( create$ rule220_2 ?gen27 ?gen28 $$$ $?gen31 ) ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen34 ( create$ rule220_2 ?gen27 ?gen28 $?gen31 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive-support $?gen34 ) )"))

([rule220_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-dot-gen115)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_1 $? ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 0 ) )"))

([rule220_1-defeasibly] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-gen117)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 1 ) ( positive-derivator rule220_1 ?gen24 ?gen26 ) )"))

([rule220_1-overruled-dot] of derived-attribute-rule
   (pos-name rule220_1-overruled-dot-gen119)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule220_1-overruled $?gen20 ) ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-overruled] of derived-attribute-rule
   (pos-name rule220_1-overruled-gen121)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-support] of derived-attribute-rule
   (pos-name rule220_1-support-gen123)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule220_1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-support $?gen22 ) )"))

([pen220_2_max-deductive] of ntm-deductive-rule
   (pos-name pen220_2_max-deductive-gen70)
   (depends-on is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen57 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_max-deductive-gen70 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen57 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pen220_2_min-deductive] of ntm-deductive-rule
   (pos-name pen220_2_min-deductive-gen69)
   (depends-on is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen48 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_min-deductive-gen69 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen48 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pen220_1-deductive] of ntm-deductive-rule
   (pos-name pen220_1-deductive-gen68)
   (depends-on is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen39 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2 ) ) ) => ( max_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen220_1-deductive-gen68 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen39 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2 ) ) )")
   (derived-class max_imprisonment))

([rule220_2-deductive] of ntm-deductive-rule
   (pos-name rule220_2-deductive-gen67)
   (depends-on is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (deductive-rule "?gen27 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_2-deductive-gen67 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv2))

([rule220_1-deductive] of ntm-deductive-rule
   (pos-name rule220_1-deductive-gen66)
   (depends-on lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_1-deductive-gen66 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

