# This command is used for checking the path you where you are.
#
# syntax : pwd (present working directory)

#Clearing the screen
clear

setenv WORKING_PATH `pwd`
mkdir -p $WORKING_PATH/pwd_practice
cd $WORKING_PATH/pwd_practice

echo ""
echo " ${BLUE}Command : pwd (present working directory) ${NC}"

echo ""
echo "${BLUE} Description : This command is used for checking the path you where you are${NC}"

echo "" 
echo "${BLUE} Expected Output: ${NC}"

echo ""
pwd

echo ""
echo "${BLUE}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
       ${GREEN}Please try the below command  \
       pwd <enter> \
       Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""

echo "Try pwd command to check the path"
set usrip = `head -1`

while ( !("$usrip" == "pwd") )
echo "try pwd"
 set usrip = `head -1`
end
pwd

echo "${RED}--------------------------------------------------------------------------------------------------------------------------------- ${NC}"

echo ""
echo "${PURPLE}Go back to directory,\
where you clone the repository by using a command ${NC}"
echo ""
echo "${RED}cd - ${NC} "
echo ""
echo "${RED}------------------------------------------------------------------------------------------------------------------------------- ${NC}"
