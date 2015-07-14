0. abstract
1. introduction (motivation)
  1. actor model
  2. actor name (dynamically generated)
  3. coq?
  4. why is verification important
  5. これはアクターに関して何を検証したいか
(2. example)
2. syntax
  1. name (what is generation (child) number)
  2. message
  3. actions, behavior (we use gallina for computation basic, like applpi)
  4. in_flight_message (currently, sending)
  5. configuration
  6. example application
3. semantics
  - labeled transition system
4. name uniqueness
  1. toward proof (trans_invariant)
  2. the proof of chain property
  3. the proof of fresh property
  4. the proof of no_dup property
  5. trans_invariant -> uniqueness
5. fairness
  1. about (strong) fairness
  2. enabled
  3. infinitely often enabled
  4. eventually processed
  5. fairness
(6. extraction to Erlang)
6. related work
  - Athena (it can't generate actors dynamically)
  - Verdi (not actor)
  - ApplPi (pi-calc)
7. conclusion
  - future work
  - conclusion
