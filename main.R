library(seqinr)
library(ggplot2)

# loading the data
# all chinese strand 
covid_china_1 = read.fasta("./Assets/Data/China/2019-12.fasta", 
    as_string = FALSE)
covid_china_1 <- toupper(covid_china_1$NC_045512.2)

covid_china_2 <- read.fasta("./Assets/Data/China/2020-04.fasta",
  as.string = FALSE)
covid_china_2 <- toupper(covid_china_2$MT412340.1)

covid_china_3 <- read.fasta("./Assets/Data/China/2020-12.fasta",
  as.string = FALSE)
covid_china_3 <- toupper(covid_china_3$MW691152.1)

covid_china_4 <- read.fasta("./Assets/Data/China/2021-06.fasta",
  as.string = FALSE)
covid_china_4 <- toupper(covid_china_4$OL663931.1)

covid_china_5 <- read.fasta("./Assets/Data/China/2021-12.fasta",
  as.string = FALSE)
covid_china_5 <- toupper(covid_china_5$OM095411.1)

covid_china_6 <- read.fasta("./Assets/Data/China/2022-02.fasta",
  as.string = FALSE)
covid_china_6 <- toupper(covid_china_6$OM698372.1)

# all indian strands
covid_india_1 <- read.fasta("./Assets/Data/India/2020-01.fasta",
  as.string = FALSE)
covid_india_1 <- toupper(covid_india_1$MT012098.1)

covid_india_2 <- read.fasta("./Assets/Data/India/2020-06.fasta",
  as.string = FALSE)
covid_india_2 <- toupper(covid_india_2$MT676397.1)

covid_india_3 <- read.fasta("./Assets/Data/India/2020-12.fasta",
  as.string = FALSE)
covid_india_3 <- toupper(covid_india_3$MZ268637.1)

covid_india_4 <- read.fasta("./Assets/Data/India/2021-06.fasta",
  as.string = FALSE)
covid_india_4 <- toupper(covid_india_4$MZ540875.1)

covid_india_5 <- read.fasta("./Assets/Data/India/2021-12.fasta",
  as.string = FALSE)
covid_india_5 <- toupper(covid_india_5$OM349962.1)

covid_india_6 <- read.fasta("./Assets/Data/India/2022-01.fasta")
covid_india_6 <- toupper(covid_india_6$ON060067.1)

# all US strands
covid_usa_1 <- read.fasta("./Assets/Data/USA/2020-01.fasta",
  as.string = FALSE)
covid_usa_1 <- toupper(covid_usa_1$ON085102.1)

covid_usa_2 <- read.fasta("./Assets/Data/USA/2020-06.fasta",
  as.string = FALSE)
covid_usa_2 <- toupper(covid_usa_2$OM181076.1)

covid_usa_3 <- read.fasta("./Assets/Data/USA/2020-12.fasta",
  as.string = FALSE)
covid_usa_3 <- toupper(covid_usa_3$ON141992.1)

covid_usa_4 <- read.fasta("./Assets/Data/USA/2021-06.fasta",
  as.string = FALSE)
covid_usa_4 <- toupper(covid_usa_4$ON184839.1)

covid_usa_5 <- read.fasta("./Assets/Data/USA/2021-12.fasta",
  as.string = FALSE)
covid_usa_5 <- toupper(covid_usa_5$OL696186.1)

covid_usa_6 <- read.fasta("./Assets/Data/USA/2022-04.fasta")
covid_usa_6 <- toupper(covid_usa_6$ON357908.1)

# all german strands
covid_ger_1 <- read.fasta("./Assets/Data/Germany/2020-01.fasta",
  as.string = FALSE)
covid_ger_1 <- toupper(covid_ger_1$MT270104.1)

covid_ger_2 <- read.fasta("./Assets/Data/Germany/2020-06.fasta",
  as.string = FALSE)
covid_ger_2 <- toupper(covid_ger_2$OU072903.1)

covid_ger_3 <- read.fasta("./Assets/Data/Germany/2020-12.fasta",
  as.string = FALSE)
covid_ger_3 <- toupper(covid_ger_3$OM462740.1)

