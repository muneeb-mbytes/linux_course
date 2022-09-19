# Clearing the screen
clear 
# Getting the current working directory
setenv WORKING_PATH `pwd`

## Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
# # Creating certain files and folders
mkdir -p dir1/ dir2
touch file1.txt
touch file2.txt
cd $WORKING_PATH/experiment/ls/dir1
ln -s /$WORKING_PATH/experiment/ link
# ls -la command display the file or directories in a table format with extra information including hidden files or directories.

echo ""
echo "${RED}Command: ls -la ${NC}"

echo ""
echo "${RED}Description: List directories and  files including hidden files ${NC}"
echo ""


echo "${RED}Expectecd Output:${NC}"
echo ""
ls -la
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
ls -la <enter> \
Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`
echo""
while ( !("$mainmenuinput" == "ls -la") )
echo "${RED}Command typed is wrong${NC}"
echo""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`

echo ""
end
echo "${GREEN}Actual Output:${NC}"
echo ""
ls -la
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${PURPLE}Good job!\
Now try to learn next command (ls -lh) ${NC}"
echo ""
echo "${RED}source ls-lh.csh${NC}"
rm link
cd ../
cd ../
cd ../



echo ""
