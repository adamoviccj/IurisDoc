([pen221_3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_3_max-defeasibly-dot-gen239)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_3_max] ) ) ) ?gen211 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen221_3_max $? ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) ( not ( and ?gen218 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen221_3_max $?gen213 ) ) ) ) ) ) => ?gen211 <- ( max_imprisonment ( positive 0 ) )"))

([pen221_3_max-defeasibly] of derived-attribute-rule
   (pos-name pen221_3_max-defeasibly-gen241)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_3_max] ) ) ) ?gen218 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen221_3_max $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) => ?gen211 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen221_3_max ?gen218 ) )"))

([pen221_3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen221_3_max-overruled-dot-gen243)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_3_max] ) ) ) ?gen211 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( subseq-pos ( create$ pen221_3_max-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) ( not ( and ?gen218 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( positive-defeated $?gen213 & : ( not ( member$ pen221_3_max $?gen213 ) ) ) ) ) ) => ( calc ( bind $?gen216 ( delete-member$ $?gen215 ( create$ pen221_3_max-overruled $?gen214 ) ) ) ) ?gen211 <- ( max_imprisonment ( negative-overruled $?gen216 ) )"))

([pen221_3_max-overruled] of derived-attribute-rule
   (pos-name pen221_3_max-overruled-gen245)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_3_max] ) ) ) ?gen218 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( not ( subseq-pos ( create$ pen221_3_max-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( positive-defeated $?gen213 & : ( not ( member$ pen221_3_max $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) => ( calc ( bind $?gen216 ( create$ pen221_3_max-overruled $?gen214 $?gen215 ) ) ) ?gen211 <- ( max_imprisonment ( negative-overruled $?gen216 ) )"))

([pen221_3_max-support] of derived-attribute-rule
   (pos-name pen221_3_max-support-gen247)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_3_max] ) ) ) ?gen210 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ?gen211 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen213 & : ( not ( subseq-pos ( create$ pen221_3_max ?gen210 $$$ $?gen213 ) ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) => ( calc ( bind $?gen216 ( create$ pen221_3_max ?gen210 $?gen213 ) ) ) ?gen211 <- ( max_imprisonment ( positive-support $?gen216 ) )"))

([pen221_3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_3_min-defeasibly-dot-gen249)
   (depends-on declare min_imprisonment is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_3_min] ) ) ) ?gen202 <- ( min_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pen221_3_min $? ) ) ( test ( eq ( class ?gen202 ) min_imprisonment ) ) ( not ( and ?gen209 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ pen221_3_min $?gen204 ) ) ) ) ) ) => ?gen202 <- ( min_imprisonment ( positive 0 ) )"))

([pen221_3_min-defeasibly] of derived-attribute-rule
   (pos-name pen221_3_min-defeasibly-gen251)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_3_min] ) ) ) ?gen209 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( min_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ pen221_3_min $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) min_imprisonment ) ) => ?gen202 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen221_3_min ?gen209 ) )"))

([pen221_3_min-overruled-dot] of derived-attribute-rule
   (pos-name pen221_3_min-overruled-dot-gen253)
   (depends-on declare min_imprisonment is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_3_min] ) ) ) ?gen202 <- ( min_imprisonment ( value 6 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( subseq-pos ( create$ pen221_3_min-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( test ( eq ( class ?gen202 ) min_imprisonment ) ) ( not ( and ?gen209 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( min_imprisonment ( positive-defeated $?gen204 & : ( not ( member$ pen221_3_min $?gen204 ) ) ) ) ) ) => ( calc ( bind $?gen207 ( delete-member$ $?gen206 ( create$ pen221_3_min-overruled $?gen205 ) ) ) ) ?gen202 <- ( min_imprisonment ( negative-overruled $?gen207 ) )"))

([pen221_3_min-overruled] of derived-attribute-rule
   (pos-name pen221_3_min-overruled-gen255)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_3_min] ) ) ) ?gen209 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( min_imprisonment ( value 6 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( not ( subseq-pos ( create$ pen221_3_min-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( positive-defeated $?gen204 & : ( not ( member$ pen221_3_min $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) min_imprisonment ) ) => ( calc ( bind $?gen207 ( create$ pen221_3_min-overruled $?gen205 $?gen206 ) ) ) ?gen202 <- ( min_imprisonment ( negative-overruled $?gen207 ) )"))

([pen221_3_min-support] of derived-attribute-rule
   (pos-name pen221_3_min-support-gen257)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_3_min] ) ) ) ?gen201 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ?gen202 <- ( min_imprisonment ( value 6 ) ( positive-support $?gen204 & : ( not ( subseq-pos ( create$ pen221_3_min ?gen201 $$$ $?gen204 ) ) ) ) ) ( test ( eq ( class ?gen202 ) min_imprisonment ) ) => ( calc ( bind $?gen207 ( create$ pen221_3_min ?gen201 $?gen204 ) ) ) ?gen202 <- ( min_imprisonment ( positive-support $?gen207 ) )"))

([pen221_1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen221_1-defeasibly-dot-gen259)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen221_1] ) ) ) ?gen193 <- ( max_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen221_1 $? ) ) ( test ( eq ( class ?gen193 ) max_imprisonment ) ) ( not ( and ?gen200 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ pen221_1 $?gen195 ) ) ) ) ) ) => ?gen193 <- ( max_imprisonment ( positive 0 ) )"))

([pen221_1-defeasibly] of derived-attribute-rule
   (pos-name pen221_1-defeasibly-gen261)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen221_1] ) ) ) ?gen200 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( max_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ pen221_1 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) max_imprisonment ) ) => ?gen193 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen221_1 ?gen200 ) )"))

([pen221_1-overruled-dot] of derived-attribute-rule
   (pos-name pen221_1-overruled-dot-gen263)
   (depends-on declare max_imprisonment is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen221_1] ) ) ) ?gen193 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( subseq-pos ( create$ pen221_1-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( test ( eq ( class ?gen193 ) max_imprisonment ) ) ( not ( and ?gen200 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( max_imprisonment ( positive-defeated $?gen195 & : ( not ( member$ pen221_1 $?gen195 ) ) ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen197 ( create$ pen221_1-overruled $?gen196 ) ) ) ) ?gen193 <- ( max_imprisonment ( negative-overruled $?gen198 ) )"))

([pen221_1-overruled] of derived-attribute-rule
   (pos-name pen221_1-overruled-gen265)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen221_1] ) ) ) ?gen200 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( not ( subseq-pos ( create$ pen221_1-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( positive-defeated $?gen195 & : ( not ( member$ pen221_1 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) max_imprisonment ) ) => ( calc ( bind $?gen198 ( create$ pen221_1-overruled $?gen196 $?gen197 ) ) ) ?gen193 <- ( max_imprisonment ( negative-overruled $?gen198 ) )"))

([pen221_1-support] of derived-attribute-rule
   (pos-name pen221_1-support-gen267)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen221_1] ) ) ) ?gen192 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen193 <- ( max_imprisonment ( value 2 ) ( positive-support $?gen195 & : ( not ( subseq-pos ( create$ pen221_1 ?gen192 $$$ $?gen195 ) ) ) ) ) ( test ( eq ( class ?gen193 ) max_imprisonment ) ) => ( calc ( bind $?gen198 ( create$ pen221_1 ?gen192 $?gen195 ) ) ) ?gen193 <- ( max_imprisonment ( positive-support $?gen198 ) )"))

