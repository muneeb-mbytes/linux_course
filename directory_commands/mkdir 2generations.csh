# This command is used for creating a 2 parent dir's with child dir's
#
# syntax : mkdir -p parent1 parent2/child1
#


#Clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`

mkdir -p $WORKING_PATH/mkdir_practice
cd $WORKING_PATH/mkdir_practice

echo ""
echo "${BLUE}Command: mkdir -p parent1 parent2/child1 ${NC}"
echo ""
echo "${BLUE}Description : This command is for creating multiple directories\
       but with an hierarchy of parent , child and sub-child ${NC}"
echo ""
echo " ${YELLOW}In $WORKING_PATH/\n Two parent directories named linux_basics and github\ndirectorie    s were created in which github has a child dir named merging ${NC}"

mkdir -p $WORKING_PATH/linux_basics github/merging
echo ""
echo "-p is used for parent concept and also\
       if the directory is already created then\
       it neither create a new dir nor throw an error"
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
echo "${BLUE} go into parent dir's and check child directories\
    as well using cd commands and to come back use cd .. to\
    come one directory back${NC}"
echo ""


    echo "${GREEN}Done ! Try one more example with different names${NC}"
    echo "For next variation press\
      ${BLUE}cd - (enter)${NC}\
      and source another"
      echo ""


