# df2fasta
 R Function that Converts Dataframe to FASTA 
# Usage 
1. Add the function from `df2fasta.R` to your R script and run it
2. Run the function as follows:
```R
df2fasta(df=dat,file_name="out.fasta",line_width = 60)  
```  
Where `dat` is a DataFrame with 2 columns: fasta identifier and fasta sequence and `line_width` is the number of characters per line(Default=80)
