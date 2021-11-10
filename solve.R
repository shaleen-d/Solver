# Custom Solver
# Solve <- function(variables, objective function, 
#           Reduction function like max, min, avg, constraints) {
# Function returns max/min/avg value of list of objective function
# Reduce(max/min/avg, list of Objective function values for various combinations
#         of variables)
# List of objective function values can be got by iterating over various values
# of variables with constraints
# 
# }

# Simple case
# We want to maximise x ^ 3 for x > 0, x < 13
search_space <- seq.int(-10000, 10000)
Constraints <- function(x) ifelse(x < 1000 & x > 600, T, F)
Obj_func <- function(x) x ^ 3 - 100 * (x ^ 2)
result_space <- Obj_func(search_space[Constraints(search_space)])
Opt_func <- function(vec) max(vec)
opt_val <- Opt_func(result_space)
pos <- Position(function(x) x == opt_val, result_space)