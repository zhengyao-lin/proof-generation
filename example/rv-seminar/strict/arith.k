module ARITH-SYNTAX

imports DOMAINS

syntax Exp ::= add(Exp, Exp) [strict]
             | times(Exp, Exp) [strict]
             | Int

endmodule

module ARITH

imports ARITH-SYNTAX

syntax KResult ::= Int

rule add(A:Int, B:Int) => A +Int B
rule times(A:Int, B:Int) => A *Int B

endmodule