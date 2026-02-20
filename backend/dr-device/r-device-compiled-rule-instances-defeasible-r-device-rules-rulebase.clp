([pen221_3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_3_max-defeasibly-dot-gen213)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_3_max] ) ) ) ?gen187 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen221_3_max $? ) ) ( test ( eq ( class ?gen187 ) max_imprisonment ) ) ( not ( and ?gen194 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen189 & : ( not ( member$ pen221_3_max $?gen189 ) ) ) ) ) ) => ?gen187 <- ( max_imprisonment ( positive 0 ) )"))

([pen221_3_max-defeasibly] of derived-attribute-rule
   (pos-name pen221_3_max-defeasibly-gen215)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_3_max] ) ) ) ?gen194 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen189 & : ( not ( member$ pen221_3_max $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) max_imprisonment ) ) => ?gen187 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen221_3_max ?gen194 ) )"))

([pen221_3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen221_3_max-overruled-dot-gen217)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_3_max] ) ) ) ?gen187 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen190 ) ( negative-overruled $?gen191 & : ( subseq-pos ( create$ pen221_3_max-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( test ( eq ( class ?gen187 ) max_imprisonment ) ) ( not ( and ?gen194 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( max_imprisonment ( positive-defeated $?gen189 & : ( not ( member$ pen221_3_max $?gen189 ) ) ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen191 ( create$ pen221_3_max-overruled $?gen190 ) ) ) ) ?gen187 <- ( max_imprisonment ( negative-overruled $?gen192 ) )"))

([pen221_3_max-overruled] of derived-attribute-rule
   (pos-name pen221_3_max-overruled-gen219)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_3_max] ) ) ) ?gen194 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen190 ) ( negative-overruled $?gen191 & : ( not ( subseq-pos ( create$ pen221_3_max-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( positive-defeated $?gen189 & : ( not ( member$ pen221_3_max $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) max_imprisonment ) ) => ( calc ( bind $?gen192 ( create$ pen221_3_max-overruled $?gen190 $?gen191 ) ) ) ?gen187 <- ( max_imprisonment ( negative-overruled $?gen192 ) )"))

([pen221_3_max-support] of derived-attribute-rule
   (pos-name pen221_3_max-support-gen221)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_3_max] ) ) ) ?gen186 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ?gen187 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen189 & : ( not ( subseq-pos ( create$ pen221_3_max ?gen186 $$$ $?gen189 ) ) ) ) ) ( test ( eq ( class ?gen187 ) max_imprisonment ) ) => ( calc ( bind $?gen192 ( create$ pen221_3_max ?gen186 $?gen189 ) ) ) ?gen187 <- ( max_imprisonment ( positive-support $?gen192 ) )"))

([pen221_3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_3_min-defeasibly-dot-gen223)
   (depends-on declare min_imprisonment is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_3_min] ) ) ) ?gen178 <- ( min_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pen221_3_min $? ) ) ( test ( eq ( class ?gen178 ) min_imprisonment ) ) ( not ( and ?gen185 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ pen221_3_min $?gen180 ) ) ) ) ) ) => ?gen178 <- ( min_imprisonment ( positive 0 ) )"))

([pen221_3_min-defeasibly] of derived-attribute-rule
   (pos-name pen221_3_min-defeasibly-gen225)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_3_min] ) ) ) ?gen185 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( min_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ pen221_3_min $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) min_imprisonment ) ) => ?gen178 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen221_3_min ?gen185 ) )"))

([pen221_3_min-overruled-dot] of derived-attribute-rule
   (pos-name pen221_3_min-overruled-dot-gen227)
   (depends-on declare min_imprisonment is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_3_min] ) ) ) ?gen178 <- ( min_imprisonment ( value 6 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( subseq-pos ( create$ pen221_3_min-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) min_imprisonment ) ) ( not ( and ?gen185 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( min_imprisonment ( positive-defeated $?gen180 & : ( not ( member$ pen221_3_min $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ pen221_3_min-overruled $?gen181 ) ) ) ) ?gen178 <- ( min_imprisonment ( negative-overruled $?gen183 ) )"))

([pen221_3_min-overruled] of derived-attribute-rule
   (pos-name pen221_3_min-overruled-gen229)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_3_min] ) ) ) ?gen185 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( min_imprisonment ( value 6 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( not ( subseq-pos ( create$ pen221_3_min-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( positive-defeated $?gen180 & : ( not ( member$ pen221_3_min $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) min_imprisonment ) ) => ( calc ( bind $?gen183 ( create$ pen221_3_min-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( min_imprisonment ( negative-overruled $?gen183 ) )"))

([pen221_3_min-support] of derived-attribute-rule
   (pos-name pen221_3_min-support-gen231)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_3_min] ) ) ) ?gen177 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ?gen178 <- ( min_imprisonment ( value 6 ) ( positive-support $?gen180 & : ( not ( subseq-pos ( create$ pen221_3_min ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) min_imprisonment ) ) => ( calc ( bind $?gen183 ( create$ pen221_3_min ?gen177 $?gen180 ) ) ) ?gen178 <- ( min_imprisonment ( positive-support $?gen183 ) )"))

([pen221_1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_1-defeasibly-dot-gen233)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_1] ) ) ) ?gen169 <- ( max_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen221_1 $? ) ) ( test ( eq ( class ?gen169 ) max_imprisonment ) ) ( not ( and ?gen176 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ pen221_1 $?gen171 ) ) ) ) ) ) => ?gen169 <- ( max_imprisonment ( positive 0 ) )"))

([pen221_1-defeasibly] of derived-attribute-rule
   (pos-name pen221_1-defeasibly-gen235)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_1] ) ) ) ?gen176 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( max_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ pen221_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) max_imprisonment ) ) => ?gen169 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen221_1 ?gen176 ) )"))

