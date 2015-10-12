# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

id <- sample(1:100)
df <- data.frame(id)
df$gender <- factor(rep(0:2, length.out = length(df$id)),
                    labels = c("male", "female", "non-binary"))
df$age <- sample(x = 17:23, size = length(df$id), replace = TRUE)
df$ group <- factor(rep(0:1, each = 50), labels = c("control", "experimental"))
df$rt <- rnorm(length(df$id), mean = 315.427, sd = 164.224)
df$item_1 <- ordered(rbinom(n = 100, size = 4, prob = .5) + 1)
df$item_2 <- ordered(5 - rbinom(n = 100, size = 4, prob = .4))
df[sample(which(df$gender == "non-binary"), 5), 2] <- NA
df[sample(100, 3), 5] <- NA

df2 <- read.csv(file.path(find.package("swirl"), "Courses", "Y2_Psychology_RMS1",
                 "Data", "swirl_data_frame1.csv"))