# Clearing the screen
 clear 
 cd ../

 # display size in human readable (K,M,G).
 
 echo ""
 echo "${RED}Command: du -h ${NC}"

 echo ""
 echo "${RED}Description: display size in human readable format. ${NC}"
 echo ""


 echo "${RED}Expected Output: ${NC}"
 echo ""
 du -h
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"
 echo ""


 echo "  \
 ${GREEN}Please try the below command\
 du -h <enter> \
 Compare your output  with the  expected output ${NC}"

 echo ""
 echo -n "${PURPLE}Enter Command ${NC}:"
 echo ""
 set mainmenuinput = `head -1`
 while ( !("$mainmenuinput" == "du -h") )
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
 du -h
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"

 echo ""

 echo "${PURPLE}Good job!\
 Now try to learn other commands. ${NC}"
 echo ""
 cd -
