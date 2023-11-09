module ONESTEP

imports DOMAINS

syntax A ::= f(Int)
           | g(Int)

rule f(X:Int) => g(X +Int 1)

endmodule