covid_ger_4 <- read.fasta("./Assets/Data/Germany/2021-06.fasta",
  as.string = FALSE)
covid_ger_4 <- toupper(covid_ger_4$OM463330.1)

covid_ger_5 <- read.fasta("./Assets/Data/Germany/2021-12.fasta",
  as.string = FALSE)
covid_ger_5 <- toupper(covid_ger_5$OM462909.1)

covid_ger_6 <- read.fasta("./Assets/Data/Germany/2022-01.fasta",
  as.string = FALSE)
covid_ger_6 <- toupper(covid_ger_6$OV665387.1)

# Returns the length of the DNA strand
dna_size <- function(dna) {
    return (length(dna))
}

# Getting the length of each DNA strand
china_1_len <- dna_size(covid_china_1)
china_2_len <- dna_size(covid_china_2)
china_3_len <- dna_size(covid_china_3)
china_4_len <- dna_size(covid_china_4)
china_5_len <- dna_size(covid_china_5)
china_6_len <- dna_size(covid_china_6)
china_len_arr <- c(china_1_len, china_2_len, china_3_len,
  china_4_len, china_5_len, china_6_len)

india_1_len <- dna_size(covid_india_1)
india_2_len <- dna_size(covid_india_2)
india_3_len <- dna_size(covid_india_3)
india_4_len <- dna_size(covid_india_4)
india_5_len <- dna_size(covid_india_5)
india_6_len <- dna_size(covid_india_6)
india_len_arr <- c(india_1_len, india_2_len, india_3_len,
  india_4_len, india_5_len, india_6_len)

usa_1_len <- dna_size(covid_usa_1)
usa_2_len <- dna_size(covid_usa_2)
usa_3_len <- dna_size(covid_usa_3)
usa_4_len <- dna_size(covid_usa_4)
usa_5_len <- dna_size(covid_usa_5)
usa_6_len <- dna_size(covid_usa_6)
usa_len_arr <- c(usa_1_len, usa_2_len, usa_3_len,
  usa_4_len, usa_5_len, usa_6_len)

ger_1_len <- dna_size(covid_ger_1)
ger_2_len <- dna_size(covid_ger_2)
ger_3_len <- dna_size(covid_ger_3)
ger_4_len <- dna_size(covid_ger_4)
ger_5_len <- dna_size(covid_ger_5)
ger_6_len <- dna_size(covid_ger_6)
ger_len_arr <- c(ger_1_len, ger_2_len, ger_3_len,
  ger_4_len, ger_5_len, ger_6_len)

# Vector of all names of the DNA strands
names_arr <- c("China (2019-12)", "China (2020-04)",
  "China (2020-12)", "China (2021-06)", "China (2021-12)",
  "China (2022-02)", "India (2020-01)", "India (2020-06)",
  "India (2020-12)", "India (2021-06)", "India (2021-12)",
  "India (2022-01)", "USA (2020-01)", "USA (2020-06)",
  "USA (2020-12)", "USA (2021-06)", "USA (2021-12)",
  "USA (2022-04)", "Alemania (2020-01)", "Alemania (2020-06)",
  "Alemania (2020-12)", "Alemania (2021-06)", "Alemania (2021-12)",
  "Alemania (2022-01)")

# Vector of all lengths of the DNA strands
len_arr <- c(china_len_arr, india_len_arr, usa_len_arr, ger_len_arr)
len_arr <- t(len_arr)

# Matrix of all names and lengths of the DNA strands
len_mat <- matrix(len_arr, nrow = 24, ncol = 1, 
    dimnames = list(c(names_arr), c("Longitud")))

print(len_mat)

# Returns the percentage of each nucleotide in the DNA strand
percentage <- function(dna) {
    x <- dna;
    percentage <- c();
    bases <- c("A", "T", "C", "G");

    for (i in 1:length(bases)) {
        nucleotides <- bases[i];
        prop <- (sum(x == nucleotides) / length(x)) * 100;
        percentage <- c(percentage, prop);
    }

    names(percentage) <- bases
    return (percentage)
}

