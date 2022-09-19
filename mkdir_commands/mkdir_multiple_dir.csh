#This command is for creating multiple directories in a single command
#
# syntax : mkdir directory1 directory2
#Clearing the screen
clear 
# Getting the current working directory
setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/experiment

echo ""
echo "${RED}Command: mkdir directory1 directory2 ${NC}"
echo ""
echo "${RED}Description: This command is for creating a multiple directories at a time ${NC}"
echo ""
mkdir $WORKING_PATH/experiment/manipal_b5_dummy $WORKING_PATH/experiment/manipal_b6_dummy
cd $WORKING_PATH/experiment/
echo "${RED}Expected output: ${NC}"
echo ""
ls
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try ls command to verify whether directories were created or not.\
ls <enter>\
Compare your output with the expected output${NC}"
echo ""
echo "Actual output:"
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "ls") )
   echo ""
   echo "Actual output:"
    echo "${RED}Try ls ${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'ls<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
ls
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
rm -rf manipal_b5_dummy manipal_b6_dummy
echo "${PURPLE}Good Job !\
Try creating two directories named 'student1' and 'student2'${NC}"
echo ""
echo -n "${BROWN}Enter Command 'mkdir student1 student2 <enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mkdir student1 student2") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mkdir student1 student2 <enter>': ${NC}"
  set userinput = `head -1`
end
echo""
mkdir student1 student2 
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo "${PURPLE}Try ls command to check ${NC}"
echo ""
echo -n "${PURPLE}Enter ls Command : ${NC}"
set userinput = `head -1`

while ( !("$userinput" == "ls") )
  echo ""
  echo "${RED}Try ls ${NC}"
  echo ""
  echo -n "${PURPLE}Enter Command 'ls<enter>': ${NC}"
  set userinput = `head -1`
end
ls
echo ""
echo "${PURPLE}For next variation source another file${NC}"
echo ""

rm -rf student1 student2 
cd $WORKING_PATH
