setwd("C:\\Users\\MSI GF63\\Desktop\\IT24101049")
observed <- c(120,95,85,100)
expected_prob <- rep(0.25,4)
total_purchases <- sum(observed)
expected <- expected_prob * total_purchases
chisq_result <- chisq.test (observed, p = expected_prob)
chisq_result