([pen220_5-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_5-defeasibly-dot-gen269)
   (depends-on declare max_imprisonment is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_5] ) ) ) ?gen184 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen220_5 $? ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) ( not ( and ?gen191 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ pen220_5 $?gen186 ) ) ) ) ) ) => ?gen184 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_5-defeasibly] of derived-attribute-rule
   (pos-name pen220_5-defeasibly-gen271)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_5] ) ) ) ?gen191 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ pen220_5 $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) => ?gen184 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_5 ?gen191 ) )"))

([pen220_5-overruled-dot] of derived-attribute-rule
   (pos-name pen220_5-overruled-dot-gen273)
   (depends-on declare max_imprisonment is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_5] ) ) ) ?gen184 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( subseq-pos ( create$ pen220_5-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) ( not ( and ?gen191 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( positive-defeated $?gen186 & : ( not ( member$ pen220_5 $?gen186 ) ) ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen188 ( create$ pen220_5-overruled $?gen187 ) ) ) ) ?gen184 <- ( max_imprisonment ( negative-overruled $?gen189 ) )"))

([pen220_5-overruled] of derived-attribute-rule
   (pos-name pen220_5-overruled-gen275)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_5] ) ) ) ?gen191 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( not ( subseq-pos ( create$ pen220_5-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( positive-defeated $?gen186 & : ( not ( member$ pen220_5 $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) => ( calc ( bind $?gen189 ( create$ pen220_5-overruled $?gen187 $?gen188 ) ) ) ?gen184 <- ( max_imprisonment ( negative-overruled $?gen189 ) )"))

([pen220_5-support] of derived-attribute-rule
   (pos-name pen220_5-support-gen277)
   (depends-on declare is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_5] ) ) ) ?gen183 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ?gen184 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen186 & : ( not ( subseq-pos ( create$ pen220_5 ?gen183 $$$ $?gen186 ) ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) => ( calc ( bind $?gen189 ( create$ pen220_5 ?gen183 $?gen186 ) ) ) ?gen184 <- ( max_imprisonment ( positive-support $?gen189 ) )"))

([pen220_4_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_4_max-defeasibly-dot-gen279)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_4_max] ) ) ) ?gen175 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pen220_4_max $? ) ) ( test ( eq ( class ?gen175 ) max_imprisonment ) ) ( not ( and ?gen182 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ pen220_4_max $?gen177 ) ) ) ) ) ) => ?gen175 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_4_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_4_max-defeasibly-gen281)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_4_max] ) ) ) ?gen182 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ pen220_4_max $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) max_imprisonment ) ) => ?gen175 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_4_max ?gen182 ) )"))

([pen220_4_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_4_max-overruled-dot-gen283)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_4_max] ) ) ) ?gen175 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( subseq-pos ( create$ pen220_4_max-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( test ( eq ( class ?gen175 ) max_imprisonment ) ) ( not ( and ?gen182 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( max_imprisonment ( positive-defeated $?gen177 & : ( not ( member$ pen220_4_max $?gen177 ) ) ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen179 ( create$ pen220_4_max-overruled $?gen178 ) ) ) ) ?gen175 <- ( max_imprisonment ( negative-overruled $?gen180 ) )"))

([pen220_4_max-overruled] of derived-attribute-rule
   (pos-name pen220_4_max-overruled-gen285)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_4_max] ) ) ) ?gen182 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( not ( subseq-pos ( create$ pen220_4_max-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( positive-defeated $?gen177 & : ( not ( member$ pen220_4_max $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) max_imprisonment ) ) => ( calc ( bind $?gen180 ( create$ pen220_4_max-overruled $?gen178 $?gen179 ) ) ) ?gen175 <- ( max_imprisonment ( negative-overruled $?gen180 ) )"))

([pen220_4_max-support] of derived-attribute-rule
   (pos-name pen220_4_max-support-gen287)
   (depends-on declare is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_4_max] ) ) ) ?gen174 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen175 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen177 & : ( not ( subseq-pos ( create$ pen220_4_max ?gen174 $$$ $?gen177 ) ) ) ) ) ( test ( eq ( class ?gen175 ) max_imprisonment ) ) => ( calc ( bind $?gen180 ( create$ pen220_4_max ?gen174 $?gen177 ) ) ) ?gen175 <- ( max_imprisonment ( positive-support $?gen180 ) )"))

([pen220_4_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_4_min-defeasibly-dot-gen289)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_4_min] ) ) ) ?gen166 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_4_min $? ) ) ( test ( eq ( class ?gen166 ) min_imprisonment ) ) ( not ( and ?gen173 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ pen220_4_min $?gen168 ) ) ) ) ) ) => ?gen166 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_4_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_4_min-defeasibly-gen291)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_4_min] ) ) ) ?gen173 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ pen220_4_min $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) min_imprisonment ) ) => ?gen166 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_4_min ?gen173 ) )"))

([pen220_4_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_4_min-overruled-dot-gen293)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_4_min] ) ) ) ?gen166 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( subseq-pos ( create$ pen220_4_min-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( test ( eq ( class ?gen166 ) min_imprisonment ) ) ( not ( and ?gen173 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( min_imprisonment ( positive-defeated $?gen168 & : ( not ( member$ pen220_4_min $?gen168 ) ) ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen170 ( create$ pen220_4_min-overruled $?gen169 ) ) ) ) ?gen166 <- ( min_imprisonment ( negative-overruled $?gen171 ) )"))

([pen220_4_min-overruled] of derived-attribute-rule
   (pos-name pen220_4_min-overruled-gen295)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_4_min] ) ) ) ?gen173 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( not ( subseq-pos ( create$ pen220_4_min-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( positive-defeated $?gen168 & : ( not ( member$ pen220_4_min $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) min_imprisonment ) ) => ( calc ( bind $?gen171 ( create$ pen220_4_min-overruled $?gen169 $?gen170 ) ) ) ?gen166 <- ( min_imprisonment ( negative-overruled $?gen171 ) )"))

([pen220_4_min-support] of derived-attribute-rule
   (pos-name pen220_4_min-support-gen297)
   (depends-on declare is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_4_min] ) ) ) ?gen165 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ?gen166 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen168 & : ( not ( subseq-pos ( create$ pen220_4_min ?gen165 $$$ $?gen168 ) ) ) ) ) ( test ( eq ( class ?gen166 ) min_imprisonment ) ) => ( calc ( bind $?gen171 ( create$ pen220_4_min ?gen165 $?gen168 ) ) ) ?gen166 <- ( min_imprisonment ( positive-support $?gen171 ) )"))

