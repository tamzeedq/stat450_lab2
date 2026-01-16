# Preamble ####
library(tidyverse)
library(readr)
library(here)
library(janitor)

# Fill in your code where necessary

# Read the raw data
raw_dat <- read_csv(here("data", "raw_data.csv"))

# Wrangle the data
new_dat <- raw_dat %>% 
  clean_names() %>% 
  filter(temperature_celsius > 10)

# Save the processed data
write_rds(new_dat, here("data", "processed_data.rds"))
