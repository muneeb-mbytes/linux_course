# This command is for creating multiple directories with
# hierarchy of parent , child and sub-child
# syntax : mkdir -p parent/child/sub-child
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/experiment

echo ""
echo "${RED}Command: mkdir -p  parent_dir/child_dir/sub_child_dir ${NC}"
echo ""
echo "${RED}Description: This command is for creating\
multiple directories with an hierarchy of parent which\
has child dir and again child dir has sub-child in it${NC}"
echo ""
mkdir $WORKING_PATH/experiment/India/Karnataka/Manipal
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
rm -rf India
echo "${PURPLE}Good Job !\
Try creating the directories in above way as\
mangalore as parent dir\
udupi as child dir \
manipal as sub-child dir ${NC}"
echo ""
echo -n "${BROWN}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mkdir -p mangalore/udupi/manipal") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mkdir -p mangalore/udupi/manipal<enter>': ${NC}"
  set userinput = `head -1`
end
echo""
mkdir mangalore/udupi/manipal
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
echo "You have checked that parent India has been created ,\
if you want to know whether child dir's created or not\
go and study ${BLUE}cd${NC} command then try this example again"
echo ""
echo "${PURPLE}For next variation source another file${NC}"
echo ""

rm -rf mangalore
cd $WORKING_PATH

