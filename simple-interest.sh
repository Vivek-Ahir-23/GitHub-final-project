 #!/bin/bash

# Function to calculate Simple Interest
calculate_simple_interest() {
  local principal=$1
  local rate=$2
  local time=$3
  
  interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
  echo "Simple Interest: $interest"
}

# Getting inputs from the user
echo "Enter the Principal amount (P):"
read principal

echo "Enter the Rate of Interest (R) in percentage:"
read rate

echo "Enter the Time (T) in years:"
read time

# Calling the function to calculate and display the result
calculate_simple_interest $principal $rate $time
