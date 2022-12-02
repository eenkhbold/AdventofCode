require(babynames)
require(tidyverse)
library(babynames)
library(tidyverse)

# 
# CHANGE THE DIRECTORY in the line below to point to your downloaded input.txt file
# 
input_file_dir <- "./Day 1/input.txt" 

raw_input <- read_delim(file = input_file_dir,delim = "\n",na = "",col_names = FALSE,skip_empty_rows = FALSE)

raw_input$name <- NA
n <- 1

for (i in 1:nrow(raw_input)) {
  raw_input[i,"name"] <- babynames[n,"name"]
  if (is.na(raw_input[i,1])) {
    n <- n+1
  }
}

use_this_to_solve <- raw_input %>% 
  select(name,
         calories=X1) %>% 
  as.data.frame()

rm(list=setdiff(ls(), "use_this_to_solve"))
# use "use_this_to_solve" as your dataset