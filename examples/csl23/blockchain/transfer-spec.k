requires "imp.k"

module TRANSFER-SPEC
imports IMP

syntax Id ::= "sum" [token]
            | "n" [token]

claim
  <k>
      int sum , n;
      sum = sum + n;
      n = n + 1;
      n = n + 1;
      => .
  </k>
  <state>
    sum |-> ( S:Int => sum + n )
    n   |-> ( N:Int => n + 2 )
  </state>
requires N >=Int 0

endmodule