([pen221_1-overruled-dot] of derived-attribute-rule
   (pos-name pen221_1-overruled-dot-gen237)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_1] ) ) ) ?gen169 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( subseq-pos ( create$ pen221_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) max_imprisonment ) ) ( not ( and ?gen176 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( max_imprisonment ( positive-defeated $?gen171 & : ( not ( member$ pen221_1 $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ pen221_1-overruled $?gen172 ) ) ) ) ?gen169 <- ( max_imprisonment ( negative-overruled $?gen174 ) )"))

([pen221_1-overruled] of derived-attribute-rule
   (pos-name pen221_1-overruled-gen239)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_1] ) ) ) ?gen176 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( not ( subseq-pos ( create$ pen221_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( positive-defeated $?gen171 & : ( not ( member$ pen221_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) max_imprisonment ) ) => ( calc ( bind $?gen174 ( create$ pen221_1-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( max_imprisonment ( negative-overruled $?gen174 ) )"))

([pen221_1-support] of derived-attribute-rule
   (pos-name pen221_1-support-gen241)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_1] ) ) ) ?gen168 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen169 <- ( max_imprisonment ( value 2 ) ( positive-support $?gen171 & : ( not ( subseq-pos ( create$ pen221_1 ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) max_imprisonment ) ) => ( calc ( bind $?gen174 ( create$ pen221_1 ?gen168 $?gen171 ) ) ) ?gen169 <- ( max_imprisonment ( positive-support $?gen174 ) )"))

([pen220_5-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_5-defeasibly-dot-gen243)
   (depends-on declare max_imprisonment is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_5] ) ) ) ?gen160 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen220_5 $? ) ) ( test ( eq ( class ?gen160 ) max_imprisonment ) ) ( not ( and ?gen167 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ pen220_5 $?gen162 ) ) ) ) ) ) => ?gen160 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_5-defeasibly] of derived-attribute-rule
   (pos-name pen220_5-defeasibly-gen245)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_5] ) ) ) ?gen167 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ pen220_5 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) max_imprisonment ) ) => ?gen160 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_5 ?gen167 ) )"))

([pen220_5-overruled-dot] of derived-attribute-rule
   (pos-name pen220_5-overruled-dot-gen247)
   (depends-on declare max_imprisonment is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_5] ) ) ) ?gen160 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( subseq-pos ( create$ pen220_5-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) max_imprisonment ) ) ( not ( and ?gen167 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( max_imprisonment ( positive-defeated $?gen162 & : ( not ( member$ pen220_5 $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ pen220_5-overruled $?gen163 ) ) ) ) ?gen160 <- ( max_imprisonment ( negative-overruled $?gen165 ) )"))

([pen220_5-overruled] of derived-attribute-rule
   (pos-name pen220_5-overruled-gen249)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_5] ) ) ) ?gen167 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( not ( subseq-pos ( create$ pen220_5-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( positive-defeated $?gen162 & : ( not ( member$ pen220_5 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) max_imprisonment ) ) => ( calc ( bind $?gen165 ( create$ pen220_5-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( max_imprisonment ( negative-overruled $?gen165 ) )"))

([pen220_5-support] of derived-attribute-rule
   (pos-name pen220_5-support-gen251)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_5] ) ) ) ?gen159 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ?gen160 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen162 & : ( not ( subseq-pos ( create$ pen220_5 ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) max_imprisonment ) ) => ( calc ( bind $?gen165 ( create$ pen220_5 ?gen159 $?gen162 ) ) ) ?gen160 <- ( max_imprisonment ( positive-support $?gen165 ) )"))

([pen220_4_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_4_max-defeasibly-dot-gen253)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_4_max] ) ) ) ?gen151 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pen220_4_max $? ) ) ( test ( eq ( class ?gen151 ) max_imprisonment ) ) ( not ( and ?gen158 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ pen220_4_max $?gen153 ) ) ) ) ) ) => ?gen151 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_4_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_4_max-defeasibly-gen255)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_4_max] ) ) ) ?gen158 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ pen220_4_max $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) max_imprisonment ) ) => ?gen151 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_4_max ?gen158 ) )"))

([pen220_4_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_4_max-overruled-dot-gen257)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_4_max] ) ) ) ?gen151 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( subseq-pos ( create$ pen220_4_max-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( test ( eq ( class ?gen151 ) max_imprisonment ) ) ( not ( and ?gen158 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( max_imprisonment ( positive-defeated $?gen153 & : ( not ( member$ pen220_4_max $?gen153 ) ) ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen155 ( create$ pen220_4_max-overruled $?gen154 ) ) ) ) ?gen151 <- ( max_imprisonment ( negative-overruled $?gen156 ) )"))

([pen220_4_max-overruled] of derived-attribute-rule
   (pos-name pen220_4_max-overruled-gen259)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_4_max] ) ) ) ?gen158 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( not ( subseq-pos ( create$ pen220_4_max-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( positive-defeated $?gen153 & : ( not ( member$ pen220_4_max $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) max_imprisonment ) ) => ( calc ( bind $?gen156 ( create$ pen220_4_max-overruled $?gen154 $?gen155 ) ) ) ?gen151 <- ( max_imprisonment ( negative-overruled $?gen156 ) )"))

([pen220_4_max-support] of derived-attribute-rule
   (pos-name pen220_4_max-support-gen261)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_4_max] ) ) ) ?gen150 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen151 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen153 & : ( not ( subseq-pos ( create$ pen220_4_max ?gen150 $$$ $?gen153 ) ) ) ) ) ( test ( eq ( class ?gen151 ) max_imprisonment ) ) => ( calc ( bind $?gen156 ( create$ pen220_4_max ?gen150 $?gen153 ) ) ) ?gen151 <- ( max_imprisonment ( positive-support $?gen156 ) )"))

