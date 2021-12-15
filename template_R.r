
#!/usr/bin/env Rscript

#upload required libraries
library(data.table)
library(tidyverse)

#set up to recognise input variables:
args = commandArgs(TRUE)

df1_file = args[1]
df2_file = args[2]

#load input:
df1 <- fread(df1_file,header=F,fill=T)
df2 <- fread(df2_file,header=T)

#examples of data handling:
#delete a column (the first one)
df1 <- df1[-1,]
#filter for specific column with tidyverse syntax
df1 <- df1 %>% select(V1,V7,V8)
#rename columns
colnames(df1) <- c("key_col","df1_colA","df1_colB")
colnames(df2) <- c("key_col","df2_colZ","df2_colY")

#join df1 and df2:
join_df	<- full_join(df1,df2,by="key_col")

#save the join_df:
fwrite(join_df,"/path/to/file.txt",quote=FALSE,row.names=FALSE,col.names=F,na="NA")


