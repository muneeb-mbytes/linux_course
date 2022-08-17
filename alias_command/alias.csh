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
echo ${RED}"Example: alias DK" '"Dilip Krishnappa"' ${NC}
echo ""
echo "${RED} Description: Alias is a shortcut that references the command ${NC}"
echo ""
echo "${RED} Expected output: ${NC}"
echo ""
 alias DK "Dilip Krishnappa"
echo ""
which DK
echo "${RED}------------------------------------------------------------- ${NC}"
echo ""
echo "${GREEN}Please try the below command${NC}"
echo ${GREEN}"Command: alias MB" '"Manipal Batch"' ${NC}
echo "${GREEN}press <enter> ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == 'alias MB "Manipal Batch"'))
echo "${RED} whops! \
 Try again by typing the above command ${NC}"
 echo "${PURPLE} Enter Command ${NC}:"
set mainmenuinput = `head -1`
end
alias MB "Manipal Batch"
echo ""
echo "${GREEN}please try the below command \
which MB <enter> \
check the created alias ${NC}"
echo ""
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
while(!("$mainmenuinput" == "which MB"))
echo "${RED} whops! \
Try again by typing the  ${PURPLE} which DK command \
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set mainmenuinput = `head -1`
end
echo ""
echo "${RED}Actual Output :${NC}"
echo ""
which MB
echo ""
echo "${RED}----------------------------------------${NC}"
echo ""
echo "${PURPLE} GOOD JOB \
 NOW TRY TO DO UNALIAS COMMAND ${NC}"
echo ""
echo "${RED}source unalias.csh ${NC}"
echo ""
 cd -