([pen220_4_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_4_min-defeasibly-dot-gen263)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_4_min] ) ) ) ?gen142 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_4_min $? ) ) ( test ( eq ( class ?gen142 ) min_imprisonment ) ) ( not ( and ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen144 & : ( not ( member$ pen220_4_min $?gen144 ) ) ) ) ) ) => ?gen142 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_4_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_4_min-defeasibly-gen265)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_4_min] ) ) ) ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen144 & : ( not ( member$ pen220_4_min $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) min_imprisonment ) ) => ?gen142 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_4_min ?gen149 ) )"))

([pen220_4_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_4_min-overruled-dot-gen267)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_4_min] ) ) ) ?gen142 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen145 ) ( negative-overruled $?gen146 & : ( subseq-pos ( create$ pen220_4_min-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen142 ) min_imprisonment ) ) ( not ( and ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( min_imprisonment ( positive-defeated $?gen144 & : ( not ( member$ pen220_4_min $?gen144 ) ) ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen146 ( create$ pen220_4_min-overruled $?gen145 ) ) ) ) ?gen142 <- ( min_imprisonment ( negative-overruled $?gen147 ) )"))

([pen220_4_min-overruled] of derived-attribute-rule
   (pos-name pen220_4_min-overruled-gen269)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_4_min] ) ) ) ?gen149 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen145 ) ( negative-overruled $?gen146 & : ( not ( subseq-pos ( create$ pen220_4_min-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( positive-defeated $?gen144 & : ( not ( member$ pen220_4_min $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) min_imprisonment ) ) => ( calc ( bind $?gen147 ( create$ pen220_4_min-overruled $?gen145 $?gen146 ) ) ) ?gen142 <- ( min_imprisonment ( negative-overruled $?gen147 ) )"))

([pen220_4_min-support] of derived-attribute-rule
   (pos-name pen220_4_min-support-gen271)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_4_min] ) ) ) ?gen141 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen142 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen144 & : ( not ( subseq-pos ( create$ pen220_4_min ?gen141 $$$ $?gen144 ) ) ) ) ) ( test ( eq ( class ?gen142 ) min_imprisonment ) ) => ( calc ( bind $?gen147 ( create$ pen220_4_min ?gen141 $?gen144 ) ) ) ?gen142 <- ( min_imprisonment ( positive-support $?gen147 ) )"))

([pen220_3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_3_max-defeasibly-dot-gen273)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_3_max] ) ) ) ?gen133 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen220_3_max $? ) ) ( test ( eq ( class ?gen133 ) max_imprisonment ) ) ( not ( and ?gen140 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ pen220_3_max $?gen135 ) ) ) ) ) ) => ?gen133 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_3_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_3_max-defeasibly-gen275)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_3_max] ) ) ) ?gen140 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ pen220_3_max $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) max_imprisonment ) ) => ?gen133 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_3_max ?gen140 ) )"))

([pen220_3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_3_max-overruled-dot-gen277)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_3_max] ) ) ) ?gen133 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( subseq-pos ( create$ pen220_3_max-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) max_imprisonment ) ) ( not ( and ?gen140 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( max_imprisonment ( positive-defeated $?gen135 & : ( not ( member$ pen220_3_max $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ pen220_3_max-overruled $?gen136 ) ) ) ) ?gen133 <- ( max_imprisonment ( negative-overruled $?gen138 ) )"))

([pen220_3_max-overruled] of derived-attribute-rule
   (pos-name pen220_3_max-overruled-gen279)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_3_max] ) ) ) ?gen140 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( not ( subseq-pos ( create$ pen220_3_max-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( positive-defeated $?gen135 & : ( not ( member$ pen220_3_max $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) max_imprisonment ) ) => ( calc ( bind $?gen138 ( create$ pen220_3_max-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( max_imprisonment ( negative-overruled $?gen138 ) )"))

([pen220_3_max-support] of derived-attribute-rule
   (pos-name pen220_3_max-support-gen281)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_3_max] ) ) ) ?gen132 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen133 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen135 & : ( not ( subseq-pos ( create$ pen220_3_max ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) max_imprisonment ) ) => ( calc ( bind $?gen138 ( create$ pen220_3_max ?gen132 $?gen135 ) ) ) ?gen133 <- ( max_imprisonment ( positive-support $?gen138 ) )"))

([pen220_3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_3_min-defeasibly-dot-gen283)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_3_min] ) ) ) ?gen124 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen220_3_min $? ) ) ( test ( eq ( class ?gen124 ) min_imprisonment ) ) ( not ( and ?gen131 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen126 & : ( not ( member$ pen220_3_min $?gen126 ) ) ) ) ) ) => ?gen124 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_3_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_3_min-defeasibly-gen285)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_3_min] ) ) ) ?gen131 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen126 & : ( not ( member$ pen220_3_min $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) min_imprisonment ) ) => ?gen124 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_3_min ?gen131 ) )"))

([pen220_3_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_3_min-overruled-dot-gen287)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_3_min] ) ) ) ?gen124 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen127 ) ( negative-overruled $?gen128 & : ( subseq-pos ( create$ pen220_3_min-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen124 ) min_imprisonment ) ) ( not ( and ?gen131 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( min_imprisonment ( positive-defeated $?gen126 & : ( not ( member$ pen220_3_min $?gen126 ) ) ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen128 ( create$ pen220_3_min-overruled $?gen127 ) ) ) ) ?gen124 <- ( min_imprisonment ( negative-overruled $?gen129 ) )"))

([pen220_3_min-overruled] of derived-attribute-rule
   (pos-name pen220_3_min-overruled-gen289)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_3_min] ) ) ) ?gen131 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen127 ) ( negative-overruled $?gen128 & : ( not ( subseq-pos ( create$ pen220_3_min-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( positive-defeated $?gen126 & : ( not ( member$ pen220_3_min $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) min_imprisonment ) ) => ( calc ( bind $?gen129 ( create$ pen220_3_min-overruled $?gen127 $?gen128 ) ) ) ?gen124 <- ( min_imprisonment ( negative-overruled $?gen129 ) )"))

([pen220_3_min-support] of derived-attribute-rule
   (pos-name pen220_3_min-support-gen291)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_3_min] ) ) ) ?gen123 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen124 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen126 & : ( not ( subseq-pos ( create$ pen220_3_min ?gen123 $$$ $?gen126 ) ) ) ) ) ( test ( eq ( class ?gen124 ) min_imprisonment ) ) => ( calc ( bind $?gen129 ( create$ pen220_3_min ?gen123 $?gen126 ) ) ) ?gen124 <- ( min_imprisonment ( positive-support $?gen129 ) )"))

