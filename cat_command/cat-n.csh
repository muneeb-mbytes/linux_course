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
echo " ${RED}Enter command : cat -n file1.txt ${NC}"
echo ""
echo "${RED}Description:Read the content in the file and display the output on the Terminal with the line number ${NC}"
echo ""
echo "${RED}Expected output: ${NC}"
echo ""
cat -n file1.txt
echo ""
echo "${RED}------------------------------------------------------------------------------------ ${NC}"
echo ""
echo " ${GREEN}please try the below command \
cat -n file1.txt <enter> \
compare your output with the Expected output${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
set maininput = `head -1`
while( !("$maininput" == "cat -n file1.txt"))
echo "${RED}whops! \
Try again by typing the  ${PURPLE} cat -n file1.txt command \
${GREEN} you entered the wrong command ${NC}" 
echo "${PURPLE}Enter Command ${NC}:" 
set maininput = `head -1`
end
echo ""
echo "${GREEN} Actual output: ${NC}"
echo ""
cat -n file1.txt
echo ""
echo "${RED}--------------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE} GOOD JOB!\
        Now try to learn other linux command${NC}"
echo ""        
echo ""
cd -