([pen220_3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_3_max-defeasibly-dot-gen299)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_3_max] ) ) ) ?gen157 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pen220_3_max $? ) ) ( test ( eq ( class ?gen157 ) max_imprisonment ) ) ( not ( and ?gen164 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ pen220_3_max $?gen159 ) ) ) ) ) ) => ?gen157 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_3_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_3_max-defeasibly-gen301)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_3_max] ) ) ) ?gen164 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ pen220_3_max $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) max_imprisonment ) ) => ?gen157 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_3_max ?gen164 ) )"))

([pen220_3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_3_max-overruled-dot-gen303)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_3_max] ) ) ) ?gen157 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( subseq-pos ( create$ pen220_3_max-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( test ( eq ( class ?gen157 ) max_imprisonment ) ) ( not ( and ?gen164 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( max_imprisonment ( positive-defeated $?gen159 & : ( not ( member$ pen220_3_max $?gen159 ) ) ) ) ) ) => ( calc ( bind $?gen162 ( delete-member$ $?gen161 ( create$ pen220_3_max-overruled $?gen160 ) ) ) ) ?gen157 <- ( max_imprisonment ( negative-overruled $?gen162 ) )"))

([pen220_3_max-overruled] of derived-attribute-rule
   (pos-name pen220_3_max-overruled-gen305)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_3_max] ) ) ) ?gen164 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( not ( subseq-pos ( create$ pen220_3_max-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( positive-defeated $?gen159 & : ( not ( member$ pen220_3_max $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) max_imprisonment ) ) => ( calc ( bind $?gen162 ( create$ pen220_3_max-overruled $?gen160 $?gen161 ) ) ) ?gen157 <- ( max_imprisonment ( negative-overruled $?gen162 ) )"))

([pen220_3_max-support] of derived-attribute-rule
   (pos-name pen220_3_max-support-gen307)
   (depends-on declare is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_3_max] ) ) ) ?gen156 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen157 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen159 & : ( not ( subseq-pos ( create$ pen220_3_max ?gen156 $$$ $?gen159 ) ) ) ) ) ( test ( eq ( class ?gen157 ) max_imprisonment ) ) => ( calc ( bind $?gen162 ( create$ pen220_3_max ?gen156 $?gen159 ) ) ) ?gen157 <- ( max_imprisonment ( positive-support $?gen162 ) )"))

([pen220_3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_3_min-defeasibly-dot-gen309)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_3_min] ) ) ) ?gen148 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen220_3_min $? ) ) ( test ( eq ( class ?gen148 ) min_imprisonment ) ) ( not ( and ?gen155 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ pen220_3_min $?gen150 ) ) ) ) ) ) => ?gen148 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_3_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_3_min-defeasibly-gen311)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_3_min] ) ) ) ?gen155 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ pen220_3_min $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) min_imprisonment ) ) => ?gen148 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_3_min ?gen155 ) )"))

([pen220_3_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_3_min-overruled-dot-gen313)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_3_min] ) ) ) ?gen148 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( subseq-pos ( create$ pen220_3_min-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( test ( eq ( class ?gen148 ) min_imprisonment ) ) ( not ( and ?gen155 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( min_imprisonment ( positive-defeated $?gen150 & : ( not ( member$ pen220_3_min $?gen150 ) ) ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen152 ( create$ pen220_3_min-overruled $?gen151 ) ) ) ) ?gen148 <- ( min_imprisonment ( negative-overruled $?gen153 ) )"))

([pen220_3_min-overruled] of derived-attribute-rule
   (pos-name pen220_3_min-overruled-gen315)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_3_min] ) ) ) ?gen155 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( not ( subseq-pos ( create$ pen220_3_min-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( positive-defeated $?gen150 & : ( not ( member$ pen220_3_min $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) min_imprisonment ) ) => ( calc ( bind $?gen153 ( create$ pen220_3_min-overruled $?gen151 $?gen152 ) ) ) ?gen148 <- ( min_imprisonment ( negative-overruled $?gen153 ) )"))

([pen220_3_min-support] of derived-attribute-rule
   (pos-name pen220_3_min-support-gen317)
   (depends-on declare is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_3_min] ) ) ) ?gen147 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ?gen148 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen150 & : ( not ( subseq-pos ( create$ pen220_3_min ?gen147 $$$ $?gen150 ) ) ) ) ) ( test ( eq ( class ?gen148 ) min_imprisonment ) ) => ( calc ( bind $?gen153 ( create$ pen220_3_min ?gen147 $?gen150 ) ) ) ?gen148 <- ( min_imprisonment ( positive-support $?gen153 ) )"))

([pen220_2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-dot-gen319)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_max] ) ) ) ?gen139 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_max $? ) ) ( test ( eq ( class ?gen139 ) max_imprisonment ) ) ( not ( and ?gen146 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ pen220_2_max $?gen141 ) ) ) ) ) ) => ?gen139 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_2_max-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_max-defeasibly-gen321)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_max] ) ) ) ?gen146 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ pen220_2_max $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) max_imprisonment ) ) => ?gen139 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_2_max ?gen146 ) )"))

([pen220_2_max-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-dot-gen323)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_max] ) ) ) ?gen139 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( subseq-pos ( create$ pen220_2_max-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( test ( eq ( class ?gen139 ) max_imprisonment ) ) ( not ( and ?gen146 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( max_imprisonment ( positive-defeated $?gen141 & : ( not ( member$ pen220_2_max $?gen141 ) ) ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen143 ( create$ pen220_2_max-overruled $?gen142 ) ) ) ) ?gen139 <- ( max_imprisonment ( negative-overruled $?gen144 ) )"))

([pen220_2_max-overruled] of derived-attribute-rule
   (pos-name pen220_2_max-overruled-gen325)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_max] ) ) ) ?gen146 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( not ( subseq-pos ( create$ pen220_2_max-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( positive-defeated $?gen141 & : ( not ( member$ pen220_2_max $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) max_imprisonment ) ) => ( calc ( bind $?gen144 ( create$ pen220_2_max-overruled $?gen142 $?gen143 ) ) ) ?gen139 <- ( max_imprisonment ( negative-overruled $?gen144 ) )"))

([pen220_2_max-support] of derived-attribute-rule
   (pos-name pen220_2_max-support-gen327)
   (depends-on declare is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_max] ) ) ) ?gen138 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen139 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen141 & : ( not ( subseq-pos ( create$ pen220_2_max ?gen138 $$$ $?gen141 ) ) ) ) ) ( test ( eq ( class ?gen139 ) max_imprisonment ) ) => ( calc ( bind $?gen144 ( create$ pen220_2_max ?gen138 $?gen141 ) ) ) ?gen139 <- ( max_imprisonment ( positive-support $?gen144 ) )"))

([pen220_2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-dot-gen329)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_2_min] ) ) ) ?gen130 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen220_2_min $? ) ) ( test ( eq ( class ?gen130 ) min_imprisonment ) ) ( not ( and ?gen137 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ pen220_2_min $?gen132 ) ) ) ) ) ) => ?gen130 <- ( min_imprisonment ( positive 0 ) )"))

