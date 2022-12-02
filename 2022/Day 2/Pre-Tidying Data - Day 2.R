require(tidyverse)

# 
# CHANGE THE DIRECTORY in the line below to point to your downloaded input.txt file
# 
input_file_dir <- "./Day 2/input.txt" 

raw_input <- read_delim(file = input_file_dir,
                        delim = " ",
                        na = "",
                        col_names = FALSE,
                        skip_empty_rows = FALSE)

use_this_to_solve <- raw_input %>% 
  select(opponent_hand=X1,
         your_hand=X2) %>% 
  as.data.frame()

rm(list=setdiff(ls(), "use_this_to_solve"))
# use "use_this_to_solve" as your dataset