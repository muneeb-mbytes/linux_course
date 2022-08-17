# Clearing the screen
clear 

# Getting the current working directory
setenv WORKING_PATH `pwd`

# Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/copy

cd $WORKING_PATH/experiment/copy
## # Creating certain files and folders
mkdir -p dir1
cd dir1/
touch file1.txt file2.txt file3.txt
cd ..

# cp-r command copy all the folders/files to the destination directory.

echo ""
echo "${RED}Command: cp -r [source directory] [destination directory] ${NC}"

echo ""
echo "${RED}Description: copy all the contents recursively \
from source directory to destination directory${NC}"

echo ""
echo "${RED}Expected Output: ${NC}"
cp -r dir1/ dir3/
echo ""
echo "destination directory contents:"
echo ""
cd dir3/
ls
echo "${RED}--------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""

echo "\
${GREEN}Please try the below command  \
cp -r dir1/ dir3/ <enter> \
Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "cp -r dir1/ dir3/") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command: cp -r dir1 dir3${NC}:"
echo ""
set mainmenuinput = `head -1`
echo ""
end

echo ""
echo "${GREEN}Actual Output:${NC}"
cp -r dir1/ dir3/
echo ""
echo "to go into dir3 type: cd dir3"
set mainmenuinput1 = `head -1`
while ( !("$mainmenuinput1" == "cd dir3") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command: cd dir3${NC}:"
echo ""
set mainmenuinput1 = `head -1`
echo ""
end
cd dir3

echo ""
echo "to check contents of dir3 type: ls"
set mainmenuinput2 = `head -1`
while ( !("$mainmenuinput2" == "ls") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command: ls${NC}:"
echo ""
set mainmenuinput2 = `head -1`
echo ""
end
echo ""
ls
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"

echo ""
echo "${PURPLE}Good job!\
Now try to learn other commands${NC}"
#cd dir1/
rm -rf dir3/
echo ""
cd -
echo ""

