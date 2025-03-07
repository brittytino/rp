library(bitops)

a <- 5 
b <- 3 

and_result <- bitwAnd(a, b)
cat("Bitwise AND of", a, "and", b, "is:", and_result, "\n") 

or_result <- bitwOr(a, b)
cat("Bitwise OR of", a, "and", b, "is:", or_result, "\n") 

xor_result <- bitwXor(a, b)
cat("Bitwise XOR of", a, "and", b, "is:", xor_result, "\n") 

shift_left <- bitwShiftL(a, 1) 
cat(a, "shifted left by 1 bit is:", shift_left, "\n") 

shift_right <- bitwShiftR(a, 1) 
cat(a, "shifted right by 1 bit is:", shift_right, "\n") 

combined_result <- bitwOr(bitwAnd(a, b), bitwShiftL(a, 2))
cat("Combined operation result is:", combined_result, "\n")
