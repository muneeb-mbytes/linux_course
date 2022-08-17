#clearing the screen
clear

# Getting the current working directory
setenv WORKING_PATH `pwd`
#
#  Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/concatenation
#
cd $WORKING_PATH/experiment/concatenation
#  Creating certain files and folder
mkdir -p dir1/dir2
touch file1.txt
touch file2.txt

echo ""
echo "${RED}command : cat file1.txt ${NC}"
echo ""
echo "${RED}Description: Read the content in the file and display the output on the Terminal ${NC}"
echo " "
echo "${RED}Expected output: ${NC}"
echo ""
cat file1.txt
echo ""
echo "${RED}-------------------------------------------------------- ${NC}"
echo ""
echo " ${GREEN}please try the below command \
cat file1.txt <enter> \
compare your output with the Expected output${NC}"
echo ""
#echo "${PURPLE}"Enter command:cat file1.txt" ${NC}"
echo -n "${PURPLE}Enter Command ${NC}:"
set maininput = `head -1`
while( !("$maininput" == "cat file1.txt"))
echo "${RED}whops! \
Try again by typing the  ${PURPLE} cat file1.txt command \
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set maininput = `head -1`
end
echo ""
echo "${GREEN}Actual output: ${NC}"
echo ""
cat file1.txt
echo ""
echo "${RED}---------------------------------------------${NC}"
echo ""
echo "${PURPLE} GOOD JOB!\
Now try to learn next cat options below (cat file1.txt > file2.txt)${NC}"
echo ""
echo "${GREEN}Description : Routing of content of file1.txt to file2.txt ${NC}"
echo ""
echo " ${GREEN}please try the below command \
cat file1.txt > file2.txt <enter> \
compare your output with the Expected output${NC}"
echo ""
echo "${PURPLE}"Enter command:cat file1.txt > file2.txt" ${NC}"
echo -n "${PURPLE}Enter Command ${NC}:"
set maininput = `head -1`
while( !("$maininput" == "cat file1.txt > file2.txt"))
echo "${RED}whops! \
Try again by typing the  ${PURPLE} cat file1.txt > file2.txt command \
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set maininput = `head -1`
end
echo ""
#echo "${GREEN}Actual output after routing : ${NC}"
cat file1.txt > file2.txt
echo "${RED} Routing done! ${NC}"
echo "${RED} To now the content in file2.txt after Routing ${NC}"
echo "${GREEN}please try the below command \
cat file2.txt <enter> \
compare your output with the Expected output${NC}"
echo ""
#echo "${PURPLE}"Enter command:cat file2.txt" ${NC}"
echo -n "${PURPLE}Enter Command ${NC}:"
set maininput = `head -1`
while( !("$maininput" == "cat file2.txt"))
echo "${RED}whops! \
Try again by typing the  ${PURPLE} cat file2.txt command \
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set maininput = `head -1`
end
echo "${GREEN}Actual output after routing : ${NC}"
echo ""
cat file2.txt
echo ""
echo "${PURPLE} GOOD JOB!\
Now try to learn next cat options below (cat -n file1.txt)${NC}"
echo ""
echo "${RED}source cat-n.csh${NC}"
cd -
