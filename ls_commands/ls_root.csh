# clearing the screen
clear
# ls / command display the list of root directory content
echo ""
echo "${RED}Command: ls / ${NC}"
echo ""
echo "${RED}Description: List the content of root directory ${NC}"
echo ""
echo "${RED}Expected Output: ${NC}"
echo ""
ls /
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${GREEN}Please try the below command  \
ls / <enter> \
Compare your output  with the  expected output ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "ls /") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
end
echo""
echo "${GREEN}Actual Output:${NC}"
echo ""
ls /
echo ""
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${PURPLE}Good job!\
Now try to learn next command (ls ~) ${NC}"
echo ""
echo "${RED}source ls_home.csh${NC} "
echo ""

