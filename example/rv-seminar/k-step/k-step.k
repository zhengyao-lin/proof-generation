module KSTEP

imports DOMAINS

syntax A ::= f(Int)

rule f(X:Int) => f(X -Int 1) requires X >Int 0

endmodule
