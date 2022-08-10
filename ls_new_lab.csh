#Clearing the screen
clear 

# Getting the current working directory
setenv WORKING_PATH `pwd`

# Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
## # Creating certain files and folders
## # .....
## 
# Actual command
echo "Output:"
ls 

echo "\
Please try the below command \
ls <enter> \
           \
COmpare your value to expected"