([pen220_2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-dot-gen293)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_max] ) ) ) ?gen115 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_max $? ) ) ( test ( eq ( class ?gen115 ) max_imprisonment ) ) ( not ( and ?gen122 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ pen220_2_max $?gen117 ) ) ) ) ) ) => ?gen115 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_2_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-gen295)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_max] ) ) ) ?gen122 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ pen220_2_max $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) max_imprisonment ) ) => ?gen115 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_2_max ?gen122 ) )"))

([pen220_2_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-dot-gen297)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_max] ) ) ) ?gen115 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( subseq-pos ( create$ pen220_2_max-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( test ( eq ( class ?gen115 ) max_imprisonment ) ) ( not ( and ?gen122 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( max_imprisonment ( positive-defeated $?gen117 & : ( not ( member$ pen220_2_max $?gen117 ) ) ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen119 ( create$ pen220_2_max-overruled $?gen118 ) ) ) ) ?gen115 <- ( max_imprisonment ( negative-overruled $?gen120 ) )"))

([pen220_2_max-overruled] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-gen299)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_max] ) ) ) ?gen122 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( not ( subseq-pos ( create$ pen220_2_max-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( positive-defeated $?gen117 & : ( not ( member$ pen220_2_max $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) max_imprisonment ) ) => ( calc ( bind $?gen120 ( create$ pen220_2_max-overruled $?gen118 $?gen119 ) ) ) ?gen115 <- ( max_imprisonment ( negative-overruled $?gen120 ) )"))

([pen220_2_max-support] of derived-attribute-rule
   (pos-name pen220_2_max-support-gen301)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_max] ) ) ) ?gen114 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen115 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen117 & : ( not ( subseq-pos ( create$ pen220_2_max ?gen114 $$$ $?gen117 ) ) ) ) ) ( test ( eq ( class ?gen115 ) max_imprisonment ) ) => ( calc ( bind $?gen120 ( create$ pen220_2_max ?gen114 $?gen117 ) ) ) ?gen115 <- ( max_imprisonment ( positive-support $?gen120 ) )"))

([pen220_2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-dot-gen303)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_min] ) ) ) ?gen106 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_min $? ) ) ( test ( eq ( class ?gen106 ) min_imprisonment ) ) ( not ( and ?gen113 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen108 & : ( not ( member$ pen220_2_min $?gen108 ) ) ) ) ) ) => ?gen106 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_2_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-gen305)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_min] ) ) ) ?gen113 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen108 & : ( not ( member$ pen220_2_min $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) min_imprisonment ) ) => ?gen106 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_2_min ?gen113 ) )"))

([pen220_2_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-dot-gen307)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_min] ) ) ) ?gen106 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen109 ) ( negative-overruled $?gen110 & : ( subseq-pos ( create$ pen220_2_min-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( test ( eq ( class ?gen106 ) min_imprisonment ) ) ( not ( and ?gen113 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( min_imprisonment ( positive-defeated $?gen108 & : ( not ( member$ pen220_2_min $?gen108 ) ) ) ) ) ) => ( calc ( bind $?gen111 ( delete-member$ $?gen110 ( create$ pen220_2_min-overruled $?gen109 ) ) ) ) ?gen106 <- ( min_imprisonment ( negative-overruled $?gen111 ) )"))

([pen220_2_min-overruled] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-gen309)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_min] ) ) ) ?gen113 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen109 ) ( negative-overruled $?gen110 & : ( not ( subseq-pos ( create$ pen220_2_min-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( positive-defeated $?gen108 & : ( not ( member$ pen220_2_min $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) min_imprisonment ) ) => ( calc ( bind $?gen111 ( create$ pen220_2_min-overruled $?gen109 $?gen110 ) ) ) ?gen106 <- ( min_imprisonment ( negative-overruled $?gen111 ) )"))

([pen220_2_min-support] of derived-attribute-rule
   (pos-name pen220_2_min-support-gen311)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_min] ) ) ) ?gen105 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen106 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen108 & : ( not ( subseq-pos ( create$ pen220_2_min ?gen105 $$$ $?gen108 ) ) ) ) ) ( test ( eq ( class ?gen106 ) min_imprisonment ) ) => ( calc ( bind $?gen111 ( create$ pen220_2_min ?gen105 $?gen108 ) ) ) ?gen106 <- ( min_imprisonment ( positive-support $?gen111 ) )"))

([pen220_1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_1-defeasibly-dot-gen313)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_1] ) ) ) ?gen97 <- ( max_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen220_1 $? ) ) ( test ( eq ( class ?gen97 ) max_imprisonment ) ) ( not ( and ?gen104 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen99 & : ( not ( member$ pen220_1 $?gen99 ) ) ) ) ) ) => ?gen97 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_1-defeasibly] of derived-attribute-rule
   (pos-name pen220_1-defeasibly-gen315)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_1] ) ) ) ?gen104 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( max_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen99 & : ( not ( member$ pen220_1 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) max_imprisonment ) ) => ?gen97 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_1 ?gen104 ) )"))

