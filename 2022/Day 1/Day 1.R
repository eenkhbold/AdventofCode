# Day 1
library(babynames)
babynames::babynames["name"]
input_1 <- "./Day 1/input.txt"
raw_1 <- readLines(con = input_1)
raw_1 <- as.integer(raw_1)
names

length_of_list <- length(raw_1)
max_cal <- 0
fat_elf <- 0
pointer <- 1
while (pointer <= length_of_list) {
  next_cal <- 0
  while (!is.na(raw_1[pointer])) {
    next_cal <- next_cal + raw_1[pointer]
    pointer <- pointer + 1
  }
  if (next_cal>max_cal) {
    fat_elf <- pointer
    max_cal <- next_cal
  }
    pointer <- pointer + 1
}
print(paste0("The fat elf is at position ",fat_elf))
print(paste0("The maximum value is ",max_cal))

# 
library(babynames)
babynames::babynames["name"]
input_1 <- "./Day 1/input.txt"
raw_1 <- readLines(con = input_1)
raw_1 <- as.integer(raw_1)

raw_1 <- as.data.frame(raw_1)
raw_1$name <- NA
n <- 1

for (i in 1:nrow(raw_1)) {
  raw_1$name[i] <- babynames[n,"name"]
  if (is.na(raw_1$raw_1[i])) {
    n <- n+1
  }
}
library(tidyverse)
sums <- raw_1 %>% 
  group_by(name) %>% 
  summarize(sum=sum(raw_1,na.rm=TRUE)) %>% 
  arrange(desc(sum)) %>% 
  head(3) %>% 
  summarize(output=sum(sum))
