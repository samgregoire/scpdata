##' Derks et al. 2022 - plexDIA (Nat. Biotechnol.): PDAC vs melanoma
##' cells vs monocytes
##'
##' Single cell proteomics data acquired by the Slavov Lab using the
##' plexDIA protocol. It contains quantitative information from
##' pancreatic ductal acinar cells (PDAC; HPAF-II), melanoma cells
##' (WM989-A6-G3) and monocytes (U-937) at precursor and protein
##' level. The each run acquired 3 samples thanks to mTRAQ
##' multiplexing.
##'
##' @format A [QFeatures] object with 66 assays, each assay being a
##' [SingleCellExperiment] object. The assays either hold the DIA-NN
##' main output report table or the DIA-NN MS1 extracted signal table.
##' The DIA-NN main output report table contains the results of the spectrum
##' identification and quantification. The DIA-NN MS1 extracted
##' signal table contains quantification for all mTRAQ channels if its
##' precursors was identified in at least one of the channels,
##' regardless of whether there is sufficient evidence in those
##' channels at 1% FDR.
##'
##' The data is composed of three datasets
##'
##' 1. **Bulk**: dataset containing bulk (100-cell) data acquired
##'    using a Q-Exactive mass spectrometer. Assays 1-3 contain data
##'    from the DIA-NN main output report; assay 4 is the DIA-NN MS1
##'    extracted signal.
##' 2. **tims**: dataset containing single-cell data acquired using a
##'    timsTOF-SCP mass spectrometer. Assays 5-15  contain data
##'    from the DIA-NN main output report; assay 16 is the DIA-NN MS1
##'    extracted signal.
##' 3. **qe**: dataset containing single-cell data acquired
##'    using a Q-Exactive mass spectrometer. Assays 17-64 contain data
##'    from the DIA-NN main output report; assay 65 is the DIA-NN MS1
##'    extracted signal.
##'
##' The last assay `proteins` contains the processed protein data
##' table generated by the authors.
##'
##' The `colData(derks2022())` contains cell type annotations and
##' batch annotations. The description of the `rowData` fields for the
##' different assays can be found in the
##' [`DIA-NN` documentation](https://github.com/vdemichev/DiaNN#readme).
##'
##' @section Acquisition protocol:
##'
##' The data were acquired using the following setup. More information
##' can be found in the source article (see `References`).
##'
##' - **Cell isolation**: CellenONE cell sorting.
##' - **Sample preparation** performed using the improved SCoPE2
##'   protocol using the CellenONE liquid handling system. nPOP cell
##'   lysis (DMSO) + trypsin digestion + mTRAQ (3plex) labelling and
##'   pooling. A target library was generated as well to
##'   perform prioritized DDA (Huffman et al. 2022) using MaxQuant.Live
##'   (2.0.3).
##' - **Separation**: `bulk` - online nLC (Dionex UltiMate 3000 UHPLC)
##'   with a 25 cm × 75 µm IonOpticks Aurora Series UHPLC column
##'   (AUR2-25075C18A), 200nL/min. `qe` - online nLC (Dionex UltiMate
##'   3000 UHPLC) with a 15 cm × 75 µm IonOpticks Aurora Series UHPLC
##'   column (AUR2-15075C18A), 200nL/min. `tims` - nanoElute liquid
##'   chromatography system (Bruker Daltonics) using a 25 cm × 75 µm,
##'   1.6-µm C18 (AUR2-25075C18A-CSI, IonOpticks).
##' - **Ionization**: ESI.
##' - **Mass spectrometry**: cf article.
##' - **Data analysis**: DIA-NN (1.8.1 beta 16).
##'
##' @section Data collection:
##'
##' The data were collected from a shared Google Drive
##' [folder](https://drive.google.com/drive/folders/1pUC2zgXKtKYn22mlor0lmUDK0frgwL)
##' that is accessible from the SlavovLab website (see `Source` section).
##'
##' For each dataset separately, we combined the sample annotation
##' and the DIANN tables in a [QFeatures] object following the `scp`
##' data structure. We then combined the three datasets in a single
##' `QFeatures` object. We load the proteins table processed by the
##' authors as a [SingleCellExperiment] object and adapted the sample
##' names to match those in the `QFeatures` object. We added the
##' protein data as a new assay and link the precursors to proteins
##' using the `Protein.Group` variable from the `rowData`.
##'
##' @source
##' The data were downloaded from the
##' [Slavov Lab](https://scp.slavovlab.net/Derks_et_al_2022) website.
##' The raw data and the quantification data can also be found in the
##' massIVE repository `MSV000089093`.
##'
##' @references
##' Derks, Jason, Andrew Leduc, Georg Wallmann, R. Gray Huffman,
##' Matthew Willetts, Saad Khan, Harrison Specht, Markus Ralser,
##' Vadim Demichev, and Nikolai Slavov. 2022. "Increasing the
##' Throughput of Sensitive Proteomics by plexDIA." Nature
##' Biotechnology, July.
##' [Link to article](http://dx.doi.org/10.1038/s41587-022-01389-w)
##'
##' @examples
##' \donttest{
##' derks2022()
##' }
##'
##' @keywords datasets
##'
"derks2022"
