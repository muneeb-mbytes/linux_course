# Clearing the screen
clear 
# Getting the current working directory
setenv WORKING_PATH `pwd`

# Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls
cd $WORKING_PATH/experiment/ls
# Creating certain files and folders
mkdir -p dir1/ dir2
touch file1.txt
touch file2.txt
# ls -ltr command  will sort the list by displaying recently modified filed at the bottom.

echo ""
echo "${RED}Command: ls -ltr ${NC}"

echo ""
echo "${RED}Description: Sorting the list by displaying recently modified at the bottom ${NC}"
echo ""


echo "${RED}Expected Output: ${NC}"
echo ""
ls -ltr
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
ls -ltr <enter> \
Compare your output  with the  expected output ${NC}"
echo ""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "ls -ltr") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`
end
echo ""
echo "${GREEN}Actual Output:${NC}"
echo ""
ls -ltr
echo ""
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${PURPLE}Good job!\
Now try to learn next command (ls /) ${NC}"
echo ""
echo "${RED}Source ls_root.csh${NC} "
cd -
echo ""
