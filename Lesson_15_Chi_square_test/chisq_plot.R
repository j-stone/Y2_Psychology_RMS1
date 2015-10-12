windows(8.5,5)
plot(5,5,type="n",xlim=c(0,16),ylim=c(0,0.5), xlab = expression(chi^2),
     ylab = "Density", bty="l", axes = F,
     main = expression(paste("The ", chi^2, " distribution")))
axis(1, at = seq(0,16, by = 2), pos = -0.02)
axis(2, at = seq(0:0.5, by = 0.1), pos = 0)
line_x <- seq(0.000001,16, length=1000)
colour <- c("#A50026", "#D73027", "#F46D43", "#FDAE61",
            "#D9EF8B", "#A6D96A", "#66BD63", "#1A9850")
for (i in 1:8) {
  line_y <- dchisq(line_x, i)
  lines(line_x, line_y, lw = 2, col = colour[i])
  abline(v = qchisq(.95, i),  lty = 2, lw = 1, col = colour[i])
}
rect(12.2,.22,16.1,.5, col="white")
legend(x="topright", inset=.04, legend = c(1:8), fill = colour,
       title = "Degrees of freedom", ncol=2, bty="n")
legend(x=12.5, y = .32, legend = "Critical value\nfor p < .05", pch = -1, lty = 2,
       lw = 1, bty="n")
rm(colour, i, line_x, line_y)