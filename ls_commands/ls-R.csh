# Clearing the screen
clear 

# # Getting the current working directory
setenv WORKING_PATH `pwd`

# # Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
# ## # Creating certain files and folders
mkdir -p dir1/ dir2
touch file1.txt
touch file2.txt
#ls -R command display the full list of your directory and content of  sub-directory down to the last file.
echo ""
echo "${RED}Command: ls -R ${NC}"

echo ""
echo "${RED}Description: List of directory and sub-directory down to the last file.${NC}"
echo ""


echo "${RED}Expected Output: ${NC}"
echo ""
ls -R
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
       if ("$mainmenuinput" == "ls -R") then
       echo "${RED}Actual Output:${NC}"
       echo ""
       ls -R
       else
       echo "${GREEN}Command wrong${NC}"
       endif




       echo "${RED}---------------------------------------------------------------------------------------------------------------------------------------------- ${NC}"

       echo ""

       echo "${PURPLE}Go back to directory,\
         where you clone the repository by using a command ${NC}"
         echo ""
         echo "${RED}cd - ${NC} "


         echo ""
         echo "${RED}------------------------------------------------------------------------------------------------    --------- ${NC}"
