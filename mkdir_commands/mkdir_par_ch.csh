# This command is for creating multiple directories with
# hierarchy of parent , child 
# syntax : mkdir -p parent1 parent2/child1
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/experiment

echo ""
echo "${RED}Command: mkdir -p parent1 parent2/child_dir ${NC}"
echo ""
echo "${RED}Description: This command is for creating\
multiple parent directories in which only one parent\
has child dir${NC}"
echo ""
mkdir -p $WORKING_PATH/experiment/cities $WORKING_PATH/experiment/beaches/malpe
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
rm -rf cities beaches
echo "${PURPLE}Good Job !\
Try creating the directories in above way as\
bangalore as parent1 dir and mangalore as parent2 dir\
manipal as child dir of mangalore  ${NC}"
echo ""
echo -n "${BROWN}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mkdir -p bangalore mangalore/manipal") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mkdir -p bangalore mangalore/manipal<enter>': ${NC}"
  set userinput = `head -1`
end
echo""
mkdir -p  bangalore mangalore/manipal
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
echo "you have checked for two parent directories creation\
if you want to know whether child dir manipal is created or not,\
  go and study ${BLUE}cd${NC} command and try this example again "
echo "${PURPLE}For next variation source another file${NC}"
echo ""
rm -rf bangalore mangalore
cd $WORKING_PATH

