# This command is for creating multiple directories but with an
# hierarchy of parent , child and sub-child
#
# syntax : mkdir -p parent/child/sub-child

#
#Clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`
mkdir -p $WORKING_PATH/mkdir_practice
cd $WORKING_PATH/mkdir_practice
echo ""
echo "${BLUE}Command: mkdir -p parent/child/sub-child${NC}"
echo ""
echo "${BLUE}Description : This command is for creating multiple directories\
but with an hierarchy of parent , child and sub-child ${NC}" 
echo ""
echo "${YELLOW} In $WORKING_PATH/\n manipal_b7 directory (parent dir) was created\n which contains the siliconcrew directory (child dir) created\n which again contains the hemanth_b7 directory(sub-child dir) was created${NC}"

mkdir -p $WORKING_PATH/manipal_b7/siliconcrew/hemanth_b7

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
  echo "${BLUE} go into manipal_b7 and check child directories\
  as well using cd commands and to come back use cd .. to\
  come one directory back${NC}"
echo ""
echo "${GREEN}Done ! Try one more example with different names${NC}"
echo "For next variation press\
   ${BLUE}cd - (enter)${NC}\
       and source another"
echo ""


