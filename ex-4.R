print("Two vectors of different lengths:")

v1 <- c(1, 3, 4, 5)
v2 <- c(10, 11, 12, 13, 14, 15)

print(v1)
print(v2)

result <- array(c(v1, v2), dim = c(3, 3, 2))

print("New array:")
print(result)
