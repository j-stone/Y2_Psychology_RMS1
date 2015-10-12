plot(df$anx_score_1, df$rt)
abline(lm(df$rt ~ 1), lw = 1, col = "Red")
abline(lm(df$rt ~ df$anx_score_1), lw = 2, col = "Blue")