([pen220_2_min-defeasibly] of derived-attribute-rule
   (pos-name pen220_2_min-defeasibly-gen331)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_2_min] ) ) ) ?gen137 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ pen220_2_min $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) min_imprisonment ) ) => ?gen130 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen220_2_min ?gen137 ) )"))

([pen220_2_min-overruled-dot] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-dot-gen333)
   (depends-on declare min_imprisonment is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_2_min] ) ) ) ?gen130 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( subseq-pos ( create$ pen220_2_min-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( test ( eq ( class ?gen130 ) min_imprisonment ) ) ( not ( and ?gen137 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( min_imprisonment ( positive-defeated $?gen132 & : ( not ( member$ pen220_2_min $?gen132 ) ) ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen134 ( create$ pen220_2_min-overruled $?gen133 ) ) ) ) ?gen130 <- ( min_imprisonment ( negative-overruled $?gen135 ) )"))

([pen220_2_min-overruled] of derived-attribute-rule
   (pos-name pen220_2_min-overruled-gen335)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_2_min] ) ) ) ?gen137 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( not ( subseq-pos ( create$ pen220_2_min-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( positive-defeated $?gen132 & : ( not ( member$ pen220_2_min $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) min_imprisonment ) ) => ( calc ( bind $?gen135 ( create$ pen220_2_min-overruled $?gen133 $?gen134 ) ) ) ?gen130 <- ( min_imprisonment ( negative-overruled $?gen135 ) )"))

([pen220_2_min-support] of derived-attribute-rule
   (pos-name pen220_2_min-support-gen337)
   (depends-on declare is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_2_min] ) ) ) ?gen129 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ?gen130 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen132 & : ( not ( subseq-pos ( create$ pen220_2_min ?gen129 $$$ $?gen132 ) ) ) ) ) ( test ( eq ( class ?gen130 ) min_imprisonment ) ) => ( calc ( bind $?gen135 ( create$ pen220_2_min ?gen129 $?gen132 ) ) ) ?gen130 <- ( min_imprisonment ( positive-support $?gen135 ) )"))

([pen220_1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen220_1-defeasibly-dot-gen339)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen220_1] ) ) ) ?gen121 <- ( max_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pen220_1 $? ) ) ( test ( eq ( class ?gen121 ) max_imprisonment ) ) ( not ( and ?gen128 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ pen220_1 $?gen123 ) ) ) ) ) ) => ?gen121 <- ( max_imprisonment ( positive 0 ) )"))

([pen220_1-defeasibly] of derived-attribute-rule
   (pos-name pen220_1-defeasibly-gen341)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen220_1] ) ) ) ?gen128 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( max_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ pen220_1 $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) max_imprisonment ) ) => ?gen121 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen220_1 ?gen128 ) )"))

([pen220_1-overruled-dot] of derived-attribute-rule
   (pos-name pen220_1-overruled-dot-gen343)
   (depends-on declare max_imprisonment is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen220_1] ) ) ) ?gen121 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( subseq-pos ( create$ pen220_1-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( test ( eq ( class ?gen121 ) max_imprisonment ) ) ( not ( and ?gen128 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( max_imprisonment ( positive-defeated $?gen123 & : ( not ( member$ pen220_1 $?gen123 ) ) ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen125 ( create$ pen220_1-overruled $?gen124 ) ) ) ) ?gen121 <- ( max_imprisonment ( negative-overruled $?gen126 ) )"))

([pen220_1-overruled] of derived-attribute-rule
   (pos-name pen220_1-overruled-gen345)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen220_1] ) ) ) ?gen128 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( max_imprisonment ( value 2 ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( not ( subseq-pos ( create$ pen220_1-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( positive-defeated $?gen123 & : ( not ( member$ pen220_1 $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) max_imprisonment ) ) => ( calc ( bind $?gen126 ( create$ pen220_1-overruled $?gen124 $?gen125 ) ) ) ?gen121 <- ( max_imprisonment ( negative-overruled $?gen126 ) )"))

([pen220_1-support] of derived-attribute-rule
   (pos-name pen220_1-support-gen347)
   (depends-on declare is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen220_1] ) ) ) ?gen120 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen121 <- ( max_imprisonment ( value 2 ) ( positive-support $?gen123 & : ( not ( subseq-pos ( create$ pen220_1 ?gen120 $$$ $?gen123 ) ) ) ) ) ( test ( eq ( class ?gen121 ) max_imprisonment ) ) => ( calc ( bind $?gen126 ( create$ pen220_1 ?gen120 $?gen123 ) ) ) ?gen121 <- ( max_imprisonment ( positive-support $?gen126 ) )"))

([rule221_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_3-defeasibly-dot-gen349)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_3] ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule221_3 $? ) ) ( test ( eq ( class ?gen110 ) is_guilty_of_nonpayment_of_support_lv2 ) ) ( not ( and ?gen117 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative ~ 2 ) ( positive-overruled $?gen112 & : ( not ( member$ rule221_3 $?gen112 ) ) ) ) ) ) => ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive 0 ) )"))

([rule221_3-defeasibly] of derived-attribute-rule
   (pos-name rule221_3-defeasibly-gen351)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_3] ) ) ) ?gen117 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen112 & : ( not ( member$ rule221_3 $?gen112 ) ) ) ) ( test ( eq ( class ?gen110 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive 1 ) ( positive-derivator rule221_3 ?gen117 ?gen119 ) )"))

([rule221_3-overruled-dot] of derived-attribute-rule
   (pos-name rule221_3-overruled-dot-gen353)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv2 is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_3] ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-support $?gen113 ) ( negative-overruled $?gen114 & : ( subseq-pos ( create$ rule221_3-overruled $?gen113 $$$ $?gen114 ) ) ) ) ( test ( eq ( class ?gen110 ) is_guilty_of_nonpayment_of_support_lv2 ) ) ( not ( and ?gen117 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive-defeated $?gen112 & : ( not ( member$ rule221_3 $?gen112 ) ) ) ) ) ) => ( calc ( bind $?gen115 ( delete-member$ $?gen114 ( create$ rule221_3-overruled $?gen113 ) ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-overruled $?gen115 ) )"))

([rule221_3-overruled] of derived-attribute-rule
   (pos-name rule221_3-overruled-gen355)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_3] ) ) ) ?gen117 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( negative-support $?gen113 ) ( negative-overruled $?gen114 & : ( not ( subseq-pos ( create$ rule221_3-overruled $?gen113 $$$ $?gen114 ) ) ) ) ( positive-defeated $?gen112 & : ( not ( member$ rule221_3 $?gen112 ) ) ) ) ( test ( eq ( class ?gen110 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ( calc ( bind $?gen115 ( create$ rule221_3-overruled $?gen113 $?gen114 ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( negative-overruled $?gen115 ) )"))

([rule221_3-support] of derived-attribute-rule
   (pos-name rule221_3-support-gen357)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_3] ) ) ) ?gen108 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ( positive-support $?gen112 & : ( not ( subseq-pos ( create$ rule221_3 ?gen108 ?gen109 $$$ $?gen112 ) ) ) ) ) ( test ( eq ( class ?gen110 ) is_guilty_of_nonpayment_of_support_lv2 ) ) => ( calc ( bind $?gen115 ( create$ rule221_3 ?gen108 ?gen109 $?gen112 ) ) ) ?gen110 <- ( is_guilty_of_nonpayment_of_support_lv2 ( positive-support $?gen115 ) )"))

([rule221_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule221_1-defeasibly-dot-gen359)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule221_1] ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule221_1 $? ) ) ( test ( eq ( class ?gen96 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen102 & : ( >= ?gen102 1 ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative ~ 2 ) ( positive-overruled $?gen98 & : ( not ( member$ rule221_1 $?gen98 ) ) ) ) ) ) => ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive 0 ) )"))

