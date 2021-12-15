#!/usr/bin/awk -f

# Retrieve rsid for a variant with chr:pos information in hg19/build 37
# to be executed as: ./retrieve_rsid.awk /path/to/custom_file <(zcat /path/to/rsid_mapping.gz)

# 2 input files: rsid hg19/build 37 from UCSC and custom file with chr:pos information

# custom_file: you know the path. It will have several column, among which the column chr:pos:
# V1 V2 V3 ... chr	pos
#              1	10020


# rsid hg19/build 37 from UCSC (in the cluster called 'rsid_mapping.gz') it looks like:
##CHROM	POS	ID	Amin	Amax
# 1	10020	rs775809821	A	AA
# 1	10039	rs978760828	A	C
# 1	10043	rs1008829651	A	T
# 1	10051	rs1052373574	A	G
# 1	10052	rs1326880612	C	CC
# 1	10055	rs892501864	A	T
# 1	10056	rs768019142	A	AA
# 1	10063	rs1010989343	A	C
# 1	10068	rs1489251879	A	AACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCA


# For each line of the first input file (rsid hg19/build 37 from UCSC) add a chr:pos key
# The array keys are unique so there won't be any duplicates even if you add the same chr, pos twice.
#
# NR = line number over all input files
# FNR = line number in current file
# Hence when NR == FNR you must be in the first input file
# "next" means go to the next line in the file without processing any subsequent rules


NR == FNR {
    rsid[$1][$2] = 1
    next
}

# For the second input file output the header
# (processing will only get this far if the rule above didn't match)
FNR == 1 {
    print
}

# For subsequent lines in the the second file
FNR > 1 {

    # Store a copy of the original line to output
    line = $0
# if chr:pos, substitute ":" to split chr, pos into fields for matching
#    gsub(":", "\t", $0)
}

# Print the original line if chr, pos is in our array of rsid
# check for the right index of column
rsid[$1][$2] {
    print line
}

	
