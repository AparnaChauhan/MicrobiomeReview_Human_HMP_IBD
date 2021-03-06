InitDataObjects("QiimeOTUTableBIOM", "stat", FALSE)
Convert.TAXdata("otu_table.v1.biom", "", "row", "disc","/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts","/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/biom-format-1.0.0/build/scripts-2.7","/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/biom-format-1.0.0/build/lib")
Read.METdata("hmp2_metadata_modified_IBD_Nephele.csv", "row", "disc");
SanityCheckData("/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts");
FilterVariable("sd", TRUE, 80.0, TRUE, TRUE, 5000, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
Normalization("MedianNorm", "NULL")
PlotNormSummary()
MakeChart("barh", "taxa.all", 1, "HMP.2.206534_R1.fq", 1, "barh.taxa.all.ForwardFastqFile.HMP.2.206534_R1.fq.png", "barh.taxa.all.ForwardFastqFile.HMP.2.206534_R1.fq.300dpi.png", FALSE, TRUE, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
MakeChart("barh", "taxa.all", 3, "Crohns disease", 1, "barh.taxa.all.TreatmentGroup.Crohns disease.png", "barh.taxa.all.TreatmentGroup.Crohns disease.300dpi.png", FALSE, TRUE, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
MakeChart("barh", "taxa.all", 3, "Crohns disease", 1, "barh.taxa.all.TreatmentGroup.Crohns disease.png", "barh.taxa.all.TreatmentGroup.Crohns disease.300dpi.png", FALSE, TRUE, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
MakeChart("barh", "taxa.all", 3, "non Inflammatory Bowel Disease", 1, "barh.taxa.all.TreatmentGroup.non Inflammatory Bowel Disease.png", "barh.taxa.all.TreatmentGroup.non Inflammatory Bowel Disease.300dpi.png", FALSE, TRUE, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
MakeChart("barh", "genus", 3, "non Inflammatory Bowel Disease", 1, "barh.genus.TreatmentGroup.non Inflammatory Bowel Disease.png", "barh.genus.TreatmentGroup.non Inflammatory Bowel Disease.300dpi.png", FALSE, TRUE, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
MakeChart("barh", "genus", 3, "Crohns disease", 1, "barh.genus.TreatmentGroup.Crohns disease.png", "barh.genus.TreatmentGroup.Crohns disease.300dpi.png", FALSE, TRUE, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
MakeChart("barh", "genus", 3, "ulcerative colitis", 1, "barh.genus.TreatmentGroup.ulcerative colitis.png", "barh.genus.TreatmentGroup.ulcerative colitis.300dpi.png", FALSE, TRUE, "/apps/metagenassist/glassfish3/glassfish/domains/domain1/applications/METAGENassist/resources/pythonscripts")
FC.Anal.unpaired(2.0, 0,"genus",8)
PlotFC("genus",8)
FC.Anal.unpaired(2.0, 0,"genus",84)
PlotFC("genus",84)
Ttests.Anal("tt",0.05, FALSE, TRUE,"genus",84)
PlotTT("genus",84)
Ttests.Anal("wc",0.05, FALSE, TRUE,"genus",84)
PlotTT("genus",84)
Ttests.Anal("wc",0.05, FALSE, TRUE,"genus",84)
PlotTT("genus",84)
Volcano.Anal(FALSE, 2.0, 0, 75.0,0.1, TRUE,"genus",84)
PlotVolcano(,"genus",84)
Volcano.Anal(FALSE, 2.0, 0, 75.0,0.1, TRUE,"genus",84)
PlotVolcano(,"genus",84)
Volcano.Anal(FALSE, 2.0, 0, 75.0,0.1, TRUE,"genus",84)
PlotVolcano(,"genus",84)
PerformANOVA("genus",3,"kw", 0.05, "fisher")
PlotAOV()
PerformANOVA("genus",3,"kw", 0.05, "tukey")
PlotAOV()
PerformANOVA("genus",3,"kw", 0.05, "tukey")
PlotAOV()
PerformANOVA("genus",3,"av", 0.05, "tukey")
PlotAOV()
PerformANOVA("genus",3,"av", 0.05, "tukey")
PlotAOV()
PlotCorrHeatMap("pearson","bwm","genus")
PlotCorrHeatMap("spearman","bwm","genus")
PlotCorrHeatMap("spearman","bwm","genus")
PlotCorrHeatMap("kendall","bwm","genus")
PlotCorrHeatMap("kendall","bwm","genus")
PlotCorrHeatMap("pearson","bwm","genus")
PlotCorrHeatMap("pearson","bwm","genus")
PCA.Anal()
PNG.PlotPCAPairSummary("pca-pair-1.png",5,"genus",3)
PlotPCA2DScore(1,2,0.95,1,"genus",3)
PlotPCA3DScore(1,2,3,40,"genus",3)
PlotPCALoading(1,2,"scatter");
PlotPCABiplot(1,2)
PNG.PlotPCAPairSummary("pca-pair-2.png",2,"genus",3)
PNG.PlotPCAPairSummary("pca-pair-3.png",2,"genus",3)
PlotPCAScree(5, "genus" )
PlotPCA2DScore(1,2,0.95,1,"genus",3)
PlotPCA3DScore(1,2,3,40,"genus",3)
PlotPCALoading(1,2,"scatter");
PlotPCABiplot(1,2)
PNG.PlotPCAPairSummary("pca-pair-4.png",5,"genus",3)
PlotPCAScree(5, "genus" )
PlotPCA2DScore(1,2,0.95,1,"genus",3)
PlotPCA3DScore(1,2,3,40,"genus",3)
PlotPCALoading(1,2,"scatter");
PlotPCABiplot(1,2)
PNG.PlotPCAPairSummary("pca-pair-5.png",5,"genus",3)
PlotPCAScree(5, "genus" )
PlotPCA2DScore(1,2,0.95,1,"genus",3)
PlotPCA3DScore(1,2,3,40,"genus",3)
PlotPCALoading(1,2,"scatter");
PlotPCABiplot(1,2)
PNG.PlotPCAPairSummary("pca-pair-6.png",5,"genus",3)
PlotPCAScree(5, "genus" )
PlotPCA2DScore(1,2,0.95,1,"genus",3)
PlotPCA3DScore(1,2,3,40,"genus",3)
PlotPCALoading(1,2,"scatter");
PlotPCABiplot(1,2)
PNG.PlotPCAPairSummary("pca-pair-7.png",5,"genus",3)
PlotPCAScree(5, "genus" )
PlotPCA2DScore(1,2,0.95,1,"genus",3)
PlotPCA3DScore(1,2,3,40,"genus",3)
PlotPCALoading(1,2,"scatter");
PlotPCABiplot(1,2)
PNG.PlotPCAPairSummary("pca-pair-8.png",5,"genus",3)
PlotPCAScree(5, "genus" )
PlotPCA2DScore(1,2,0.95,1,"genus",3)
PlotPCA3DScore(1,2,3,40,"genus",3)
PlotPCALoading(1,2,"scatter");
PlotPCABiplot(1,2)
PLSR.Anal("genus",3)
PlotPLSPairSummary(5,"genus",3)
PNG.PlotPLSPairSummary("pls-pair-1.png",5,"genus",3)
CheckMetadataForPLSVal(3)
PNG.PlotPLS2DScore("pls-score2d-1.png",1,2,0.95,1,"genus",3)
CheckMetadataForPLSVal(3)
PNG.PlotPLS3DScore("pls-score3d-1.png",1, 2, 3, 40, 3)
CheckMetadataForPLSVal(3)
PNG.PlotPLSLoading("pls-loading-1.png", 1, 2,"scatter");
CheckMetadataForPLSVal(3)
PlotHCTree("pearson","ward","genus",3)
PLSR.Anal("genus",3)
PlotPLSPairSummary(5,"genus",3)
PNG.PlotPLSPairSummary("pls-pair-2.png",5,"genus",3)
CheckMetadataForPLSVal(3)
PLSDA.CV("L",5, "Accuracy","genus",3)
PlotPLS.Classification()
PlotPLS.VIP("genus", 3)
PLSDA.Permut(100, "accu", "genus",3)
PlotPLS.Permutation()
PlotHeatMap("pearson","ward","genus",3)
PNG.PlotHeatMap("heatmap-1.png","pearson","ward","bwm", T, T,"genus",3)
PlotHeatMap("euclidean","ward","genus",3)
PNG.PlotHeatMap("heatmap-2.png","euclidean","ward","bwm", T, T,"genus",3)
PlotHeatMap("euclidean","ward","genus",3)
PNG.PlotHeatMap("heatmap-3.png","euclidean","ward","bwm", T, T,"genus",3)
PNG.PlotSubHeatMap("heatmap-4.png","euclidean","ward","bwm", "rf", 25, T, T,"genus",3)
PNG.PlotSubHeatMap("heatmap-5.png","euclidean","ward","bwm", "rf", 25, T, T,"genus",3)
PNG.PlotSubHeatMap("heatmap-6.png","pearson","ward","bwm", "rf", 25, T, T,"genus",3)
PNG.PlotSubHeatMap("heatmap-7.png","pearson","ward","bwm", "rf", 25, T, T,"genus",3)
PNG.PlotSubHeatMap("heatmap-8.png","pearson","ward","bwm", "tanova", 25, T, T,"genus",3)
PNG.PlotSubHeatMap("heatmap-9.png","pearson","ward","bwm", "tanova", 25, T, T,"genus",3)
PlotHCTree("pearson","ward","genus",3)
PlotHCTree("euclidean","ward","genus",3)
PlotHCTree("euclidean","ward","genus",3)
SOM.Anal(1,3,"linear","gaussian","genus")
PlotSOM(,"genus")
SOM.Anal(1,3,"random","gaussian","genus")
PlotSOM(,"genus")
SOM.Anal(1,3,"random","gaussian","genus")
PlotSOM(,"genus")
Kmeans.anal(3,"genus")
plotKmeans("genus")
RF.Anal(500,10,"genus",3)
PlotRF.Classify("genus",3)
PlotRF.VIP("genus",3)
PlotRF.MDS("genus",3)
PlotRF.Outlier("genus",3)
RF.Anal(1000,20,"genus",3)
PlotRF.Classify("genus",3)
PlotRF.VIP("genus",3)
PlotRF.MDS("genus",3)
PlotRF.Outlier("genus",3)
RSVM.Anal(10,"genus",8)
PlotRSVM.Classification("genus")
PlotRSVM.Cmpd("genus")
