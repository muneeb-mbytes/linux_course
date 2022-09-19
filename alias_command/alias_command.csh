
#clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`
#
#  Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/aliased
#
cd $WORKING_PATH/experiment/aliased
#  Creating certain files and folders
mkdir -p dir1/ dir2
touch file1.txt
touch file2.txt
#
echo ""
echo "${RED}Command: alias ${NC}"
echo ""
echo ${RED}"Example: alias lt" '"ls -lt"' ${NC}
echo ""
echo "${RED} Description: Alias is a shortcut that references the command ${NC}"
echo ""
echo "${RED} Expected output: ${NC}"
echo ""
 alias lt "ls -lt"
echo ""
which lt
echo ""
lt
echo "${RED}------------------------------------------------------------- ${NC}"
echo ""
echo "${GREEN}Please try the below command${NC}"
echo ${GREEN}"Command: alias la" '"ls -la"' ${NC}
echo "${GREEN}press <enter> ${NC}"
echo ""
echo "${RED}Actual Output :${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == 'alias la "ls -la"'))
echo "${RED} whops! \
 Try again by typing the above command ${NC}"
 echo "${PURPLE} Enter Command ${NC}:"
set mainmenuinput = `head -1`
end
alias la "ls -la"
echo ""
echo ""
echo "${GREEN}please try the below command \
which la <enter> \
check the created alias ${NC}"

echo ""
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
echo ""
#echo "${RED}Actual Output :${NC}"
echo ""
which la
echo ""

echo "${GREEN}please try the below command \
 la <enter> \
check the created alias ${NC}"

echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "la"))
echo "${RED} whops! \
 Try again by typing the above command ${NC}"
 echo "${PURPLE} Enter Command ${NC}:"
set mainmenuinput = `head -1`
end
la 
echo "${RED}----------------------------------------${NC}"
echo ""
echo "${PURPLE} GOOD JOB \
 NOW TRY TO DO UNALIAS COMMAND ${NC}"
echo ""
echo "${RED}source unalias.csh ${NC}"
echo ""
 cd -

