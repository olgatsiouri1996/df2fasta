# Function to convert a Data Frame to a FASTA file with wrapping
df2fasta <- function(df, file_name, line_width = 80) {
  # Open a connection to the output file
  file_conn <- file(file_name, open = "w")

  # Loop through each row of the DataFrame
  for (i in 1:nrow(df)) {
    # Get the sequence ID and sequence from the DataFrame
    seq_id <- df[i, 1]
    sequence <- as.character(df[i, 2])

    # Write the sequence ID to the file in FASTA format
    writeLines(paste0(">", seq_id), file_conn)

    # Split the sequence into lines of specified width
    seq_lines <- strsplit(sequence, paste0("(?<=.{", line_width, "})"), perl = TRUE)[[1]]

    # Write the sequence lines to the file
    writeLines(seq_lines, file_conn)
  }

  # Close the connection to the file
  close(file_conn)
}