([pen220_1-overruled-dot] of derived-attribute-rule
   (pos-name pen220_1-overruled-dot-gen317)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_1] ) ) ) ?gen97 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen100 ) ( negative-overruled $?gen101 & : ( subseq-pos ( create$ pen220_1-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen97 ) max_imprisonment ) ) ( not ( and ?gen104 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( max_imprisonment ( positive-defeated $?gen99 & : ( not ( member$ pen220_1 $?gen99 ) ) ) ) ) ) => ( calc ( bind $?gen102 ( delete-member$ $?gen101 ( create$ pen220_1-overruled $?gen100 ) ) ) ) ?gen97 <- ( max_imprisonment ( negative-overruled $?gen102 ) )"))

([pen220_1-overruled] of derived-attribute-rule
   (pos-name pen220_1-overruled-gen319)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_1] ) ) ) ?gen104 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen100 ) ( negative-overruled $?gen101 & : ( not ( subseq-pos ( create$ pen220_1-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( positive-defeated $?gen99 & : ( not ( member$ pen220_1 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) max_imprisonment ) ) => ( calc ( bind $?gen102 ( create$ pen220_1-overruled $?gen100 $?gen101 ) ) ) ?gen97 <- ( max_imprisonment ( negative-overruled $?gen102 ) )"))

([pen220_1-support] of derived-attribute-rule
   (pos-name pen220_1-support-gen321)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_1] ) ) ) ?gen96 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen97 <- ( max_imprisonment ( value 2 ) ( positive-support $?gen99 & : ( not ( subseq-pos ( create$ pen220_1 ?gen96 $$$ $?gen99 ) ) ) ) ) ( test ( eq ( class ?gen97 ) max_imprisonment ) ) => ( calc ( bind $?gen102 ( create$ pen220_1 ?gen96 $?gen99 ) ) ) ?gen97 <- ( max_imprisonment ( positive-support $?gen102 ) )"))

([rule221_3-defeated-dot] of derived-attribute-rule
   (pos-name rule221_3-defeated-dot-gen323)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1 lc:case)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule221_3] ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen89 & : ( subseq-pos ( create$ rule221_3-defeated rule221_1 $$$ $?gen89 ) ) ) ) ( test ( eq ( class ?gen86 ) is_guilty_of_nonpayment_of_support_lv2 ) ) ( not ( and ?gen93 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ) ) => ( calc ( bind $?gen88 ( delete-member$ $?gen89 ( create$ rule221_3-defeated rule221_1 ) ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-defeated $?gen88 ) )"))

([rule221_3-defeated] of derived-attribute-rule
   (pos-name rule221_3-defeated-gen325)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule221_3] ) ) ) ?gen93 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen89 & : ( not ( subseq-pos ( create$ rule221_3-defeated rule221_1 $$$ $?gen89 ) ) ) ) ) ( test ( eq ( class ?gen86 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ( calc ( bind $?gen88 ( create$ rule221_3-defeated rule221_1 $?gen89 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-defeated $?gen88 ) )"))

([rule221_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_3-defeasibly-dot-gen327)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_3] ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule221_3 $? ) ) ( test ( eq ( class ?gen86 ) is_guilty_of_nonpayment_of_support_lv2 ) ) ( not ( and ?gen93 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule221_3 $?gen88 ) ) ) ) ) ) => ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive 0 ) )"))

([rule221_3-defeasibly] of derived-attribute-rule
   (pos-name rule221_3-defeasibly-gen329)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_3] ) ) ) ?gen93 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule221_3 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive 1 ) ( positive-derivator rule221_3 ?gen93 ?gen95 ) )"))

([rule221_3-overruled-dot] of derived-attribute-rule
   (pos-name rule221_3-overruled-dot-gen331)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_3] ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( subseq-pos ( create$ rule221_3-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( test ( eq ( class ?gen86 ) is_guilty_of_nonpayment_of_support_lv2 ) ) ( not ( and ?gen93 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive-defeated $?gen88 & : ( not ( member$ rule221_3 $?gen88 ) ) ) ) ) ) => ( calc ( bind $?gen91 ( delete-member$ $?gen90 ( create$ rule221_3-overruled $?gen89 ) ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-overruled $?gen91 ) )"))

([rule221_3-overruled] of derived-attribute-rule
   (pos-name rule221_3-overruled-gen333)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_3] ) ) ) ?gen93 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( not ( subseq-pos ( create$ rule221_3-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( positive-defeated $?gen88 & : ( not ( member$ rule221_3 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ( calc ( bind $?gen91 ( create$ rule221_3-overruled $?gen89 $?gen90 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-overruled $?gen91 ) )"))

([rule221_3-support] of derived-attribute-rule
   (pos-name rule221_3-support-gen335)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_3] ) ) ) ?gen84 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive-support $?gen88 & : ( not ( subseq-pos ( create$ rule221_3 ?gen84 ?gen85 $$$ $?gen88 ) ) ) ) ) ( test ( eq ( class ?gen86 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ( calc ( bind $?gen91 ( create$ rule221_3 ?gen84 ?gen85 $?gen88 ) ) ) ?gen86 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive-support $?gen91 ) )"))

([rule221_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_1-defeasibly-dot-gen337)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_1] ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule221_1 $? ) ) ( test ( eq ( class ?gen72 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative ~ 2 ) ( positive-overruled $?gen74 & : ( not ( member$ rule221_1 $?gen74 ) ) ) ) ) ) => ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive 0 ) )"))