([rule221_1-defeasibly] of derived-attribute-rule
   (pos-name rule221_1-defeasibly-gen361)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule221_1] ) ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen102 & : ( >= ?gen102 1 ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen98 & : ( not ( member$ rule221_1 $?gen98 ) ) ) ) ( test ( eq ( class ?gen96 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive 1 ) ( positive-derivator rule221_1 ?gen103 ?gen105 ?gen107 ) )"))

([rule221_1-overruled-dot] of derived-attribute-rule
   (pos-name rule221_1-overruled-dot-gen363)
   (depends-on declare is_guilty_of_nonpayment_of_support_lv1 lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule221_1] ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen99 ) ( negative-overruled $?gen100 & : ( subseq-pos ( create$ rule221_1-overruled $?gen99 $$$ $?gen100 ) ) ) ) ( test ( eq ( class ?gen96 ) is_guilty_of_nonpayment_of_support_lv1 ) ) ( not ( and ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen102 & : ( >= ?gen102 1 ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-defeated $?gen98 & : ( not ( member$ rule221_1 $?gen98 ) ) ) ) ) ) => ( calc ( bind $?gen101 ( delete-member$ $?gen100 ( create$ rule221_1-overruled $?gen99 ) ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-overruled $?gen101 ) )"))

([rule221_1-overruled] of derived-attribute-rule
   (pos-name rule221_1-overruled-gen365)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule221_1] ) ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen102 & : ( >= ?gen102 1 ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( negative-support $?gen99 ) ( negative-overruled $?gen100 & : ( not ( subseq-pos ( create$ rule221_1-overruled $?gen99 $$$ $?gen100 ) ) ) ) ( positive-defeated $?gen98 & : ( not ( member$ rule221_1 $?gen98 ) ) ) ) ( test ( eq ( class ?gen96 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen101 ( create$ rule221_1-overruled $?gen99 $?gen100 ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( negative-overruled $?gen101 ) )"))

([rule221_1-support] of derived-attribute-rule
   (pos-name rule221_1-support-gen367)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule221_1] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ( positive-support $?gen98 & : ( not ( subseq-pos ( create$ rule221_1 ?gen93 ?gen94 ?gen95 $$$ $?gen98 ) ) ) ) ) ( test ( eq ( class ?gen96 ) is_guilty_of_nonpayment_of_support_lv1 ) ) => ( calc ( bind $?gen101 ( create$ rule221_1 ?gen93 ?gen94 ?gen95 $?gen98 ) ) ) ?gen96 <- ( is_guilty_of_nonpayment_of_support_lv1 ( positive-support $?gen101 ) )"))

([rule220_5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_5-defeasibly-dot-gen369)
   (depends-on declare is_guilty_of_violating_measures lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_5] ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_5 $? ) ) ( test ( eq ( class ?gen85 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( negative ~ 2 ) ( positive-overruled $?gen87 & : ( not ( member$ rule220_5 $?gen87 ) ) ) ) ) ) => ?gen85 <- ( is_guilty_of_violating_measures ( positive 0 ) )"))

([rule220_5-defeasibly] of derived-attribute-rule
   (pos-name rule220_5-defeasibly-gen371)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_5] ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen87 & : ( not ( member$ rule220_5 $?gen87 ) ) ) ) ( test ( eq ( class ?gen85 ) is_guilty_of_violating_measures ) ) => ?gen85 <- ( is_guilty_of_violating_measures ( positive 1 ) ( positive-derivator rule220_5 ?gen92 ) )"))

([rule220_5-overruled-dot] of derived-attribute-rule
   (pos-name rule220_5-overruled-dot-gen373)
   (depends-on declare is_guilty_of_violating_measures lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_5] ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen88 ) ( negative-overruled $?gen89 & : ( subseq-pos ( create$ rule220_5-overruled $?gen88 $$$ $?gen89 ) ) ) ) ( test ( eq ( class ?gen85 ) is_guilty_of_violating_measures ) ) ( not ( and ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( positive-defeated $?gen87 & : ( not ( member$ rule220_5 $?gen87 ) ) ) ) ) ) => ( calc ( bind $?gen90 ( delete-member$ $?gen89 ( create$ rule220_5-overruled $?gen88 ) ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( negative-overruled $?gen90 ) )"))

([rule220_5-overruled] of derived-attribute-rule
   (pos-name rule220_5-overruled-gen375)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_5] ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( negative-support $?gen88 ) ( negative-overruled $?gen89 & : ( not ( subseq-pos ( create$ rule220_5-overruled $?gen88 $$$ $?gen89 ) ) ) ) ( positive-defeated $?gen87 & : ( not ( member$ rule220_5 $?gen87 ) ) ) ) ( test ( eq ( class ?gen85 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen90 ( create$ rule220_5-overruled $?gen88 $?gen89 ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( negative-overruled $?gen90 ) )"))

([rule220_5-support] of derived-attribute-rule
   (pos-name rule220_5-support-gen377)
   (depends-on declare lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_5] ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen85 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ( positive-support $?gen87 & : ( not ( subseq-pos ( create$ rule220_5 ?gen84 $$$ $?gen87 ) ) ) ) ) ( test ( eq ( class ?gen85 ) is_guilty_of_violating_measures ) ) => ( calc ( bind $?gen90 ( create$ rule220_5 ?gen84 $?gen87 ) ) ) ?gen85 <- ( is_guilty_of_violating_measures ( positive-support $?gen90 ) )"))

([rule220_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_4-defeasibly-dot-gen379)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_4] ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_4 $? ) ) ( test ( eq ( class ?gen74 ) is_guilty_of_family_violence_lv4 ) ) ( not ( and ?gen81 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( negative ~ 2 ) ( positive-overruled $?gen76 & : ( not ( member$ rule220_4 $?gen76 ) ) ) ) ) ) => ?gen74 <- ( is_guilty_of_family_violence_lv4 ( positive 0 ) )"))

([rule220_4-defeasibly] of derived-attribute-rule
   (pos-name rule220_4-defeasibly-gen381)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_4] ) ) ) ?gen81 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen76 & : ( not ( member$ rule220_4 $?gen76 ) ) ) ) ( test ( eq ( class ?gen74 ) is_guilty_of_family_violence_lv4 ) ) => ?gen74 <- ( is_guilty_of_family_violence_lv4 ( positive 1 ) ( positive-derivator rule220_4 ?gen81 ?gen83 ) )"))