# Getting the percentage of each nucleotide in each DNA strand
china_1_per <- percentage(covid_china_1)
china_2_per <- percentage(covid_china_2)
china_3_per <- percentage(covid_china_3)
china_4_per <- percentage(covid_china_4)
china_5_per <- percentage(covid_china_5)
china_6_per <- percentage(covid_china_6)
china_arr_per <- c(china_1_per, china_2_per, china_3_per, china_4_per,
  china_5_per, china_6_per)

india_1_per <- percentage(covid_india_1)
india_2_per <- percentage(covid_india_2)
india_3_per <- percentage(covid_india_3)
india_4_per <- percentage(covid_india_4)
india_5_per <- percentage(covid_india_5)
india_6_per <- percentage(covid_india_6)
india_arr_per <- c(india_1_per, india_2_per, india_3_per, india_4_per,
  india_5_per, india_6_per)

usa_1_per <- percentage(covid_usa_1)
usa_2_per <- percentage(covid_usa_2)
usa_3_per <- percentage(covid_usa_3)
usa_4_per <- percentage(covid_usa_4)
usa_5_per <- percentage(covid_usa_5)
usa_6_per <- percentage(covid_usa_6)
usa_arr_per <- c(usa_1_per, usa_2_per, usa_3_per, usa_4_per,
  usa_5_per, usa_6_per)

ger_1_per <- percentage(covid_ger_1)
ger_2_per <- percentage(covid_ger_2)
ger_3_per <- percentage(covid_ger_3)
ger_4_per <- percentage(covid_ger_4)
ger_5_per <- percentage(covid_ger_5)
ger_6_per <- percentage(covid_ger_6)
ger_arr_per <- c(ger_1_per, ger_2_per, ger_3_per, ger_4_per,
  ger_5_per, ger_6_per)

# Vector of all percentages of the DNA strands
per_arr <- c(china_arr_per, india_arr_per, usa_arr_per, ger_arr_per)
per_arr <- t(per_arr)

# Matrix of all names and percentages of the DNA strands
per_mat <- matrix(per_arr, nrow = 24, ncol = 4, byrow=TRUE,
    dimnames = list(c(names_arr), c("A", "T", "C", "G")))

print("Percentage of nucleotides in each DNA strand")
print(per_mat)

# Generates the graph of the percentage of each nucleotide in each DNA strand
bar_graph <- function(percentage) {
    data_names_arr <- c(
        rep(names_arr[1], 4), rep(names_arr[2], 4),
        rep(names_arr[3], 4), rep(names_arr[4], 4),
        rep(names_arr[5], 4), rep(names_arr[6], 4),
        rep(names_arr[7], 4), rep(names_arr[8], 4),
        rep(names_arr[9], 4), rep(names_arr[10], 4),
        rep(names_arr[11], 4), rep(names_arr[12], 4),
        rep(names_arr[13], 4), rep(names_arr[14], 4),
        rep(names_arr[15], 4), rep(names_arr[16], 4),
        rep(names_arr[17], 4), rep(names_arr[18], 4),
        rep(names_arr[19], 4), rep(names_arr[20], 4),
        rep(names_arr[21], 4), rep(names_arr[22], 4),
        rep(names_arr[23], 4), rep(names_arr[24], 4))

    print(data_names_arr)

    # Condition for the percentage of each nucleotide
    condition <- rep(c("A", "T", "C", "G"), 6)

    # Matrix of all names, conditions and percentages of the DNA strands
    # Chinese strand graph
    print("Data frame of Chinese Strand")
    per_custom_mat_china <- matrix(percentages[1:24], nrow = 24, ncol = 1)
    data_china <- data.frame(
        data_names_arr[1:24], condition, per_custom_mat_china)
    print(data_china)

    china_graph <- ggplot(data_china, aes(fill = condition,
        y = per_custom_mat_china, x = data_names_arr[1:24])) +
        geom_bar(position = "dodge", stat = "identity") +
        labs(title = "Comparacion de Nucleotidos cepa de China",
        y = "Porcentajes (%)", x = "Cepas analizadas")

    print(china_graph)

    # Indian strand graph
    print("Data frame de India: ")
    per_custom_mat_india <- matrix(percentages[25:48], nrow = 24, ncol = 1)
    data_india <- data.frame(data_names_arr[25:48], condition,
        per_custom_mat_india)

    print(data_india)

    india_graph <- ggplot(data_india, aes(fill = condition,
        y = per_custom_mat_india, x = data_names_arr[25:48])) +
        geom_bar(position = "dodge", stat = "identity") +
        labs(title = "Comparacion de Nucleotidos cepa de India",
        y = "Porcentajes (%)", x = "Cepas analizadas")

    print(india_graph)

    # USA strand graph
    print("Data frame de USA: ")
    per_custom_mat_usa <- matrix(percentages[49:72], nrow = 24, ncol = 1)
    data_usa <- data.frame(data_names_arr[49:72], condition,
        per_custom_mat_usa)

    print(data_usa)

    usa_graph <- ggplot(data_usa, aes(fill = condition,
        y = per_custom_mat_usa, x = data_names_arr[49:72])) +
        geom_bar(position = "dodge", stat = "identity") +
        labs(title = "Comparacion de Nucleotidos cepa de USA",
            y = "Porcentajes (%)", x = "Cepas analizadas")

    print(usa_graph)

    # German strand graph
    print("Data frame de Alemania")
    per_custom_mat_alemania <- matrix(percentages[73:96], nrow = 24, ncol = 1)
    data_alemania <- data.frame(data_names_arr[73:96], condition,
        per_custom_mat_alemania)

    print(data_alemania)

    ger_graph <- ggplot(data_alemania, aes(fill = condition,
        y = per_custom_mat_alemania, x = data_names_arr[73:96])) +
        geom_bar(position = "dodge", stat = "identity") +
        labs(title = "Comparacion de Nucleotidos cepa de Alemania",
            y = "Porcentajes (%)", x = "Cepas analizadas")

    print(ger_graph)
}

