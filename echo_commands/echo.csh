# Clearing the screen
clear 
# echo command displays used to display test strings or command strings as results.
echo ""
echo "${RED}Command: echo ${NC}"
echo ""
echo "${RED}Description: Display test strings or command strings as results. ${NC}"
echo ""
echo "${RED}Expected Output: ${NC}"
echo ""
echo "Manipal"
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
echo "Manipal"(in inverted coma "") <enter> \
Compare your output  with the  expected output ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
set some = 'echo "Manipal"'
while ( !("'$mainmenuinput'" == "'$some'"  ))
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
echo ""
end
echo""
echo "${GREEN}Actual Output:${NC}"
echo ""
echo "Manipal"
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${PURPLE}Good job!\
Now try to learn other command ${NC}"
echo ""
echo ""

