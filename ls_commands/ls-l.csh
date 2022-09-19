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
#ls -l command list the content of directory in long list format
#including owner of the content,size of the content,
#last modified date of the content, file or directory name.

echo ""
echo "${RED}Command: ls -l ${NC}"

echo ""
echo "${RED}Description: List content of directory in long list format. ${NC}"
echo ""


echo "${RED}Expected Output: ${NC}"
echo ""
ls -l
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
ls -l <enter> \
Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "ls -l") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`
echo ""
end
echo "${GREEN}Actual Output:${NC}"
echo ""
ls -l
echo ""
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"

echo ""


echo "${PURPLE}Good job!\
Now try to learn next command (ls -la) ${NC}"
echo ""
echo "${RED}source ls-la.csh${NC} "
cd -
echo ""
