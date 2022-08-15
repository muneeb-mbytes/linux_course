#This command is used for checking the path how you came through (the path will be different when you came through links)
#
# syntax : pwd -P (physical) pwd -L(logical)
#
# clearing the screen
clear

setenv WORKING_PATH `pwd`
mkdir -p $WORKING_PATH/pwd_experiment

echo ""
echo " ${RED} command : 1) pwd -L\
                        2) pwd -P ${NC}"
echo ""
echo "${RED}Description : This command is used for checking the path how you came through (the path will be different when you came through links)${NC}"
echo ""
 
echo "${RED}I am creating a soft link for you to go through this command${NC}"
ln -s $WORKING_PATH/pwd_experiment link_name
cd link_name
echo -n "${RED} Expected Output:1) "
pwd -L
echo -n "2) "
pwd -P
echo "${NC}"

echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Please try the below command  \
pwd -L & followed by pwd -P <enter> \
Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command :${NC}:"
echo ""

echo "Try pwd -L command to check the logical path of the link"
set usrip = `head -1`

while ( !("$usrip" == "pwd -L") )
  echo ""
  echo "Actual output:"
echo "${RED}Try pwd -L${NC}"
echo ""
 set usrip = `head -1`
end
echo -n "1)"
pwd -L

echo "Try pwd -P command to check the physical path of the link"
set usrip = `head -1`

while ( !("$usrip" == "pwd -P") )
  echo ""
  echo "Actual output:"
echo "${RED}Try pwd -P${NC}"
echo ""
 set usrip = `head -1`
end
echo -n "2)"
pwd -P
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE}For next variation source another file${NC}"
cd $WORKING_PATH
unlink link_name