([rule220_4-overruled-dot] of derived-attribute-rule
   (pos-name rule220_4-overruled-dot-gen383)
   (depends-on declare is_guilty_of_family_violence_lv4 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_4] ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-support $?gen77 ) ( negative-overruled $?gen78 & : ( subseq-pos ( create$ rule220_4-overruled $?gen77 $$$ $?gen78 ) ) ) ) ( test ( eq ( class ?gen74 ) is_guilty_of_family_violence_lv4 ) ) ( not ( and ?gen81 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( positive-defeated $?gen76 & : ( not ( member$ rule220_4 $?gen76 ) ) ) ) ) ) => ( calc ( bind $?gen79 ( delete-member$ $?gen78 ( create$ rule220_4-overruled $?gen77 ) ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( negative-overruled $?gen79 ) )"))

([rule220_4-overruled] of derived-attribute-rule
   (pos-name rule220_4-overruled-gen385)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_4] ) ) ) ?gen81 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( negative-support $?gen77 ) ( negative-overruled $?gen78 & : ( not ( subseq-pos ( create$ rule220_4-overruled $?gen77 $$$ $?gen78 ) ) ) ) ( positive-defeated $?gen76 & : ( not ( member$ rule220_4 $?gen76 ) ) ) ) ( test ( eq ( class ?gen74 ) is_guilty_of_family_violence_lv4 ) ) => ( calc ( bind $?gen79 ( create$ rule220_4-overruled $?gen77 $?gen78 ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( negative-overruled $?gen79 ) )"))

([rule220_4-support] of derived-attribute-rule
   (pos-name rule220_4-support-gen387)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_4] ) ) ) ?gen72 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ( positive-support $?gen76 & : ( not ( subseq-pos ( create$ rule220_4 ?gen72 ?gen73 $$$ $?gen76 ) ) ) ) ) ( test ( eq ( class ?gen74 ) is_guilty_of_family_violence_lv4 ) ) => ( calc ( bind $?gen79 ( create$ rule220_4 ?gen72 ?gen73 $?gen76 ) ) ) ?gen74 <- ( is_guilty_of_family_violence_lv4 ( positive-support $?gen79 ) )"))

([rule220_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_3-defeasibly-dot-gen389)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_3] ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_3 $? ) ) ( test ( eq ( class ?gen64 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen71 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule220_3 $?gen66 ) ) ) ) ) ) => ?gen64 <- ( is_guilty_of_family_violence_lv3 ( positive 0 ) )"))

([rule220_3-defeasibly] of derived-attribute-rule
   (pos-name rule220_3-defeasibly-gen391)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_3] ) ) ) ?gen71 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule220_3 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) is_guilty_of_family_violence_lv3 ) ) => ?gen64 <- ( is_guilty_of_family_violence_lv3 ( positive 1 ) ( positive-derivator rule220_3 ?gen71 ) )"))

([rule220_3-overruled-dot] of derived-attribute-rule
   (pos-name rule220_3-overruled-dot-gen393)
   (depends-on declare is_guilty_of_family_violence_lv3 is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_3] ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( subseq-pos ( create$ rule220_3-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( test ( eq ( class ?gen64 ) is_guilty_of_family_violence_lv3 ) ) ( not ( and ?gen71 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( positive-defeated $?gen66 & : ( not ( member$ rule220_3 $?gen66 ) ) ) ) ) ) => ( calc ( bind $?gen69 ( delete-member$ $?gen68 ( create$ rule220_3-overruled $?gen67 ) ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen69 ) )"))

([rule220_3-overruled] of derived-attribute-rule
   (pos-name rule220_3-overruled-gen395)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_3] ) ) ) ?gen71 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( not ( subseq-pos ( create$ rule220_3-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( positive-defeated $?gen66 & : ( not ( member$ rule220_3 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen69 ( create$ rule220_3-overruled $?gen67 $?gen68 ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( negative-overruled $?gen69 ) )"))

([rule220_3-support] of derived-attribute-rule
   (pos-name rule220_3-support-gen397)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_3] ) ) ) ?gen63 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ( positive-support $?gen66 & : ( not ( subseq-pos ( create$ rule220_3 ?gen63 $$$ $?gen66 ) ) ) ) ) ( test ( eq ( class ?gen64 ) is_guilty_of_family_violence_lv3 ) ) => ( calc ( bind $?gen69 ( create$ rule220_3 ?gen63 $?gen66 ) ) ) ?gen64 <- ( is_guilty_of_family_violence_lv3 ( positive-support $?gen69 ) )"))

([rule220_2_neg-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_2_neg-defeasibly-dot-gen399)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_2_neg] ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_2_neg $? ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen62 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( positive ~ 2 ) ( negative-overruled $?gen57 & : ( not ( member$ rule220_2_neg $?gen57 ) ) ) ) ) ) => ?gen55 <- ( is_guilty_of_family_violence_lv1 ( negative 0 ) )"))

([rule220_2_neg-defeasibly] of derived-attribute-rule
   (pos-name rule220_2_neg-defeasibly-gen401)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_2_neg] ) ) ) ?gen62 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen57 & : ( not ( member$ rule220_2_neg $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv1 ) ) => ?gen55 <- ( is_guilty_of_family_violence_lv1 ( negative 1 ) ( negative-derivator rule220_2_neg ?gen62 ) )"))

([rule220_2_neg-overruled-dot] of derived-attribute-rule
   (pos-name rule220_2_neg-overruled-dot-gen403)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_2_neg] ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen58 ) ( positive-overruled $?gen59 & : ( subseq-pos ( create$ rule220_2_neg-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen62 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( negative-defeated $?gen57 & : ( not ( member$ rule220_2_neg $?gen57 ) ) ) ) ) ) => ( calc ( bind $?gen60 ( delete-member$ $?gen59 ( create$ rule220_2_neg-overruled $?gen58 ) ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen60 ) )"))

([rule220_2_neg-overruled] of derived-attribute-rule
   (pos-name rule220_2_neg-overruled-gen405)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_2_neg] ) ) ) ?gen62 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen58 ) ( positive-overruled $?gen59 & : ( not ( subseq-pos ( create$ rule220_2_neg-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( negative-defeated $?gen57 & : ( not ( member$ rule220_2_neg $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen60 ( create$ rule220_2_neg-overruled $?gen58 $?gen59 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen60 ) )"))

([rule220_2_neg-support] of derived-attribute-rule
   (pos-name rule220_2_neg-support-gen407)
   (depends-on declare is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_2_neg] ) ) ) ?gen54 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen57 & : ( not ( subseq-pos ( create$ rule220_2_neg ?gen54 $$$ $?gen57 ) ) ) ) ) ( test ( eq ( class ?gen55 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen60 ( create$ rule220_2_neg ?gen54 $?gen57 ) ) ) ?gen55 <- ( is_guilty_of_family_violence_lv1 ( negative-support $?gen60 ) )"))

([rule220_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-dot-gen409)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_2] ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_2 $? ) ) ( test ( eq ( class ?gen44 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen51 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule220_2 $?gen46 ) ) ) ) ) ) => ?gen44 <- ( is_guilty_of_family_violence_lv2 ( positive 0 ) )"))

