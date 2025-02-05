$[ theory/kore.mm $]
$[ theory/kore-notation.mm $]
$[ theory/kore-sorting.mm $]

kore-top-valid $a |- ( \kore-valid ph0 ( \kore-top ph0 ) ) $.

kore-not-bot $a |- ( \kore-valid ph0 ( \kore-not ph0 ( \kore-bottom ph0 ) ) ) $.

kore-bot-elim $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-bottom ph0 ) ph1 ) ) ) $.

kore-mp-aux $a |- ( \imp ( \iff ph1 ph0 ) ( \imp ( \iff ( \or ( \and ( \not ph1 ) ph0 ) ph2 ) ph0 ) ( \iff ph2 ph0 ) ) ) $.

kore-mp $a |- ( \imp ( \kore-valid ph0 ph1 ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \kore-valid ph0 ph2 ) ) ) $.

${
    kore-mp-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-mp-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $.
    kore-mp-alt   $a |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $.
$}

${
    kore-weakened-mp.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
    kore-weakened-mp.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-weakened-mp   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $.
$}

kore-weakening-alt $a |- ( \imp ( \kore-valid ph0 ph1 ) ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) ) $.

${
    kore-weakening.0 $e |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $.
    kore-weakening   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
$}

kore-implies-transitivity $a |- ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) ) $.

${
    rule-kore-implies-transitivity.0 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $.
    rule-kore-implies-transitivity.1 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) $.
    rule-kore-implies-transitivity $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) $.
$}

kore-or-intro-left $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph1 ph2 ) ) ) ) ) $.

kore-or-intro-right $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ph1 ) ) ) ) ) $.

${
    kore-or-intro-left-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-intro-left-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-intro-left-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph1 ph2 ) ) ) ) $.
$}

${
    kore-or-intro-right-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-intro-right-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-intro-right-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ph1 ) ) ) ) $.
$}

kore-or-elim-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \imp ( \in-sort ph3 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) ) ) ) ) $.

${
    kore-or-elim-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-elim-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-elim-alt3.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-or-elim-alt3   $a
        |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ph3 )
                                        ( \kore-implies ph0 ( \kore-implies ph0 ph2 ph3 )
                                        ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) ) ) $.
$}

${
    kore-or-elim.0 $e |- ( \in-sort ph1 ph0 ) $.
    kore-or-elim.1 $e |- ( \in-sort ph2 ph0 ) $.
    kore-or-elim.2 $e |- ( \in-sort ph3 ph0 ) $.
    kore-or-elim.3 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) $.
    kore-or-elim.4 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) $.
    kore-or-elim $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) $.
$}

${
    kore-or-elim-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-elim-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-elim-alt2.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-or-elim-alt2.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $.
    kore-or-elim-alt2.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-or-elim-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) $.
$}

kore-and-elim-left-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ( \kore-valid ph0 ph1 ) ) ) $.

kore-and-elim-right-alt $a |- ( \imp ( \in-sort ph2 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ( \kore-valid ph0 ph2 ) ) ) $.

kore-and-elim-left $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph1 ) ) ) ) $.

kore-and-elim-right $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph2 ph1 ) ph1 ) ) ) ) $.

${
    kore-and-elim-left-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-elim-left-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-elim-left-alt3   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph1 ) ) ) $.
$}

${
    kore-and-elim-right-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-elim-right-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-elim-right-alt3   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph2 ) ) ) $.
$}

${
    kore-and-elim-left-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-elim-left-alt2.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ) $.
    kore-and-elim-left-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $.
$}

${
    kore-and-elim-right-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-elim-right-alt2.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ) $.
    kore-and-elim-right-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $.
$}

kore-and-intro $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) ) $.

${
    kore-and-intro-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-intro-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-intro-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $.
    kore-and-intro-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $.
    kore-and-intro-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-and-intro-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-intro-alt2.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-and-intro-alt2.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-and-intro-alt2.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $.
    kore-and-intro-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ph3 ) ) ) ) $.
$}

kore-implies-elim $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \imp ph1 ph2 ) ) ) ) $.

