# This command is for creating a single directory at a time 
#
#syntax : mkdir directoryname
#

#Clearing the screen
clear 

# Getting the current working directory
 setenv WORKING_PATH `pwd`
# setenv PR_PATH 
mkdir -p $WORKING_PATH/mkdir_practice
#cd $WORKING_PATH/mkdir_practice

echo ""
echo "${BLUE}Command: mkdir manipal_training ${NC}"
echo ""
echo "${BLUE}Description: This command is for creating a single directory at a time ${NC}"
echo ""
echo "${YELLOW}Creating manipal_training directory in $WORKING_PATH ${NC}"
mkdir $WORKING_PATH/manipal_training
echo ""
echo "${BLUE}--------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo "Try ls command to verify whether directory is created or not"
set usrip = `head -1`

while ( !($usrip == ls) )
    echo "${RED}Try ls ${NC}"
    set usrip = `head -1`
    end
ls
echo ""
echo "${GREEN}Done ! Try creating one more directory named 'my_dir'${NC}"
while ( !("$usrip" == "mkdir my_dir") )
  echo "${RED}create dir named my_dir ${NC}"
  mkdir my_dir
  set usrip = `head -1`
end
 echo "Try ls to check "
set usrip = `head -1`

 while ( !($usrip == ls) )
 echo "${RED}Try ls ${NC}"
 set usrip = `head -1`
 end
ls
echo "For next variation press\
${BLUE}cd - (enter)${NC}\
 and source another"
 echo ""
