# This command is to move a file from one place to another without creating a copy of file.

# syntax : mv old_path new_path

# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/mv_experiment
mkdir $WORKING_PATH/mv_experiment/manipal_training
#Clearing the screen
clear

echo ""
echo "${RED}Command : mv source_path destination_path ${NC}"
echo ""
echo "${RED}Description : This command is used for moving a file or folder from one path to another path${NC}"
echo ""
cd $WORKING_PATH/mv_experiment/
touch file1.txt file2.sv 
echo "${RED}before mv : ${NC}"

echo ""
ls
echo ""
mv file2.sv $WORKING_PATH/
echo "${RED}Expected output (after moving file2 to manipal_training_dir) :${NC}"
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
echo "${PURPLE}Good Job !\
Try moving the file1.txt to manipal_training dir${NC}"
echo ""
echo "${BROWN}before mv :${NC}"
ls
echo ""
echo -n "${BROWN}Enter Command 'mv file1.txt manipal_training/': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mv file1.txt manipal_training/") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mv file1.txt manipal_training/<enter>': ${NC}"
  set userinput = `head -1`
end
echo ""
mv file1.txt manipal_training/
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

echo "${BROWN}after mv :${NC}"
ls
echo ""
echo "${PURPLE}Now check inside the manipal_training dir by using cd command ${NC}"
echo ""
echo -n "${PURPLE}Enter cd manipal_training Command : ${NC}"
set userinput = `head -1`

while ( !("$userinput" == "cd manipal_training") )
  echo ""
  echo "${RED}Try ls ${NC}"
  echo ""
  echo -n "${PURPLE}Enter Command 'cd manipal_training<enter>': ${NC}"
  set userinput = `head -1`
end
echo "Entered into manipal_training dir"
cd manipal_training
echo ""
echo "${PURPLE}Try ls command to check inside dir${NC}"
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
echo "${PURPLE}For next variation source another file${NC}"
echo ""
cd $WORKING_PATH
rm -rf mv_experiment