([rule221_1-defeasibly] of derived-attribute-rule
   (pos-name rule221_1-defeasibly-gen339)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_1] ) ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen74 & : ( not ( member$ rule221_1 $?gen74 ) ) ) ) ( test ( eq ( class ?gen72 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive 1 ) ( positive-derivator rule221_1 ?gen79 ?gen81 ?gen83 ) )"))

([rule221_1-overruled-dot] of derived-attribute-rule
   (pos-name rule221_1-overruled-dot-gen341)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_1] ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen75 ) ( negative-overruled $?gen76 & : ( subseq-pos ( create$ rule221_1-overruled $?gen75 $$$ $?gen76 ) ) ) ) ( test ( eq ( class ?gen72 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-defeated $?gen74 & : ( not ( member$ rule221_1 $?gen74 ) ) ) ) ) ) => ( calc ( bind $?gen77 ( delete-member$ $?gen76 ( create$ rule221_1-overruled $?gen75 ) ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-overruled $?gen77 ) )"))

([rule221_1-overruled] of derived-attribute-rule
   (pos-name rule221_1-overruled-gen343)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_1] ) ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen75 ) ( negative-overruled $?gen76 & : ( not ( subseq-pos ( create$ rule221_1-overruled $?gen75 $$$ $?gen76 ) ) ) ) ( positive-defeated $?gen74 & : ( not ( member$ rule221_1 $?gen74 ) ) ) ) ( test ( eq ( class ?gen72 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen77 ( create$ rule221_1-overruled $?gen75 $?gen76 ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-overruled $?gen77 ) )"))

([rule221_1-support] of derived-attribute-rule
   (pos-name rule221_1-support-gen345)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_1] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-support $?gen74 & : ( not ( subseq-pos ( create$ rule221_1 ?gen69 ?gen70 ?gen71 $$$ $?gen74 ) ) ) ) ) ( test ( eq ( class ?gen72 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen77 ( create$ rule221_1 ?gen69 ?gen70 ?gen71 $?gen74 ) ) ) ?gen72 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-support $?gen77 ) )"))

([rule220_5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_5-defeasibly-dot-gen347)
   (depends-on declare is_guilty_of_violating_measures lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_5] ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_5 $? ) ) ( test ( eq ( class ?gen61 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ rule220_5 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( is_guilty_of_violating_measures ( positive 0 ) )"))

([rule220_5-defeasibly] of derived-attribute-rule
   (pos-name rule220_5-defeasibly-gen349)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_5] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ rule220_5 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) is_guilty_of_violating_measures ) ) => ?gen61 <- ( is_guilty_of_violating_measures ( positive 1 ) ( positive-derivator rule220_5 ?gen68 ) )"))

([rule220_5-overruled-dot] of derived-attribute-rule
   (pos-name rule220_5-overruled-dot-gen351)
   (depends-on declare is_guilty_of_violating_measures lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_5] ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( subseq-pos ( create$ rule220_5-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen63 & : ( not ( member$ rule220_5 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ rule220_5-overruled $?gen64 ) ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( negative-overruled $?gen66 ) )"))

([rule220_5-overruled] of derived-attribute-rule
   (pos-name rule220_5-overruled-gen353)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_5] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( not ( subseq-pos ( create$ rule220_5-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( positive-defeated $?gen63 & : ( not ( member$ rule220_5 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen66 ( create$ rule220_5-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( negative-overruled $?gen66 ) )"))

([rule220_5-support] of derived-attribute-rule
   (pos-name rule220_5-support-gen355)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_5] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen61 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen63 & : ( not ( subseq-pos ( create$ rule220_5 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen66 ( create$ rule220_5 ?gen60 $?gen63 ) ) ) ?gen61 <- ( is_guilty_of_violating_measures ( positive-support $?gen66 ) )"))

([rule220_4-defeated-dot] of derived-attribute-rule
   (pos-name rule220_4-defeated-dot-gen357)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1 lc:case)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_4] ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-defeated $?gen53 & : ( subseq-pos ( create$ rule220_4-defeated rule220_3 $$$ $?gen53 ) ) ) ) ( test ( eq ( class ?gen50 ) is_guilty_of_family_violence_lv4 ) ) ( not ( and ?gen57 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ) ) => ( calc ( bind $?gen52 ( delete-member$ $?gen53 ( create$ rule220_4-defeated rule220_3 ) ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( negative-defeated $?gen52 ) )"))

([rule220_4-defeated] of derived-attribute-rule
   (pos-name rule220_4-defeated-gen359)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_4] ) ) ) ?gen57 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-defeated $?gen53 & : ( not ( subseq-pos ( create$ rule220_4-defeated rule220_3 $$$ $?gen53 ) ) ) ) ) ( test ( eq ( class ?gen50 ) is_guilty_of_family_violence_lv4 ) ) => ( calc ( bind $?gen52 ( create$ rule220_4-defeated rule220_3 $?gen53 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( negative-defeated $?gen52 ) )"))

([rule220_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_4-defeasibly-dot-gen361)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_4] ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_4 $? ) ) ( test ( eq ( class ?gen50 ) is_guilty_of_family_violence_lv4 ) ) ( not ( and ?gen57 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule220_4 $?gen52 ) ) ) ) ) ) => ?gen50 <- ( is_guilty_of_family_violence_lv4 ( positive 0 ) )"))

([rule220_4-defeasibly] of derived-attribute-rule
   (pos-name rule220_4-defeasibly-gen363)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_4] ) ) ) ?gen57 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule220_4 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) is_guilty_of_family_violence_lv4 ) ) => ?gen50 <- ( is_guilty_of_family_violence_lv4 ( positive 1 ) ( positive-derivator rule220_4 ?gen57 ?gen59 ) )"))

