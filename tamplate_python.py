"""Import libraries"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


"""sys.argv system"""
import sys
"""Test input from command line in systest.py. NB: first param (sys.argv[0]) is the .py script"""

if(len(sys.argv) != 4):
    print("Dear user, I was expecting 3 params. You gave me ",len(sys.argv)-1)
    exit(1)
else:
    for i in range(0,len(sys.argv)):
        print("Param {}:{} ({})".format(i,sys.argv[i],type(sys.argv[i])))

"""Open, close, iterate in a file"""
file_handle = open("file_name", "file_mode")
file_handle.close()

fh = open("file_samples/textFile.txt", "r") #read-only mode

print("--- File content ---")

for line in fh:
    print(line, end ="") #no need to add a new line

fh.close()

"""Loading data from external files in a pandas dataframe"""
df = pd.read_csv("/path/to/df.csv",
                     sep=",", index_col = 0, header = 0)


"""Select by column DataFrame[col] returns a Series
Select by row label DataFrame.loc[row_label] returns a Series
Select row by integer location DataFrame.iloc[row_position] returns a Series
Slice rows DataFrame[S:E] (S and E are labels, both included) returns a DataFrame
Select rows by boolean vector DataFrame[bool_vect] returns a DataFrame"""

"""Mergng dfs"""
DFs1 = pd.DataFrame(Snp1)
DFs2 = pd.DataFrame(Snp2)

print("Inner merge (only common in both)")
inJ = pd.merge(DFs1,DFs2, on = "id", how = "inner")
print(inJ)
print("")
print("Left merge (IDS from DFs1)")
leftJ = pd.merge(DFs1,DFs2, on = "id", how = "left")
print(leftJ)
print("")
print("Right merge (IDS from DFs2)")
rightJ = pd.merge(DFs1,DFs2, on = "id", how = "right")
print(rightJ)
print("")
print("Outer merge (IDS from both)")
outJ = pd.merge(DFs1,DFs2, on = "id", how = "outer")
print(outJ)
"""group and aggregate elements in a df to compute the mean of the grouped df"""
gDF = DF.groupby("x")
for i,g in gDF:
    print("Group: ", i)
    print(g)
    print(type(g))

aggDF = gDF.aggregate(pd.DataFrame.mean)
