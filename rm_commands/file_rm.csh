# This command is used to remove/delete single/multiple files 
#
# syntax : rm -f file1.txt file2.sv
#
# Note : This can't be undo , please make sure before deleting.

##Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/rm_experiment

echo ""
echo "${RED}Command: rm -f file1.txt file2.sv file3.v ${NC}"
echo ""
echo "${RED}Description: This command is used for deleting single/multiple files  ${NC}"
echo ""
echo "Note : This can't be undo , please make sure before deleting"
echo ""
cd $WORKING_PATH/rm_experiment/
touch file1.txt file2.sv file3.v
echo "${RED}before rm : ${NC}"
echo ""
ls
echo ""
rm -f file1.txt file2.sv file3.v
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
touch file4.c file5.txt file6.csh
echo "${PURPLE}Good Job !\
created two more files for you named file4.c & file5.txt Try removing both files 'file3.v' & 'file4.c'${NC}"
echo ""
echo -n "${BROWN}before rm :${NC}"
ls
echo ""
echo -n "${BROWN}Enter Command 'rm -f file4.c file5.txt <enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "rm -f file4.c file5.txt") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'rm -f file4.c file5.txt <enter>': ${NC}"
  set userinput = `head -1`
end
echo""
rm -f file4.c file5.txt
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
