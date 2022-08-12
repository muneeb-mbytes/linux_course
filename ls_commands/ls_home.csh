#clearing the screen
clear
# ls ~ command display the list of user home directory

echo ""
echo "${RED}Command: ls ~ ${NC}"

echo ""
echo "${RED}Description: List the content present  in user home directory ${NC}"
echo ""


echo "${RED}Expected Output: ${NC}"
echo ""
ls ~
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""

echo "\
${GREEN}Please try the below command  \
ls <enter> \
Compare your output  with the  expected output ${NC}"

       echo ""
       echo -n "${PURPLE}Enter Command ${NC}:"
       echo ""
       set mainmenuinput = `head -1`
#echo "print $mainmenuinput"
       if ("$mainmenuinput" == "ls ~") then
       echo "${RED}Actual Output:${NC}"
       echo ""
       ls ~
       else
       echo "${GREEN}Command wrong${NC}"
       endif




       echo "${RED}--------------------------------------------------------------------------------------------------------------------------------- ${NC}"

       echo ""

echo "${PURPLE}TO go back to learn \
more other commands,Go to directory,\
where you clone the repository by using a command ${NC}"
         echo ""
         echo "${RED}cd -${NC} "


         echo ""
         echo "${RED}------------------------------------------------------------------------------------------------------------------------------- ${NC}"
