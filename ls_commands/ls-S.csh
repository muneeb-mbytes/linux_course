# Clearing the screen
clear 
#
# Getting the current working directory
setenv WORKING_PATH `pwd`
#
# Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
# Creating certain files and folders
mkdir -p dir1/ dir2
touch file1.txt
touch file2.txt
# ls -S command display files with their sizes.
echo ""
echo "${RED}Command: ls -S ${NC}"
echo ""
echo "${RED}Description: List of files with their sizes. ${NC}"
echo ""
echo "${RED}Expected Output: ${NC}"
echo ""
ls -S
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
ls -S <enter> \
Compare your output  with the  expected output ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "ls -S") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
echo ""
end
echo "${GREEN}Actual Output:${NC}"
echo ""
ls -S
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${PURPLE}Good job!\
Now try to learn next command (ls -lt) ${NC}"
echo ""
echo "${RED}Source ls-lt.csh${NC} "
echo ""
cd -
