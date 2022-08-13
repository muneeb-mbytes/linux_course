#Clearing the screen
clear 

# Getting the current working directory
setenv WORKING_PATH `pwd`

# Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
## # Creating certain files and folders
mkdir dir1/ dir2
touch file1.txt
touch file2.txt
echo "Output:"
ls

echo "\
Please try the below command \
ls <enter> \
           \
COmpare your value to expected"
echo -n "Input selection:"
set ls = `head -1`
ls
echo "Go back to directory, where you clone the repository"
