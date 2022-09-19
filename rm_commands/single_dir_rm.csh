# This command is used to remove/delete the single directory
#
# syntax : rmdir directory_name
#
# Note : This can't be undo , please make sure before deleting.

##Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/rm_experiment

echo ""
echo "${RED}Command: rmdir directory_name ${NC}"
echo ""
echo "${RED}Description: This command is used for deleting a single directory at a time ${NC}"
echo ""
echo "Note : This can't be undo , please make sure before deleting"
echo ""
mkdir $WORKING_PATH/rm_experiment/manipal_training
cd $WORKING_PATH/rm_experiment/
echo "${RED}before rm : ${NC}"
echo ""
ls
echo ""
rmdir manipal_training
echo "${RED}Expected output (after rm) :${NC}"
echo ""
ls
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try ls command to verify whether directory is deleted or not.\
ls <enter>\
Compare your output with the expected output${NC}"
echo ""


echo "${PURPLE}Actual output:${NC}"
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "ls") )
   echo ""
   echo "${PURPLE}Actual output:${NC}"
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
mkdir -p linux_dir
echo "${PURPLE}Good Job !\
created one more dir for you named linux_dir Try removing the directory 'linux_dir'${NC}"
echo ""
echo "${BROWN}before rm :${NC}"
ls
echo ""
echo -n "${BROWN}Enter Command 'rmdir linux_dir<enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "rmdir linux_dir") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'rmdir linux_dir<enter>': ${NC}"
  set userinput = `head -1`
end
echo ""
rmdir linux_dir
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

echo "${BROWN}after rm :${NC}"
ls
echo ""
echo "${PURPLE}For next variation source another file${NC}"
echo ""
cd $WORKING_PATH
rm -rf rm_experiment
