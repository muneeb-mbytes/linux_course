# This command is used to create a directory and in 
# output we will get the feedback 
#
# syntax : mkdir -v dir_name
#

#Clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`
mkdir $WORKING_PATH/mkdir_practice
cd $WORKING_PATH/mkdir_practice

echo ""
echo "${BLUE}Command: mkdir -v dir_name ${NC}"
echo ""
echo "${BLUE}Description: This command is used to create a directory\
and in output we will get the feedback${NC}"
echo ""
echo "${YELLOW}In $WORKING_PATH/\nCreating mahadev directory(check verbosity message)${NC}"
mkdir -v $WORKING_PATH/mahadev
echo ""
echo "${BLUE}---------------------------------------------------------------------------------------    ------------------------------------ ${NC}"
echo "Try ls command to verify whether directory is created or not"
set usrip = `head -1`

while ( !($usrip == ls) )
echo "${RED}Try ls ${NC}"
set usrip = `head -1`
end
ls
echo ""
echo "${GREEN}Done ! Try creating one more directory with other name${NC}"
echo "For next variation press\
${BLUE}cd - (enter)${NC}\
and source another"
echo ""