${
    kore-implies-elim-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-elim-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-elim-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-elim-alt   $a |- ( \imp th0 ( \imp ph1 ph2 ) ) $.
$}

${
    kore-implies-intro.0 $e |- ( \in-sort ph1 ph0 ) $.
    kore-implies-intro.1 $e |- ( \in-sort ph2 ph0 ) $.
    kore-implies-intro.2 $e |- ( \imp ph1 ph2 ) $.
    kore-implies-intro $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $.
$}

${
    kore-implies-intro-alt.0 $e |- ( \is-predicate th0 ) $.
    kore-implies-intro-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-intro-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-intro-alt.3 $e |- ( \imp th0 ( \imp ph1 ph2 ) ) $.
    kore-implies-intro-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
$}


${
    kore-implies-reflexivity.0 $e |- ( \in-sort ph1 ph0 ) $.
    kore-implies-reflexivity $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph1 ) ) $.
$}

${
    rule-kore-mp.0 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $.
    rule-kore-mp.1 $e |- ( \kore-valid ph0 ph1 ) $.
    rule-kore-mp $a |- ( \kore-valid ph0 ph2 ) $.
$}

kore-contrapositive $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph0 ( \kore-not ph0 ph2 ) ( \kore-not ph0 ph1 ) ) ) ) ) ) $.

${
    rule-kore-contrapositive.0 $e |- ( \in-sort ph1 ph0 ) $.
    rule-kore-contrapositive.1 $e |- ( \in-sort ph2 ph0 ) $.
    rule-kore-contrapositive.2 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $.
    rule-kore-contrapositive $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ph2 ) ( \kore-not ph0 ph1 ) ) ) $.
$}

${
    kore-contrapositive-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-contrapositive-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-contrapositive-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-contrapositive-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ph2 ) ( \kore-not ph0 ph1 ) ) ) ) $.
$}

kore-dn-intro $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ) ) ) $.

kore-dn-elim $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph1 ) ) ) $.

${
    kore-de-morgan-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph1 ) ) ) $.
    kore-de-morgan-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph2 ) ) ) $.
    kore-de-morgan-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-or ph0 ph1 ph2 ) ) ) ) $.
$}

${
    kore-implies-reflexivity-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-reflexivity-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph1 ) ) ) $.
$}

${
    kore-iff-reflexivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-iff-reflexivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph1 ) ) ) $.
$}

${
    kore-implies-transitivity-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-transitivity-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-implies-transitivity-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-implies-transitivity-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-transitivity-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-transitivity-alt2.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-implies-transitivity-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph0 ( \kore-implies ph0 ph2 ph3 ) ( \kore-implies ph0 ph1 ph3 ) ) ) ) ) $.
$}

${
    kore-iff-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-iff-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-iff-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-iff-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
    kore-iff-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph2 ph3 ) ) ) $.
    kore-iff-transitivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-iff-symmetry.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-iff-symmetry.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-iff-symmetry.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
    kore-iff-symmetry   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph2 ph1 ) ) ) $.
$}

${
    kore-and-commutativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-commutativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-commutativity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph2 ph1 ) ) ) ) $.
$}

${
    kore-and-associativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-associativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-associativity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-and-associativity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-and ph0 ph1 ( \kore-and ph0 ph2 ph3 ) ) ( \kore-and ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) ) $.
$}

${
    kore-or-commutativity-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-commutativity-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-commutativity-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph0 ph2 ph1 ) ) ) ) $.
$}

${
    kore-or-commutativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-commutativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-commutativity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph0 ph2 ph1 ) ) ) ) $.
$}

${
    kore-or-associativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-associativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-associativity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-or-associativity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-or ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ( \kore-or ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) ) $.
$}

${
    kore-implies-compat-in-kore-and.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-compat-in-kore-and.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-compat-in-kore-and.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-implies-compat-in-kore-and.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-implies-compat-in-kore-and.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-compat-in-kore-and.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph4 ) ) ) $.
    kore-implies-compat-in-kore-and   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph3 ) ( \kore-and ph0 ph2 ph4 ) ) ) ) $.
