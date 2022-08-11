#Clearing the screen
clear 
# Getting the current working directory
setenv WORKING_PATH `pwd`

## Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
#     # Creating certain files and folders
mkdir -p dir_b
mkdir -p dir_a
touch file.txt
touch verilog.txt
# ls -r command display the list in reverse order

echo ""
echo "${RED}Command: ls -r ${NC}"

echo ""
echo "${RED}Description: Display the list in  reversing order(alphabetical) ${NC}"
echo ""


echo "${RED}Expected Output: ${NC}"
echo ""
ls -r
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
       if ("$mainmenuinput" == "ls -r") then
       echo "${RED}Actual Output:${NC}"
       echo ""
       ls -r
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


