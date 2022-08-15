# This is command used for creating a directory along with permissions
# of read,write and execute to anyone 
#
# syntax : mkdir -m 777 directoryname
#

#Clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`

mkdir -p $WORKING_PATH/experiment
cd $WORKING_PATH/experiment/

echo ""
echo "${RED}Command: mkdir -m 777 directory_name ${NC}"
echo ""
echo "${RED}Description: This command is for creating\
a directory along with permissions to read,write and execute to anyone${NC}"
echo ""
mkdir -m 777 $WORKING_PATH/experiment/duplicates

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
echo "${GREEN}Note:permission free files has green background${NC}"


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
rm -rf duplicates
echo "${PURPLE}Good Job !\
Try creating one more directory named 'dummy'${NC}"
echo ""
echo -n "${BROWN}Enter Command 'mkdir -m 777 dummy<enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mkdir -m 777 dummy") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mkdir -m 777 dummy<enter>': ${NC}"
  set userinput = `head -1`
end
echo""
mkdir -m 777 dummy
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

rm -rf dummy
cd $WORKING_PATH