([rule220_4-overruled-dot] of derived-attribute-rule
   (pos-name rule220_4-overruled-dot-gen365)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_4] ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( subseq-pos ( create$ rule220_4-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( test ( eq ( class ?gen50 ) is_guilty_of_family_violence_lv4 ) ) ( not ( and ?gen57 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( positive-defeated $?gen52 & : ( not ( member$ rule220_4 $?gen52 ) ) ) ) ) ) => ( calc ( bind $?gen55 ( delete-member$ $?gen54 ( create$ rule220_4-overruled $?gen53 ) ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( negative-overruled $?gen55 ) )"))

([rule220_4-overruled] of derived-attribute-rule
   (pos-name rule220_4-overruled-gen367)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_4] ) ) ) ?gen57 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( not ( subseq-pos ( create$ rule220_4-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( positive-defeated $?gen52 & : ( not ( member$ rule220_4 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) is_guilty_of_family_violence_lv4 ) ) => ( calc ( bind $?gen55 ( create$ rule220_4-overruled $?gen53 $?gen54 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( negative-overruled $?gen55 ) )"))

([rule220_4-support] of derived-attribute-rule
   (pos-name rule220_4-support-gen369)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_4] ) ) ) ?gen48 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive-support $?gen52 & : ( not ( subseq-pos ( create$ rule220_4 ?gen48 ?gen49 $$$ $?gen52 ) ) ) ) ) ( test ( eq ( class ?gen50 ) is_guilty_of_family_violence_lv4 ) ) => ( calc ( bind $?gen55 ( create$ rule220_4 ?gen48 ?gen49 $?gen52 ) ) ) ?gen50 <- ( is_guilty_of_family_violence_lv4 ( positive-support $?gen55 ) )"))

([rule220_3-defeated-dot] of derived-attribute-rule
   (pos-name rule220_3-defeated-dot-gen371)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_3] ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-defeated $?gen43 & : ( subseq-pos ( create$ rule220_3-defeated rule220_2 $$$ $?gen43 ) ) ) ) ( test ( eq ( class ?gen40 ) is_guilty_of_family_violence_lv3 ) ) ( not ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ) => ( calc ( bind $?gen42 ( delete-member$ $?gen43 ( create$ rule220_3-defeated rule220_2 ) ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( negative-defeated $?gen42 ) )"))

([rule220_3-defeated] of derived-attribute-rule
   (pos-name rule220_3-defeated-gen373)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_3] ) ) ) ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-defeated $?gen43 & : ( not ( subseq-pos ( create$ rule220_3-defeated rule220_2 $$$ $?gen43 ) ) ) ) ) ( test ( eq ( class ?gen40 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen42 ( create$ rule220_3-defeated rule220_2 $?gen43 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( negative-defeated $?gen42 ) )"))

([rule220_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_3-defeasibly-dot-gen375)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_3] ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_3 $? ) ) ( test ( eq ( class ?gen40 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule220_3 $?gen42 ) ) ) ) ) ) => ?gen40 <- ( is_guilty_of_family_violence_lv3 ( positive 0 ) )"))

([rule220_3-defeasibly] of derived-attribute-rule
   (pos-name rule220_3-defeasibly-gen377)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_3] ) ) ) ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule220_3 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) is_guilty_of_family_violence_lv3 ) ) => ?gen40 <- ( is_guilty_of_family_violence_lv3 ( positive 1 ) ( positive-derivator rule220_3 ?gen47 ) )"))

([rule220_3-overruled-dot] of derived-attribute-rule
   (pos-name rule220_3-overruled-dot-gen379)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_3] ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( subseq-pos ( create$ rule220_3-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( test ( eq ( class ?gen40 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( positive-defeated $?gen42 & : ( not ( member$ rule220_3 $?gen42 ) ) ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen44 ( create$ rule220_3-overruled $?gen43 ) ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen45 ) )"))

([rule220_3-overruled] of derived-attribute-rule
   (pos-name rule220_3-overruled-gen381)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_3] ) ) ) ?gen47 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( not ( subseq-pos ( create$ rule220_3-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( positive-defeated $?gen42 & : ( not ( member$ rule220_3 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen45 ( create$ rule220_3-overruled $?gen43 $?gen44 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen45 ) )"))

([rule220_3-support] of derived-attribute-rule
   (pos-name rule220_3-support-gen383)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_3] ) ) ) ?gen39 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-support $?gen42 & : ( not ( subseq-pos ( create$ rule220_3 ?gen39 $$$ $?gen42 ) ) ) ) ) ( test ( eq ( class ?gen40 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen45 ( create$ rule220_3 ?gen39 $?gen42 ) ) ) ?gen40 <- ( is_guilty_of_family_violence_lv3 ( positive-support $?gen45 ) )"))

([rule220_2-defeated-dot] of derived-attribute-rule
   (pos-name rule220_2-defeated-dot-gen385)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_2] ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen32 & : ( subseq-pos ( create$ rule220_2-defeated rule220_1 $$$ $?gen32 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ) ) => ( calc ( bind $?gen31 ( delete-member$ $?gen32 ( create$ rule220_2-defeated rule220_1 ) ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-defeated $?gen31 ) )"))

([rule220_2-defeated] of derived-attribute-rule
   (pos-name rule220_2-defeated-gen387)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_2] ) ) ) ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-defeated $?gen32 & : ( not ( subseq-pos ( create$ rule220_2-defeated rule220_1 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen31 ( create$ rule220_2-defeated rule220_1 $?gen32 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-defeated $?gen31 ) )"))

([rule220_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-dot-gen389)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_2] ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_2 $? ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ) ) => ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive 0 ) )"))

([rule220_2-defeasibly] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-gen391)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_2] ) ) ) ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive 1 ) ( positive-derivator rule220_2 ?gen36 ?gen38 ) )"))