([rule220_2-defeasibly] of derived-attribute-rule
   (pos-name rule220_2-defeasibly-gen411)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_2] ) ) ) ?gen51 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule220_2 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) is_guilty_of_family_violence_lv2 ) ) => ?gen44 <- ( is_guilty_of_family_violence_lv2 ( positive 1 ) ( positive-derivator rule220_2 ?gen51 ?gen53 ) )"))

([rule220_2-overruled-dot] of derived-attribute-rule
   (pos-name rule220_2-overruled-dot-gen413)
   (depends-on declare is_guilty_of_family_violence_lv2 is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_2] ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( subseq-pos ( create$ rule220_2-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( test ( eq ( class ?gen44 ) is_guilty_of_family_violence_lv2 ) ) ( not ( and ?gen51 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( positive-defeated $?gen46 & : ( not ( member$ rule220_2 $?gen46 ) ) ) ) ) ) => ( calc ( bind $?gen49 ( delete-member$ $?gen48 ( create$ rule220_2-overruled $?gen47 ) ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen49 ) )"))

([rule220_2-overruled] of derived-attribute-rule
   (pos-name rule220_2-overruled-gen415)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_2] ) ) ) ?gen51 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( not ( subseq-pos ( create$ rule220_2-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( positive-defeated $?gen46 & : ( not ( member$ rule220_2 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen49 ( create$ rule220_2-overruled $?gen47 $?gen48 ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( negative-overruled $?gen49 ) )"))

([rule220_2-support] of derived-attribute-rule
   (pos-name rule220_2-support-gen417)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_2] ) ) ) ?gen42 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen43 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ( positive-support $?gen46 & : ( not ( subseq-pos ( create$ rule220_2 ?gen42 ?gen43 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen44 ) is_guilty_of_family_violence_lv2 ) ) => ( calc ( bind $?gen49 ( create$ rule220_2 ?gen42 ?gen43 $?gen46 ) ) ) ?gen44 <- ( is_guilty_of_family_violence_lv2 ( positive-support $?gen49 ) )"))

([rule220_1_neg-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_1_neg-defeasibly-dot-gen419)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_1_neg] ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule220_1_neg $? ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( positive ~ 2 ) ( negative-overruled $?gen32 & : ( not ( member$ rule220_1_neg $?gen32 ) ) ) ) ) ) => ?gen30 <- ( is_guilty_of_family_violence_lv1 ( negative 0 ) )"))

([rule220_1_neg-defeasibly] of derived-attribute-rule
   (pos-name rule220_1_neg-defeasibly-gen421)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_1_neg] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen32 & : ( not ( member$ rule220_1_neg $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv1 ) ) => ?gen30 <- ( is_guilty_of_family_violence_lv1 ( negative 1 ) ( negative-derivator rule220_1_neg ?gen37 ?gen39 ?gen41 ) )"))

([rule220_1_neg-overruled-dot] of derived-attribute-rule
   (pos-name rule220_1_neg-overruled-dot-gen423)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_1_neg] ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen33 ) ( positive-overruled $?gen34 & : ( subseq-pos ( create$ rule220_1_neg-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( negative-defeated $?gen32 & : ( not ( member$ rule220_1_neg $?gen32 ) ) ) ) ) ) => ( calc ( bind $?gen35 ( delete-member$ $?gen34 ( create$ rule220_1_neg-overruled $?gen33 ) ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen35 ) )"))

([rule220_1_neg-overruled] of derived-attribute-rule
   (pos-name rule220_1_neg-overruled-gen425)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_1_neg] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen33 ) ( positive-overruled $?gen34 & : ( not ( subseq-pos ( create$ rule220_1_neg-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( negative-defeated $?gen32 & : ( not ( member$ rule220_1_neg $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen35 ( create$ rule220_1_neg-overruled $?gen33 $?gen34 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( positive-overruled $?gen35 ) )"))

([rule220_1_neg-support] of derived-attribute-rule
   (pos-name rule220_1_neg-support-gen427)
   (depends-on declare lc:case lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_1_neg] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen32 & : ( not ( subseq-pos ( create$ rule220_1_neg ?gen27 ?gen28 ?gen29 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen30 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen35 ( create$ rule220_1_neg ?gen27 ?gen28 ?gen29 $?gen32 ) ) ) ?gen30 <- ( is_guilty_of_family_violence_lv1 ( negative-support $?gen35 ) )"))

([rule220_1-defeated-dot] of derived-attribute-rule
   (pos-name rule220_1-defeated-dot-gen429)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-defeated $?gen20 & : ( subseq-pos ( create$ rule220_1-defeated rule220_1_neg $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ) ) => ( calc ( bind $?gen19 ( delete-member$ $?gen20 ( create$ rule220_1-defeated rule220_1_neg ) ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-defeated $?gen19 ) )"))

([rule220_1-defeated] of derived-attribute-rule
   (pos-name rule220_1-defeated-gen431)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-defeated $?gen20 & : ( not ( subseq-pos ( create$ rule220_1-defeated rule220_1_neg $$$ $?gen20 ) ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen19 ( create$ rule220_1-defeated rule220_1_neg $?gen20 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-defeated $?gen19 ) )"))

([rule220_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-dot-gen433)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule220_1 $? ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 0 ) )"))

([rule220_1-defeasibly] of derived-attribute-rule
   (pos-name rule220_1-defeasibly-gen435)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive 1 ) ( positive-derivator rule220_1 ?gen24 ?gen26 ) )"))

([rule220_1-overruled-dot] of derived-attribute-rule
   (pos-name rule220_1-overruled-dot-gen437)
   (depends-on declare is_guilty_of_family_violence_lv1 lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule220_1] ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule220_1-overruled $?gen20 ) ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-overruled] of derived-attribute-rule
   (pos-name rule220_1-overruled-gen439)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule220_1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule220_1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule220_1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( negative-overruled $?gen22 ) )"))

([rule220_1-support] of derived-attribute-rule
   (pos-name rule220_1-support-gen441)
   (depends-on declare lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule220_1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule220_1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) is_guilty_of_family_violence_lv1 ) ) => ( calc ( bind $?gen22 ( create$ rule220_1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( is_guilty_of_family_violence_lv1 ( positive-support $?gen22 ) )"))

([pen221_3_max-deductive] of ntm-deductive-rule
   (pos-name pen221_3_max-deductive-gen238)
   (depends-on is_guilty_of_nonpayment_of_support_lv2 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen210 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen221_3_max-deductive-gen238 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen210 ) ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pen221_3_min-deductive] of ntm-deductive-rule
   (pos-name pen221_3_min-deductive-gen237)
   (depends-on is_guilty_of_nonpayment_of_support_lv2 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen201 <- ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 6 ) ) ) => ( min_imprisonment ( value 6 ) )")
   (production-rule "( defrule pen221_3_min-deductive-gen237 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen201 ) ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 6 ) ) ) ( make-instance ?oid of min_imprisonment ( value 6 ) ) )")
   (derived-class min_imprisonment))

([pen221_1-deductive] of ntm-deductive-rule
   (pos-name pen221_1-deductive-gen236)
   (depends-on is_guilty_of_nonpayment_of_support_lv1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen192 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2 ) ) ) => ( max_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen221_1-deductive-gen236 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen192 ) ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2 ) ) )")
   (derived-class max_imprisonment))

([pen220_5-deductive] of ntm-deductive-rule
   (pos-name pen220_5-deductive-gen235)
   (depends-on is_guilty_of_violating_measures max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen183 <- ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen220_5-deductive-gen235 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen183 ) ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pen220_4_max-deductive] of ntm-deductive-rule
   (pos-name pen220_4_max-deductive-gen234)
   (depends-on is_guilty_of_family_violence_lv4 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen174 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pen220_4_max-deductive-gen234 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen174 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pen220_4_min-deductive] of ntm-deductive-rule
   (pos-name pen220_4_min-deductive-gen233)
   (depends-on is_guilty_of_family_violence_lv4 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen165 <- ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_4_min-deductive-gen233 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen165 ) ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pen220_3_max-deductive] of ntm-deductive-rule
   (pos-name pen220_3_max-deductive-gen232)
   (depends-on is_guilty_of_family_violence_lv3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen156 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pen220_3_max-deductive-gen232 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen156 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pen220_3_min-deductive] of ntm-deductive-rule
   (pos-name pen220_3_min-deductive-gen231)
   (depends-on is_guilty_of_family_violence_lv3 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen147 <- ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen220_3_min-deductive-gen231 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen147 ) ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pen220_2_max-deductive] of ntm-deductive-rule
   (pos-name pen220_2_max-deductive-gen230)
   (depends-on is_guilty_of_family_violence_lv2 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen138 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_max-deductive-gen230 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen138 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pen220_2_min-deductive] of ntm-deductive-rule
   (pos-name pen220_2_min-deductive-gen229)
   (depends-on is_guilty_of_family_violence_lv2 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen129 <- ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen220_2_min-deductive-gen229 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen129 ) ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pen220_1-deductive] of ntm-deductive-rule
   (pos-name pen220_1-deductive-gen228)
   (depends-on is_guilty_of_family_violence_lv1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen120 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2 ) ) ) => ( max_imprisonment ( value 2 ) )")
   (production-rule "( defrule pen220_1-deductive-gen228 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen120 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2 ) ) )")
   (derived-class max_imprisonment))

