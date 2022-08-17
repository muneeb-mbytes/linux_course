# This command is to rename a file (doesn't create a new copy just renames).

# syntax : mv old_name new_name

mkdir -p $WORKING_PATH/mv_experiment
mkdir $WORKING_PATH/mv_experiment/manipal_training
#Clearing the screen
clear
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 

echo ""
echo "${RED}Command : mv old_name new_name${NC}"
echo ""
echo "${RED}Description : This command is to rename a file (doesn't create a new copy just renames)${NC}"
echo ""
cd $WORKING_PATH/mv_experiment/manipal_training
touch myname.sv 
echo "${RED}before rename : ${NC}"

echo ""
ls
echo ""
mv myname.sv yourname.sv
echo "${RED}Expected output (after renaming) :${NC}"
echo ""
ls
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try ls command to verify whether directory is renamed or not.\
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
Try renaming the same file to previous name(myname.sv)${NC}"
echo ""
echo "${BROWN}before rename :${NC}"
ls
echo ""
echo -n "${BROWN}Enter Command 'mv yourname.sv myname.sv': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mv yourname.sv myname.sv") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mv yourname.sv myname.sv<enter>': ${NC}"
  set userinput = `head -1`
end
echo ""
mv yourname.sv myname.sv
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

echo "${BROWN}after rename :${NC}"
ls
echo ""
echo "${PURPLE}For next variation source another file${NC}"
echo ""
cd $WORKING_PATH
rm -rf mv_experiment
