# This command is used for checking the path you where you present.
#
# syntax : pwd (present working directory)

#Clearing the screen
clear

setenv WORKING_PATH `pwd`
mkdir -p $WORKING_PATH/pwd_experiment

echo ""
echo " ${RED}Command : pwd (present working directory) ${NC}"

echo ""
echo "${RED} Description : This command is used for checking the path you where you present ${NC}"

echo "" 
echo "${RED} Expected Output: ${NC}"

echo ""
echo $WORKING_PATH
echo ""

echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "\
       ${GREEN}Please try the below command  \
       pwd <enter> \
       Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command :${NC}:"
echo ""

echo "Try pwd command to check the path"
set usrip = `head -1`

while ( !("$usrip" == "pwd") )
  echo ""
  echo "Actual output:"
echo "${RED}Try pwd${NC}"
echo ""
 set usrip = `head -1`
end
echo ""
pwd
echo ""

echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE}For next variation source another file${NC}"
