# This command is for creating a single directory at a time 
#
#syntax : mkdir directoryname
##Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/experiment

echo ""
echo "${RED}Command: mkdir directory_name ${NC}"
echo ""
echo "${RED}Description: This command is for creating a single directory at a time ${NC}"
echo ""
mkdir $WORKING_PATH/experiment/manipal_training
cd $WORKING_PATH/experiment/
echo "${RED}Expected output: ${NC}"
echo ""
ls
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try ls command to verify whether directory is created or not.\
ls <enter>\
Compare your output with the expected output${NC}"
echo ""


eco "Actual output:"
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
rm -rf manipal_training
echo "${PURPLE}Good Job !\
Try creating one more directory named 'linux_dir'${NC}"
echo ""
echo -n "${BROWN}Enter Command 'mkdir linux_dir<enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mkdir linux_dir") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mkdir linux_dir<enter>': ${NC}"
  set userinput = `head -1`
end
echo""
mkdir linux_dir
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

rm -rf linux_dir
cd $WORKING_PATH

