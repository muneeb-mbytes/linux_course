# Clearing the screen
 clear 

 # df-h command display size in its human readable (K, M, G) format.

 echo ""
 echo "${RED}Command: df -h ${NC}"

 echo ""
 echo "${RED}Description: display size in its human readable (K,M,G) format  ${NC}"
 echo ""


 echo "${RED}Expected Output: ${NC}"
 echo ""
 df -h
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"
 echo ""


 echo "\
 ${GREEN}Please try the below command  \
 df -h <enter> \
 Compare your output  with the  expected output ${NC}"

 echo ""
 echo -n "${PURPLE}Enter Command ${NC}:"
 echo ""
 set mainmenuinput = `head -1`
 while ( !("$mainmenuinput" == "df -h") )
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
 df -h
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"

 echo ""

 echo "${PURPLE}Good job!\
 Now try to learn next command (du) ${NC}"
 echo ""
 echo "${RED}source du.csh${NC} "
 echo ""
