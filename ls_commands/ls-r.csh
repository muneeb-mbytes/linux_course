#Clearing the screen
clear 
# Getting the current working directory
setenv WORKING_PATH `pwd`

## Creating the experiment folder for ls command
mkdir -p $WORKING_PATH/experiment/ls

cd $WORKING_PATH/experiment/ls
#     # Creating certain files and folders
mkdir -p dir_b
mkdir -p dir_a
touch file.txt
touch verilog.txt
# ls -r command display the list in reverse order

echo ""
echo "${RED}Command: ls -r ${NC}"

echo ""
echo "${RED}Description: Display the list in  reversing order(alphabetical) ${NC}"
echo ""
echo "${RED}Expected Output: ${NC}"
echo ""
ls -r
echo ""
echo "${RED}--------------------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "\
${GREEN}Please try the below command  \
ls -r  <enter> \
Compare your output  with the  expected output ${NC}"
echo ""
echo -n "${PURPLE}Enter Command:${NC}"
echo ""
set mainmenuinput = `head -1`
while ( !("$mainmenuinput" == "ls -r") )
echo""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`
echo ""
end
echo "${GREEN}Actual Output:${NC}"
echo ""
ls -r
echo ""
echo ""
echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"
echo ""
echo "${PURPLE}Good job!\
Now try to learn next command (ls -S) ${NC}"
echo ""
echo "${RED}Source ls-S.csh${NC} "

echo ""
rm -rf dir_a
rm -rf dir_b
rm file.txt
rm verilog.txt
cd -
