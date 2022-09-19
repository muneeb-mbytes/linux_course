#clear the screen
clear

#Getting the current working directory
setenv WORKING_PATH `pwd`

#Creating the experiment folder and files for clear command
mkdir -p $WORKING_PATH/experiment/clear
cd $WORKING_PATH/experiment/clear

# Creating files and folders and then use ls command for displaying the created files/folders
mkdir -p dir1/ dir2/
touch file.txt file1.txt
ls

#clear command clearing the current terminal screen
echo ""
echo "${RED}Command: clear ${NC}"

echo ""
echo "${RED}Description: clear will clearing the current terminal screen ${NC}"
echo ""

echo "${RED}expected output: the terminal screen will get cleared ${NC}"
echo ""
echo "${RED}-----------------------------------------------------------------------------------${NC}"
echo ""

echo " \
${GREEN}Please try the below command \
clear <enter> ${NC}"

echo ""
echo -n "${PURPLE}Enter Command: ${NC}"
echo ""
set maininput = `head -1`
while("$maininput" != "clear")
echo ""
echo "${RED}Command typed is wrong ${NC}"
echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set maininput = `head -1`
echo ""
end
clear

echo "${PURPLE} Good job!\
Now try to learn next commands ${NC}"
echo ""
cd -

echo ""

