# Clearing the screen
clear 

# Getting the current working directory
setenv WORKING_PATH `pwd`

# Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/copy

cd $WORKING_PATH/experiment/copy
## # Creating certain files and folders
mkdir -p dir1
cd dir1
touch file1.txt file2.txt file3.txt
cd ..

# cp-r command copy all the folders/files to the destination directory.

echo ""
echo "${RED}Command: cp -r [source directory] [destination directory] ${NC}"

echo ""
echo "${RED}Description: copy all the contents recursively \
from source directory to destination directory${NC}"

echo ""
echo "${BROWN}source directory dir1 contents:${NC}"
cd dir1
ls
cd ..
echo ""
echo "${RED}Expected Output: ${NC}"
echo "${BROWN}source dir1 will be copied to dir3${NC}"
cp -r dir1 dir3
#cp -r dir1/ dir3/
echo ""
echo "destination directory dir3 contents:"
echo ""
cd dir3
ls
echo "${BROWN}Inside dir3 copied dir1 contents:${NC}"
cd dir1
ls
cd ../..
echo "${RED}--------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""

#rm -rf dir3

echo "\
${GREEN}Please try the below command  \
cp -r dir1 dir3 <enter> \
Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "cp -r dir1 dir3") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command: cp -r dir1 dir3${NC}"
echo ""
set mainmenuinput = `head -1`
echo ""
end

echo ""
echo "${GREEN}Actual Output:${NC}"
cp -r dir1 dir3
echo ""
echo "to go into dir3 type: cd dir3"
set mainmenuinput1 = `head -1`
while ( !("$mainmenuinput1" == "cd dir3") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command: cd dir3${NC}"
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
echo -n "${PURPLE}Enter Command: ls${NC}"
echo ""
set mainmenuinput2 = `head -1`
echo ""
end
echo ""
ls
echo "${BROWN}now check copied dir1 contents: type cd dir1${NC}"
set mainmenuinput3 = `head -1`
while ( !("$mainmenuinput3" == "cd dir1") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command: cd dir1${NC}"
echo ""
set mainmenuinput3 = `head -1`
echo ""
end
echo ""
cd dir1

echo "${BROWN}now type ls to check dir1 contents:${NC}"
set mainmenuinput4 = `head -1`
while ( !("$mainmenuinput4" == "ls") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command: ls${NC}"
echo ""
set mainmenuinput4 = `head -1`
echo ""
end
ls
cd ../../
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"

echo ""
echo "${PURPLE}Good job!\
Now try to learn other commands${NC}"
#cd dir1/
#rm -rf dir3/
echo ""
#rm -rf dir3
cd ../../
echo ""

