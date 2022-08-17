
#clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`
#
#  Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/unaliased
#
cd $WORKING_PATH/experiment/unaliased
#  Creating certain files and folders
mkdir -p dir1/ dir2
touch file1.txt
touch file2.txt
#
echo ""
echo "${RED}Command: unalias${NC}"
echo ""
echo "${RED}Example: unalias lt ${NC}"
echo ""
echo "${RED}Description :unalias is to remove the alias we created ${NC}"
echo ""
echo "${RED} Expected output: ${NC}"
alias lt "ls -lt"
echo ""
which lt
echo ""
lt
echo ""
unalias lt
echo ""
which lt
echo ""
echo "${RED}------------------------------------- ${NC}"
echo ""
echo \
       "${GREEN}Please try the below command ${NC}"
echo ${GREEN} "Command: alias la" '"ls -la"' ${NC}
echo "${GREEN} press <enter> ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == 'alias la "ls -la"'))
echo "${RED} whops! \
Try again by typing the  above command ${NC}"
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
alias la "ls -la"
echo ""
echo "${GREEN}please try the below command \
which la  <enter> \
check whether the alias created ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "which la"))
echo "${RED} whops! \
Try again by typing the\
${PURPLE} which la press <ENTER>\
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
echo ""
echo "${GREEN}Actual output:${NC}"
which la
echo ""


echo ""
echo "${GREEN}please try the below command \
 la  <enter> \
check whether the alias created is working ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "la"))
echo "${RED} whops! \
Try again by typing the\
${PURPLE}  la press <ENTER>\
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
echo ""
 la
echo ""

echo "${GREEN}To remove the created alias, Enter below command \
unalias la <enter> ${NC}"
echo ""
echo "${GREEN}Actual output:${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "unalias la"))
echo "${RED} whops! \
    Try again by typing the  ${PURPLE} unalias la press <ENTER> \
    ${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
unalias la
echo ""
echo "${GREEN}please try the below command \
which la <enter>${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "which la"))
echo "${RED} whops! \
Try again by typing the  ${PURPLE} which la command \
${GREEN} you entered the wrong command ${NC}"     
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
echo "${GREEN}Actual Output${NC}"
echo ""
which la
echo ""
echo "${RED}----------------------------------------${NC}"
echo ""
echo "${RED} GOOD JOB \
now try to learn other inux command ${NC}"
  cd -





