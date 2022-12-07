import sys
import re

# Chinese Strands
china_strand_1 = open("./Assets/Data/China/2019-12.fasta", "r")
china_lines_1 = china_strand_1.readlines()

china_strand_2 = open("./Assets/Data/China/2020-04.fasta", "r")
china_lines_2 = china_strand_2.readlines()

china_strands_3 = open("./Assets/Data/China/2020-12.fasta", "r")
china_lines_3 = china_strands_3.readlines()

china_strands_4 = open("./Assets/Data/China/2021-06.fasta", "r")
china_lines_4 = china_strands_4.readlines()

china_strands_5 = open("./Assets/Data/China/2021-12.fasta", "r")
china_lines_5 = china_strands_5.readlines()

china_strands_6 = open("./Assets/Data/China/2022-02.fasta", "r")
china_lines_6 = china_strands_6.readlines()

# USA Strands
usa_strand_1 = open("./Assets/Data/USA/2020-01.fasta", "r")
usa_lines_1 = usa_strand_1.readlines()

usa_strand_2 = open("./Assets/Data/USA/2020-06.fasta", "r")
usa_lines_2 = usa_strand_2.readlines()

usa_strand_3 = open("./Assets/Data/USA/2020-12.fasta", "r")
usa_lines_3 = usa_strand_3.readlines()

usa_strand_4 = open("./Assets/Data/USA/2021-06.fasta", "r")
usa_lines_4 = usa_strand_4.readlines()

usa_strand_5 = open("./Assets/Data/USA/2021-12.fasta", "r")
usa_lines_5 = usa_strand_5.readlines()

usa_strand_6 = open("./Assets/Data/USA/2022-04.fasta", "r")
usa_lines_6 = usa_strand_6.readlines()

# German Strands
german_strand_1 = open("./Assets/Data/Germany/2020-01.fasta", "r")
german_lines_1 = german_strand_1.readlines()

german_strand_2 = open("./Assets/Data/Germany/2020-06.fasta", "r")
german_lines_2 = german_strand_2.readlines()

german_strand_3 = open("./Assets/Data/Germany/2020-12.fasta", "r")
german_lines_3 = german_strand_3.readlines()

german_strand_4 = open("./Assets/Data/Germany/2021-06.fasta", "r")
german_lines_4 = german_strand_4.readlines()

german_strand_5 = open("./Assets/Data/Germany/2021-12.fasta", "r")
german_lines_5 = german_strand_5.readlines()

german_strand_6 = open("./Assets/Data/Germany/2022-01.fasta", "r")
german_lines_6 = german_strand_6.readlines()

# Indian strands
indian_strand_1 = open("./Assets/Data/India/2020-01.fasta", "r")
indian_lines_1 = indian_strand_1.readlines()

indian_strand_2 = open("./Assets/Data/India/2020-06.fasta", "r")
indian_lines_2 = indian_strand_2.readlines()

indian_strand_3 = open("./Assets/Data/India/2020-12.fasta", "r")
indian_lines_3 = indian_strand_3.readlines()

indian_strand_4 = open("./Assets/Data/India/2021-06.fasta", "r")
indian_lines_4 = indian_strand_4.readlines()

indian_strand_5 = open("./Assets/Data/India/2021-12.fasta", "r")
indian_lines_5 = indian_strand_5.readlines()

indian_strand_6 = open("./Assets/Data/India/2022-01.fasta", "r")
indian_lines_6 = indian_strand_6.readlines()