print("\nGraph of the percentage of each nucleotide in each DNA strand")
bar_graph(per_arr)

# GC content of each DNA strand
print("De las cepas de China: ")
print(paste("El contenido GC en ", names_arr[1],
  "es", china_arr_per[3:4]))
print(paste("El contenido GC en ", names_arr[2],
  "es", china_arr_per[7:8]))
print(paste("El contenido GC en ", names_arr[3],
  "es", china_arr_per[11:12]))
print(paste("El contenido GC en ", names_arr[4],
  "es", china_arr_per[15:16]))
print(paste("El contenido GC en ", names_arr[5],
  "es", china_arr_per[19:20]))
print(paste("El contenido GC en ", names_arr[6],
  "es", china_arr_per[23:24]))

print("De las cepas de India")
print(paste("El contenido GC en ", names_arr[7],
  "es", india_arr_per[3:4]))
print(paste("El contenido GC en ", names_arr[8],
  "es", india_arr_per[7:8]))
print(paste("El contenido GC en ", names_arr[9],
  "es", india_arr_per[11:12]))
print(paste("El contenido GC en ", names_arr[10],
  "es", india_arr_per[15:16]))
print(paste("El contenido GC en ", names_arr[11],
  "es", india_arr_per[19:20]))
print(paste("El contenido GC en ", names_arr[12],
  "es", india_arr_per[23:24]))

print("De las cepas de USA")
print(paste("El contenido GC en ", names_arr[13],
  "es", usa_arr_per[3:4]))
print(paste("El contenido GC en ", names_arr[14],
  "es", usa_arr_per[7:8]))
print(paste("El contenido GC en ", names_arr[15],
  "es", usa_arr_per[11:12]))
print(paste("El contenido GC en ", names_arr[16],
  "es", usa_arr_per[15:16]))
print(paste("El contenido GC en ", names_arr[17],
  "es", usa_arr_per[19:20]))
print(paste("El contenido GC en ", names_arr[18],
  "es", usa_arr_per[23:24]))

print("De las cepas de Alemania")
print(paste("El contenido GC en ", names_arr[19],
  "es", ger_arr_per[3:4]))
print(paste("El contenido GC en ", names_arr[20],
  "es", ger_arr_per[7:8]))
print(paste("El contenido GC en ", names_arr[21],
  "es", ger_arr_per[11:12]))
