windows(8.5,5)
plot(5,5,type="n",xlim=c(-5, 5),ylim=c(0,0.4), xlab = "t",
     ylab = "Density", bty="l", axes = F,
     main = expression(paste("The t distribution")))
axis(1, at = seq(-5, 5, by = 2), pos = -0.02)
axis(2, at = seq(0:0.4, by = 0.1), pos = -5.2)
line_x <- seq(-5, 5, length=1000)
colour <- c("#A50026", "#D73027", "#F46D43", "#FDAE61",
            "#D9EF8B", "#A6D96A", "#66BD63", "#1A9850")
for (i in 1:8) {
  line_y <- dt(line_x, i)
  lines(line_x, line_y, lw = 2, col = colour[i])
  abline(v = qt(.972, i),  lty = 2, lw = 1, col = colour[i])
  line_y <- dt(line_x, i)
  lines(line_x, line_y, lw = 2, col = colour[i])
  abline(v = qt(.025, i),  lty = 2, lw = 1, col = colour[i])
}
rect(2.6,.18,5,.4, col="white")
legend(x="topright", inset=.04, legend = c(1:8), fill = colour,
       title = "Degrees of freedom", ncol=2, bty="n")
legend(x=2.7, y = .265, legend = "Critical value\nfor p < .05", pch = -1, lty = 2,
       lw = 1, bty="n")
rm(colour, i, line_x, line_y)