([rule221_3-deductive] of ntm-deductive-rule
   (pos-name rule221_3-deductive-gen227)
   (depends-on is_guilty_of_nonpayment_of_support_lv1 lc:case is_guilty_of_nonpayment_of_support_lv2)
   (implies is_guilty_of_nonpayment_of_support_lv2)
   (deductive-rule "?gen108 <- ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_3-deductive-gen227 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen108 ) ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ( object ( name ?gen109 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv2))

([rule221_1-deductive] of ntm-deductive-rule
   (pos-name rule221_1-deductive-gen226)
   (depends-on lc:case lc:case lc:case is_guilty_of_nonpayment_of_support_lv1)
   (implies is_guilty_of_nonpayment_of_support_lv1)
   (deductive-rule "?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule221_1-deductive-gen226 ( declare ( salience ( calc-salience is_guilty_of_nonpayment_of_support_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen93 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen94 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen95 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_nonpayment_of_support_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_nonpayment_of_support_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_nonpayment_of_support_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_nonpayment_of_support_lv1))

([rule220_5-deductive] of ntm-deductive-rule
   (pos-name rule220_5-deductive-gen225)
   (depends-on lc:case is_guilty_of_violating_measures)
   (implies is_guilty_of_violating_measures)
   (deductive-rule "?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_violating_measures ( defendant ?Defendant ) ) ) => ( is_guilty_of_violating_measures ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_5-deductive-gen225 ( declare ( salience ( calc-salience is_guilty_of_violating_measures ) ) ) ( run-deductive-rules ) ( object ( name ?gen84 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_violating_measures ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_violating_measures ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_violating_measures ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_violating_measures))

([rule220_4-deductive] of ntm-deductive-rule
   (pos-name rule220_4-deductive-gen224)
   (depends-on is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv4)
   (implies is_guilty_of_family_violence_lv4)
   (deductive-rule "?gen72 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_4-deductive-gen224 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv4 ) ) ) ( run-deductive-rules ) ( object ( name ?gen72 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( object ( name ?gen73 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv4 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv4 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv4 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv4 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv4))

([rule220_3-deductive] of ntm-deductive-rule
   (pos-name rule220_3-deductive-gen223)
   (depends-on is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv3)
   (implies is_guilty_of_family_violence_lv3)
   (deductive-rule "?gen63 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_3-deductive-gen223 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen63 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv3 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv3 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv3))

([rule220_2_neg-deductive] of ntm-deductive-rule
   (pos-name rule220_2_neg-deductive-gen222)
   (depends-on is_guilty_of_family_violence_lv1 is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen54 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_2_neg-deductive-gen222 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

([rule220_2-deductive] of ntm-deductive-rule
   (pos-name rule220_2-deductive-gen221)
   (depends-on is_guilty_of_family_violence_lv1 lc:case is_guilty_of_family_violence_lv2)
   (implies is_guilty_of_family_violence_lv2)
   (deductive-rule "?gen42 <- ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ?gen43 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_2-deductive-gen221 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ( object ( name ?gen43 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv2 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv2 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv2))

([rule220_1_neg-deductive] of ntm-deductive-rule
   (pos-name rule220_1_neg-deductive-gen220)
   (depends-on lc:case lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_1_neg-deductive-gen220 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

([rule220_1-deductive] of ntm-deductive-rule
   (pos-name rule220_1-deductive-gen219)
   (depends-on lc:case lc:case is_guilty_of_family_violence_lv1)
   (implies is_guilty_of_family_violence_lv1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ( not ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) ) => ( is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule220_1-deductive-gen219 ( declare ( salience ( calc-salience is_guilty_of_family_violence_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_integrity \"family_member\" ) ) ( not ( object ( is-a is_guilty_of_family_violence_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat is_guilty_of_family_violence_lv1 ?Defendant ) ) ) ( make-instance ?oid of is_guilty_of_family_violence_lv1 ( defendant ?Defendant ) ) )")
   (derived-class is_guilty_of_family_violence_lv1))