print(paste("El contenido GC en ", names_arr[22],
  "es", ger_arr_per[15:16]))
print(paste("El contenido GC en ", names_arr[23],
  "es", ger_arr_per[19:20]))
print(paste("El contenido GC en ", names_arr[24],
  "es", ger_arr_per[23:24]))

# Complemetary DNA strand
comp_strand <- function(dna) {
    complementary_strand <- dna 

    for (i in length(dna)) {
        if (dna[i] == "A") 
            complementary_strand[i] <- "T"
        else if (dna[i] == "T") 
            complementary_strand[i] <- "A"
        else if (dna[i] == "C") 
            complementary_strand[i] <- "G"
        else if (dna[i] == "G") 
            complementary_strand[i] <- "C"
    }

    return (complementary_strand)
}

# Getting the complementary DNA strand
comp_china_1 <- hebra_comp(covid_china_1)
comp_china_2 <- hebra_comp(covid_china_2)
comp_china_3 <- hebra_comp(covid_china_3)
comp_china_4 <- hebra_comp(covid_china_4)
comp_china_5 <- hebra_comp(covid_china_5)
comp_china_6 <- hebra_comp(covid_china_6)

comp_india_1 <- hebra_comp(covid_india_1)
comp_india_2 <- hebra_comp(covid_india_2)
comp_india_3 <- hebra_comp(covid_india_3)
comp_india_4 <- hebra_comp(covid_india_4)
comp_india_5 <- hebra_comp(covid_india_5)
comp_india_6 <- hebra_comp(covid_india_6)

comp_usa_1 <- hebra_comp(covid_usa_1)
comp_usa_2 <- hebra_comp(covid_usa_2)
comp_usa_3 <- hebra_comp(covid_usa_3)
comp_usa_4 <- hebra_comp(covid_usa_4)
comp_usa_5 <- hebra_comp(covid_usa_5)
comp_usa_6 <- hebra_comp(covid_usa_6)

comp_ger_1 <- hebra_comp(covid_ger_1)
comp_ger_2 <- hebra_comp(covid_ger_2)
comp_ger_3 <- hebra_comp(covid_ger_3)
comp_ger_4 <- hebra_comp(covid_ger_4)
comp_ger_5 <- hebra_comp(covid_ger_5)
comp_ger_6 <- hebra_comp(covid_ger_6)

# Filogenetic tree
library(ape)

dna <- fasta2DNAbin(file = "./Assets/Data/covid.fasta", quiet = FALSE)
print(dna)

unique(dna)

# annotating the tree
annot <- read.csv("./Assets/Data/CSV/datos.csv", header = TRUE, row.names = 1)
annot

# O: indel, indelblock
# not NAN: TV, N, TS,
# NAN: K81, TN93, T92, JC69, f81, f84, BH87 GG95, logdet, paralin,
# raw: debugging
d <- dist.dna(dna, model = "TS")
length(d)

unique(d)

# Creating the tree
matriz_dg <- as.data.frame(as.matrix(d))
matriz_dg <- matriz_dg / 10000

table.paint(matriz_dg, cleg = 0, clabel.row = 0.5, clabel.col = 0.5)

# Reconstructing the tree
tree <- nj(d)
plot(tree, cex = 0.6)
title("Arbol de tipo NJ")

# Endogram
h_cluser <- hclust(d, method = "average", members = NULL)
plot(h_cluser, cex = 0.6)

# Evaluating the tree
my_boots <- boot.phylo(tree, data = dna, 
    function(e) root(nj(dist.dna(e, model = "TS")), 1))

my_pal <- colorRampPalette(c("red", "yellow", "green", "blue"))
plot(tree, edge.width = 1, cex = 0.7)
title("NJ tree + Bootstrap")

tiplabels(frame = "none", pch = 20, 
    col = transp(num2col(as.numeric(annot$year), col.pal = my_pal), .7), 
    cex = 3, fg = "transparent")

temp <- pretty(2020:2022, 2)
legend("bottomright", fill = transp(num2col(temp, col.pal = my_pal), .7),
    leg = temp, ncol = 2)

nodelabels(my_boots, cex = .6)
