# This command is used to remove/delete the single directory
#
# syntax : rm -rf dir1 dir2
#
# Note : This can't be undo , please make sure before deleting.

##Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/rm_experiment

echo ""
echo "${RED}Command: rm -rf dir_1_name dir_2_name${NC}"
echo ""
echo "${RED}Description: This command is used for deleting a multiple directories at a time recursively${NC}"
echo ""
echo "Note : This can't be undo , please make sure before deleting"
echo ""
mkdir $WORKING_PATH/rm_experiment/manipal_b5_dummy $WORKING_PATH/rm_experiment/manipal_b6_dummy
cd $WORKING_PATH/rm_experiment/
echo "${RED}before rm : ${NC}"
echo ""
ls
echo ""
rmdir -rf manipal_b5_dummy manipal_b6_dummy
echo "${RED}Expected output (after rm) :${NC}"
echo ""
ls
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try ls command to verify whether directories deleted or not.\
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
mkdir -p linux_basics github
echo "${PURPLE}Good Job !\
created two more dir's for you named linux_basics and github Try removing both directories in single command 'linux_basics' & 'github'${NC}"
echo ""
echo "${BROWN}before rm :${NC}"
ls
echo -n "${BROWN}Enter Command 'rm -rf linux_basics github <enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "rm -rf linux_basics github") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'rm -rf linux_basics github <enter>': ${NC}"
  set userinput = `head -1`
end
echo""
rm -rf linux_basics github
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
echo ""
echo "${BROWN}after rm :${NC}"
ls
echo "${PURPLE}For next variation source another file${NC}"
echo ""

cd $WORKING_PATH
rm -rf rm_experiment
