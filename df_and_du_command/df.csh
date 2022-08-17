# Clearing the screen
 clear 

 # display information related to file systems about total space and available space.
 echo ""
 echo "${RED}Command: df ${NC}"

 echo ""
 echo "${RED}Description: display information related to file systems about total space and available space  ${NC}"
 echo ""


 echo "${RED}Expected Output: ${NC}"
 echo ""
 df 
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"
 echo ""


 echo "\
 ${GREEN}Please try the below command  \
 df <enter> \
 Compare your output  with the  expected output ${NC}"

 echo ""
 echo -n "${PURPLE}Enter Command ${NC}:"
 echo ""
 set mainmenuinput = `head -1`
 while ( !("$mainmenuinput" == "df") )
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
 df
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"

 echo ""

 echo "${PURPLE}Good job!\
 Now try to learn next command (df -h) ${NC}"
 echo ""
 echo "${RED}source df-h.csh${NC} "
 echo ""
