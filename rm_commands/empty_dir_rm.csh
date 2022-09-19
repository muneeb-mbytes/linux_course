# This command is used for deleting the empty directories
#
# syntax : rm -d directory_name
#
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/rm_experiment

echo ""
echo "${RED}Command: rm -d directory_name ${NC}"
echo ""
echo "${RED}Description: This command is used for deleting empty directories only ${NC}"
echo ""
mkdir $WORKING_PATH/rm_experiment/Mathematics
cd $WORKING_PATH/rm_experiment/
echo "${RED}before rm : ${NC}"
echo ""
ls
echo ""
rm -d Mathematics
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
mkdir postbox
echo "${PURPLE}Good Job !\
created one more dir for you named postbox Try removing this empty directory 'postbox'${NC}"
echo -n "${BROWN}before rm :${NC}"
ls
echo -n "${BROWN}Enter Command 'rm -d postbox<enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "rm -d postbox") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'rm -d postbox<enter>': ${NC}"
  set userinput = `head -1`
end
echo ""
echo "${BROWN}after rm:${NC}"
rm -d postbox
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