([rule220_2-overruled-dot] of derived-attribute-rule
   (pos-name rule220_2-overruled-dot-gen393)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_2] ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( subseq-pos ( create$ rule220_2-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ) ) => ( calc ( bind $?gen34 ( delete-member$ $?gen33 ( create$ rule220_2-overruled $?gen32 ) ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen34 ) )"))

([rule220_2-overruled] of derived-attribute-rule
   (pos-name rule220_2-overruled-gen395)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_2] ) ) ) ?gen36 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( not ( subseq-pos ( create$ rule220_2-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( positive-defeated $?gen31 & : ( not ( member$ rule220_2 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen34 ( create$ rule220_2-overruled $?gen32 $?gen33 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen34 ) )"))

([rule220_2-support] of derived-attribute-rule
   (pos-name rule220_2-support-gen397)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_2] ) ) ) ?gen27 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen31 & : ( not ( subseq-pos ( create$ rule220_2 ?gen27 ?gen28 $$$ $?gen31 ) ) ) ) ) ( test ( eq ( class ?gen29 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen34 ( create$ rule220_2 ?gen27 ?gen28 $?gen31 ) ) ) ?gen29 <- ( is_guilty_of_family_violence_lv2 ( positive-support $?gen34 ) )"))

([rule220_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-dot-gen399)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_1 $? ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 0 ) )"))

([rule220_1-defeasibly] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-gen401)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 1 ) ( positive-derivator rule220_1 ?gen24 ?gen26 ) )"))

([rule220_1-overruled-dot] of derived-attribute-rule
   (pos-name rule220_1-overruled-dot-gen403)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule220_1-overruled $?gen20 ) ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-overruled] of derived-attribute-rule
   (pos-name rule220_1-overruled-gen405)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-support] of derived-attribute-rule
   (pos-name rule220_1-support-gen407)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule220_1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-support $?gen22 ) )"))

([pen221_3_max-deductive] of ntm-deductive-rule
   (pos-name pen221_3_max-deductive-gen212)
   (depends-on is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen186 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen221_3_max-deductive-gen212 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pen221_3_min-deductive] of ntm-deductive-rule
   (pos-name pen221_3_min-deductive-gen211)
   (depends-on is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen177 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 6 ) ) ) => ( min_imprisonment ( value 6 ) )")
   (production-rule "( defrule pen221_3_min-deductive-gen211 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 6 ) ) ) ( make-instance ?oid of min_imprisonment ( value 6 ) ) )")
   (derived-class min_imprisonment))

([pen221_1-deductive] of ntm-deductive-rule
   (pos-name pen221_1-deductive-gen210)
   (depends-on is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen168 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2 ) ) ) => ( max_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen221_1-deductive-gen210 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2 ) ) )")
   (derived-class max_imprisonment))

([pen220_5-deductive] of ntm-deductive-rule
   (pos-name pen220_5-deductive-gen209)
   (depends-on is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen159 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen220_5-deductive-gen209 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pen220_4_max-deductive] of ntm-deductive-rule
   (pos-name pen220_4_max-deductive-gen208)
   (depends-on is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen150 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pen220_4_max-deductive-gen208 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pen220_4_min-deductive] of ntm-deductive-rule
   (pos-name pen220_4_min-deductive-gen207)
   (depends-on is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen141 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_4_min-deductive-gen207 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pen220_3_max-deductive] of ntm-deductive-rule
   (pos-name pen220_3_max-deductive-gen206)
   (depends-on is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen132 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen220_3_max-deductive-gen206 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pen220_3_min-deductive] of ntm-deductive-rule
   (pos-name pen220_3_min-deductive-gen205)
   (depends-on is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen123 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen220_3_min-deductive-gen205 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pen220_2_max-deductive] of ntm-deductive-rule
   (pos-name pen220_2_max-deductive-gen204)
   (depends-on is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen114 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_max-deductive-gen204 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pen220_2_min-deductive] of ntm-deductive-rule
   (pos-name pen220_2_min-deductive-gen203)
   (depends-on is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen105 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_min-deductive-gen203 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pen220_1-deductive] of ntm-deductive-rule
   (pos-name pen220_1-deductive-gen202)
   (depends-on is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen96 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2 ) ) ) => ( max_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen220_1-deductive-gen202 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2 ) ) )")
   (derived-class max_imprisonment))

([rule221_3-deductive] of ntm-deductive-rule
   (pos-name rule221_3-deductive-gen201)
   (depends-on is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (deductive-rule "?gen84 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_3-deductive-gen201 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen84 ) ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ( object ( name ?gen85 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv2))

([rule221_1-deductive] of ntm-deductive-rule
   (pos-name rule221_1-deductive-gen200)
   (depends-on lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (deductive-rule "?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_1-deductive-gen200 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen70 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen71 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv1))

([rule220_5-deductive] of ntm-deductive-rule
   (pos-name rule220_5-deductive-gen199)
   (depends-on lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (deductive-rule "?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ) => ( is_guilty_of_violating_measures ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_5-deductive-gen199 ( declare ( salience ( calc-salience is_guilty_of_violating_measures ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_violating_measures ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_violating_measures))

([rule220_4-deductive] of ntm-deductive-rule
   (pos-name rule220_4-deductive-gen198)
   (depends-on is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (deductive-rule "?gen48 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_4-deductive-gen198 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv4 ) ) ) ( run-deductive-rules ) ( object ( name ?gen48 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( object ( name ?gen49 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv4 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv4 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv4))

([rule220_3-deductive] of ntm-deductive-rule
   (pos-name rule220_3-deductive-gen197)
   (depends-on is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (deductive-rule "?gen39 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_3-deductive-gen197 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen39 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv3))

([rule220_2-deductive] of ntm-deductive-rule
   (pos-name rule220_2-deductive-gen196)
   (depends-on is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (deductive-rule "?gen27 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_2-deductive-gen196 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv2))

([rule220_1-deductive] of ntm-deductive-rule
   (pos-name rule220_1-deductive-gen195)
   (depends-on lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_1-deductive-gen195 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

