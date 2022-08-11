# This is command used for creating a directory along with permissions
# of read,write and execute to anyone 
#
# syntax : mkdir -m 777 directoryname
#

#Clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`

mkdir -p $WORKING_PATH/mkdir_practice
cd $WORKING_PATH/mkdir_practice

echo ""
echo "${BLUE}Command: mkdir -m 777 directoryname ${NC}"
echo ""
echo "${BLUE}Description: This is command used for creating a directory along with permissions\
of read,write and execute to anyone\${NC}"
echo ""
echo "${YELLOW} In $WORKING_PATH/\n group_siliconcrew directory was created ,\
this can be accesable to anyone ${NC}"
mkdir -m 777 $WORKING_PATH/group_siliconcrew
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
echo "${GREEN}Done ! Try creating one more directory with other name${NC}"
echo "For next variation press\
${BLUE}cd - (enter)${NC}\
and source another"
echo ""

