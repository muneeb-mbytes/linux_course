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
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
ls <enter> \
Compare your output  with the  expected output ${NC}"
echo ""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`
set command_variable = "ls $HOME"
while ( !("$mainmenuinput" == "ls $HOME") )
echo ""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`
echo ""
end
echo "${GREEN}Actual Output:${NC}"
echo ""
ls ~
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${PURPLE}Good job!\
Now try to learn other commands${NC}"
echo ""
