# Clearing the screen
 clear 
 cd ../
 # display information related to file system about estimate file space used under a particular directory or files.
 echo ""
 echo "${RED}Command: du ${NC}"

 echo ""
 echo "${RED}Description: display information related file space used under a particular directory or files. ${NC}"
 echo ""


 echo "${RED}Expected Output: ${NC}"
 echo ""
 du
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"
 echo ""


 echo "\
 ${GREEN}Please try the below command  \
 du <enter> \
 Compare your output  with the  expected output ${NC}"

 echo ""
 echo -n "${PURPLE}Enter Command ${NC}:"
 echo ""
 set mainmenuinput = `head -1`
 while ( !("$mainmenuinput" == "du") )
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
 du
 echo ""
 echo "${RED}----------------------------------------------------------------------------------------------------- ${NC}"

 echo ""

 echo "${PURPLE}Good job!\
 Now try to learn next command (du -h) ${NC}"
 echo ""
 echo "${RED}source du-h.csh${NC} "
 echo ""
 cd -
