# This command is used for giving permissions to an already existing directory
#
# syntax : chmod 777 directoryname
#
# Getting the current working directory
setenv WORKING_PATH `pwd`
mkdir -p $WORKING_PATH/experiment
cd $WORKING_PATH/experiment/

#Clearing the screen
clear
echo ""
echo "${RED}Command: chmod 777 directory_name ${NC}"
echo ""
echo "${RED}Description : This command is used for giving permissions to an already existing directory ${NC}"
echo ""
echo "creating a directory named mirafra for you with permissions"
mkdir -m 777 $WORKING_PATH/experiment/mirafra
#echo "\nDoes below files has linux_basics ? type yes/no\n"
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo -n "${PURPLE}Enter ls Command : ${NC}"
echo "${GREEN}Try ls command to verify whether directory is created or not.\
ls <enter>${NC}"
echo ""


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
echo "${GREEN} Compare your output with the expected output observe\
green background of dir_name which indicates permissions\
granted for everyone${NC}"
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
rm -rf mirafra
echo "${PURPLE}Good Job !\
Try creating one more directory named 'grant_dir' and give permissions${NC}"
echo ""
echo -n "${BROWN}Enter Command 'mkdir grant_dir<enter>': ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "mkdir grant_dir") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'mkdir grant_dir<enter>': ${NC}"
  set userinput = `head -1`
end
echo""
mkdir -p grant_dir
echo "\n ${GREEN}grant_dir created, give permissions using chmod"
echo "enter chmod command to give permissions as mentioned in syntax${NC}"
set userinput = `head -1`
while ( !("$userinput" == "chmod 777 grant_dir") )
 echo ""
 echo "${RED}Wrong Command ${NC}"
  echo -n "${BROWN}Enter Command 'chmod 777 grant_dir<enter>': ${NC}"
  set userinput = `head -1`
end
chmod 777 grant_dir
echo "\n given permissions\n"
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
echo "${GREEN}observe the change in color \
of directory to green background which indicates\
that it has all permissions ${NC}"

echo ""
cd ..
rm -rf experiment

