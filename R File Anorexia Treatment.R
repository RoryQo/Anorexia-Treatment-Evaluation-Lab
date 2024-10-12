## ------------------------------------------------------------------
# Load data
Anorexia <- read.table("C:\\Users\\roryq\\Downloads\\Anorexia.txt", header=TRUE)


## ------------------------------------------------------------------

# Remove control to test treatment
w <- Anorexia$After[Anorexia$Therapy != "Control"]

# T test  to see of weight increases to above 90 (diagnostic for anorexia) with one tail, because we are checking if it is less

t.test(w,mu=90,alternative= "less")



## ------------------------------------------------------------------
# filter out only cog/behav treatment and do one sided t test
Gains.cog <- Anorexia$Y[ Anorexia$Therapy == "Cog/Behav" ]
t.test(Gains.cog, mu=0, alternative= "greater")



## ------------------------------------------------------------------
# Filter data to seperate treatment types
Gains.cog_b <- Anorexia$Y[ Anorexia$Therapy == "Cog/Behav" ]
Gains.Cont <- Anorexia$Y[ Anorexia$Therapy == "Control" ]
Gains.Fam <- Anorexia$Y[ Anorexia$Therapy == "Family" ]


# two sample t and one sided t test
t.test(Gains.cog_b, Gains.Cont, alternative="greater")



## ------------------------------------------------------------------
# Create funtion to simulate distribution of differences between means
perm_fun <- function(x, nA, nB)
{
  n <- nA + nB
  idx_b <- sample(1:n, nB)
  idx_a <- setdiff(1:n, idx_b)
  mean_diff <- mean(x[idx_b]) - mean(x[idx_a])
  return(mean_diff)
}



## ------------------------------------------------------------------
set.seed(99)

# Create data for test
Y1 = Anorexia$Y[ Anorexia$Therapy != "Family"]
Gains.cog_bb <- Anorexia$Y[ Anorexia$Therapy == "Cog/Behav" ]
Gains.Cont <- Anorexia$Y[ Anorexia$Therapy == "Control" ]
nA = length(Gains.cog_bb)
nB = length(Gains.Cont)

# Call the perm_fun 1000 times to get 1000 mean differences
perm_diffs <- rep(0, 1000)
for (i in 1:1000) {
  perm_diffs[i] = perm_fun(Y1, nA, nB)
}

# Calculate the "p-value"
mean_diff = mean(Gains.cog_bb)-mean(Gains.Cont)
mean(perm_diffs > mean_diff)



## ------------------------------------------------------------------
var.test(Gains.Fam, Gains.Cont, 
         alternative = "two.sided",
         conf.level = 0.95)



## ------------------------------------------------------------------
qqnorm(Gains.Cont, pch = 19, frame = FALSE, main="Normal Q-Q Plot (Control")
qqline(Gains.Cont, col = "steelblue", lwd = 2)



## ------------------------------------------------------------------
Gains.Fam <- Anorexia$Y[ Anorexia$Therapy == "Family" ]
qqnorm(Gains.Fam, pch = 19, frame = FALSE, main="Normal Q-Q Plot (Family")
qqline(Gains.Fam, col = "steelblue", lwd = 2)


