#Clearing the screen
clear 
# Getting the current working directory
setenv WORKING_PATH `pwd`

## Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
# Creating certain files and folders
mkdir -p dir1/ dir2
touch file1.txt
touch file2.txt
# ls * command display the list of directory and sub-directory.
echo ""
echo "${RED}Command: ls * ${NC}"

echo ""
echo "${RED}Description: List of directory and sub-directory ${NC}"
echo ""


echo "${RED}Expected Output: ${NC}"
echo ""
ls *
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
ls <enter> \
Compare your output  with the  expected output ${NC}"

       echo ""
       echo -n "${PURPLE}Enter Command ${NC}:"
       echo ""
       set mainmenuinput = `head -1`
#echo "print $mainmenuinput"
       if ("$mainmenuinput" == "ls *") then
       echo "${RED}Actual Output:${NC}"
       echo ""
       ls *
       else
       echo "${GREEN}Command wrong${NC}"
       endif




       echo "${RED}--------------------------------------------------------------------------------------------------------------------------------- ${NC}"

       echo ""

       echo "${PURPLE}TO go back to learn \
         more other commands,Go to directory,\
         where you clone the repository by using a command ${NC}"
         echo ""
         echo "${RED}cd -${NC} "


         echo ""
         echo "${RED}------------------------------------------------------------------------------------------------------------------------------- ${NC}"

