#This command is for creating multiple directories in a single command
#
# syntax : mkdir directory1 directory2
#
#Clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`
mkdir -p $WORKING_PATH/mkdir_practice
cd $WORKING_PATH/mkdir_practice
echo ""
echo "${BLUE}Command: mkdir manipal_b5_dummy  manipal_b6_dummy ${NC}"
echo ""
echo "${BLUE}Description: This command is for creating multiple directories in a single command ${NC}"
echo ""
echo "${YELLOW}Creating manipal_b5_dummy & manipal_b6_dummy directories in $WORKING_PATH ${NC}"
mkdir $WORKING_PATH/manipal_b5_dummy $WORKING_PATH/manipal_b6_dummy
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
echo "${GREEN}Done ! Try one more example with different names${NC}"
echo "For next variation press\
   ${BLUE}cd - (enter)${NC}\
    and source another"
    echo ""

