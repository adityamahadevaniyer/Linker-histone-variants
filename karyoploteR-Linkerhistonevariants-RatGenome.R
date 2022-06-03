#loading all the required libraries
library(karyoploteR)
library(regioneR)

#Convert the peak files to GRanges 
H1T2 = toGRanges("GSE162144_H1T2_peaks.txt")
H1T = toGRanges("H1T_39Kpeaks_sorted.bed")
HILS1 = toGRanges("Galaxy99-[HILS1_peaks_adma.txt].bed")

#Plot the karyoplot of the rat genome
kp <- plotKaryotype(genome = "rn5")
kpPlotRegions(kp, data = H1T2,col="#AACCFF", r0=0, r1=0.25, avoid.overlapping = FALSE)
at <- autotrack(current.track = 1, total.tracks = 3)
#kpAddLabels(kp, labels = "H1T2", r0=at$r0, r1=at$r1)
kpPlotRegions(kp, data= H1T, col="#FFEECC", r0=0.3, r1=0.55, avoid.overlapping = FALSE)
at <- autotrack(current.track = 2, total.tracks = 3)
#kpAddLabels(kp, labels = "H1T", r0=at$r0, r1=at$r1)
kpPlotRegions(kp, data= HILS1, col="#EEFFCC", r0=0.6, r1=0.85, avoid.overlapping = FALSE)
at <- autotrack(current.track = 3, total.tracks = 3)
#kpAddLabels(kp, labels = "HILS1", r0=at$r0, r1=at$r1)

#Another way of plotting
kp <- plotKaryotype(plot.type=3, main="plot.type=3")
kpDataBackground(kp, data.panel = 1)
kpPlotRegions(kp, data = H1T2,col="#AACCFF", r0=0, r1=0.25, avoid.overlapping = FALSE)
kpPlotRegions(kp, data= H1T, col="#FFEECC", r0=0.3, r1=0.55, avoid.overlapping = FALSE)
kpPlotRegions(kp, data= HILS1, col="#EEFFCC", r0=0.6, r1=0.85, avoid.overlapping = FALSE)



