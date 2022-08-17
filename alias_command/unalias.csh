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
echo "${RED}Example: unalias DK ${NC}"
echo ""
echo "${RED}Description :unalias is to remove the alias we created ${NC}"
echo ""
echo "${RED} Expected output: ${NC}"
alias DK "Dilip Krishnappa"
echo ""
which DK
echo ""
unalias DK
echo ""
which DK
echo "${RED}------------------------------------- ${NC}"
echo ""
echo \
       "${GREEN}Please try the below command ${NC}"
echo ${GREEN} "Command: alias MB" '"Manipal Batch"' ${NC}
echo "${GREEN} press <enter> ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == 'alias MB "Manipal Batch"'))
echo "${RED} whops! \
Try again by typing the  above command ${NC}"
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
alias MB "Manipal Batch"
echo ""
echo "${GREEN}please try the below command \
which MB  <enter> \
check whether the alias is created ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "which MB"))
echo "${RED} whops! \
Try again by typing the\
${PURPLE} which MB press <ENTER>\
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
echo ""
echo "${GREEN}Actual output:${NC}"
which MB
echo ""

echo "${GREEN}please try the below command \
unalias MB <enter> ${NC}"
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "unalias MB"))
echo "${RED} whops! \
    Try again by typing the  ${PURPLE} unalias MB press <ENTER> \
    ${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
unalias MB
echo ""
echo "${GREEN}please try the below command \
which MB <enter>${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "which MB"))
echo "${RED} whops! \
Try again by typing the  ${PURPLE} which MB command \
${GREEN} you entered the wrong command ${NC}"     
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
echo "${GREEN}Actual Output${NC}"
echo ""
which MB
echo "${RED}----------------------------------------${NC}"
echo ""
echo "${RED} GOOD JOB \
 Now try to learn the other commands${NC}"
  cd -





