#clearing the screen
clear 

# whoami command display the name of the currently logged user.

echo ""
echo "${RED}Command: whoami ${NC}"

echo ""
echo "${RED}Description: name of the currently logged user ${NC}"
echo ""

echo "${RED}Expected Output: ${NC}"
echo ""
whoami
echo ""
echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"
echo ""


echo "\
${GREEN}Please try the below command  \
whoami <enter> \
Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "whoami") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
echo ""
end
echo ""
echo "${GREEN}Actual Output:${NC}"
echo ""
whoami
echo ""
echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"

echo ""

echo "${PURPLE}Good job!\
Now try to learn other command ${NC}"
echo ""
