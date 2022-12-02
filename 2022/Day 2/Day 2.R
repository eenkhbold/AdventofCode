input_file_dir <- "./Day 2/input.txt" 

input_raw <- read.delim(file=input_file_dir,
           sep = "\n",
           header = FALSE,
           col.names = c("hands"),
           na.strings = "",
           blank.lines.skip = FALSE)

permutations <- expand.grid(c("A","B","C"),c("X","Y","Z"))
lookup_temp <- matrix(nrow=9,data = paste(permutations$Var1,permutations$Var2),byrow = TRUE)
points <- c(4,1,7,8,5,2,3,9,6)
lookup <- as.data.frame(cbind(lookup_temp,points))

output <- merge(x=input_raw,
                y=lookup,
                by.x="hands",
                by.y="V1",
                all.x = TRUE,
                all.y = FALSE)

output$points <- as.integer(output$points)
sum(output$points)

# Part 2:
new_points <- c(3,1,2,4,5,6,8,9,7)
new_lookup <- as.data.frame(cbind(lookup_temp,new_points))
new_output <- merge(x=input_raw,
                y=new_lookup,
                by.x="hands",
                by.y="V1",
                all.x = TRUE,
                all.y = FALSE)

new_output$new_points <- as.integer(new_output$new_points)
sum(new_output$new_points)