$}

${
    kore-iff-compat-in-kore-and.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-iff-compat-in-kore-and.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-iff-compat-in-kore-and.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-iff-compat-in-kore-and.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-iff-compat-in-kore-and.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
    kore-iff-compat-in-kore-and.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph3 ph4 ) ) ) $.
    kore-iff-compat-in-kore-and   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-and ph0 ph1 ph3 ) ( \kore-and ph0 ph2 ph4 ) ) ) ) $.
$}

${
    kore-implies-compat-in-kore-or.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-compat-in-kore-or.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-compat-in-kore-or.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-implies-compat-in-kore-or.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-implies-compat-in-kore-or.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-compat-in-kore-or.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph4 ) ) ) $.
    kore-implies-compat-in-kore-or   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-or ph0 ph2 ph4 ) ) ) ) $.
$}

${
    kore-iff-compat-in-kore-or.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-iff-compat-in-kore-or.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-iff-compat-in-kore-or.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-iff-compat-in-kore-or.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-iff-compat-in-kore-or.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
    kore-iff-compat-in-kore-or.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph3 ph4 ) ) ) $.
    kore-iff-compat-in-kore-or   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-or ph0 ph2 ph4 ) ) ) ) $.
$}

${
    kore-iff-elim-left.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-iff-elim-left.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-iff-elim-left.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
    kore-iff-elim-left   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-iff-elim-right.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-iff-elim-right.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-iff-elim-right.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
    kore-iff-elim-right   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) ) $.
$}

${
    kore-and-top-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-top-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-top-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-and ph0 ph1 ( \kore-top ph0 ) ) ph2 ) ( \kore-and ph0 ph1 ph2 ) ) ) ) $.
$}

${
    kore-anp-top.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-top.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ( \kore-top ph0 ) ) ) ) $.
    kore-anp-top   $a |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $.
$}

${
    kore-imp-conj-simplify.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-imp-conj-simplify.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-imp-conj-simplify.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-imp-conj-simplify.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-imp-conj-simplify.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-and ph0 ph1 ph4 ) ) ) ) $.
    kore-imp-conj-simplify   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-and ph0 ph2 ph4 ) ) ) ) $.
$}


${
    kore-not-elim.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-not-elim.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-not-elim.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-not-elim.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph1 ) ) ) $.
    kore-not-elim   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
$}

${
    kore-or-intro-left-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph1 ) ) ) $.
    kore-or-intro-left-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) $.
$}

${
    kore-or-intro-right-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph2 ) ) ) $.
    kore-or-intro-right-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) $.
$}

${
    kore-curry.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
    kore-curry   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
$}

${
    kore-uncurry.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
    kore-uncurry   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
$}

${
    kore-premise-switch.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-premise-switch.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-premise-switch.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
    kore-premise-switch   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ( \kore-implies ph0 ph1 ph3 ) ) ) ) $.
$}

${
    kore-and-intro-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-intro-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-intro-alt3.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-and-intro-alt3   $a
        |- ( \imp th0 ( \kore-valid ph0
            ( \kore-iff ph0 ( \kore-and ph0 ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ph3 ) )
                            ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ph3 ) ) ) ) ) $.
$}

${
    kore-weakening-imp2.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-weakening-imp2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph3 ph1 ) ( \kore-implies ph0 ph3 ph2 ) ) ) ) $.
$}

${
    kore-weakening-imp3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-weakening-imp3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-weakening-imp3.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-weakening-imp3.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
    kore-weakening-imp3   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph4 ph1 ) ( \kore-implies ph0 ( \kore-implies ph0 ph4 ph2 ) ( \kore-implies ph0 ph4 ph3 ) ) ) ) ) $.
$}

${
    kore-and-or-distributivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-or-distributivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-or-distributivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-and-or-distributivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-or ph0 ph2 ph3 ) ) ( \kore-or ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) ) $.
$}

${
    kore-and-or-distributivity-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-and-or-distributivity-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-and-or-distributivity-alt.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-and-or-distributivity-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ( \kore-or ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) ) $.
$}
