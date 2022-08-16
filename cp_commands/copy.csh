# Clearing the screen
clear 

# Getting the current working directory
 setenv WORKING_PATH `pwd`
#
# # Creating the experiment folder for ls command
 mkdir -p $WORKING_PATH/experiment/copy
#
#
 cd $WORKING_PATH/experiment/copy
# ## # Creating certain files and folders
 #touch file1.txt
 #touch file2.txt
# touch file3.txt
# touch file4.txt
#
 # cp [source file] [destination file] means copy the source file contents to destination file.
#
 echo ""
 echo "${RED}Command: cp [source file] [destination file] ${NC}"
#
 echo ""
 echo "${RED}Description: cp means copy the source file contents to destination file ${NC}"

 echo ""
#
#
 echo "${RED}Expected Output: ${NC}"
 echo ""
 cp file1.txt file4.txt
 cat file4.txt
 echo ""
 echo "${RED}--------------------------------------------------------------------------------------------------------------------------- ${NC}"
 echo ""
#
#
 echo "\
${GREEN}Please try the below command  \
cp file1.txt file3.txt  \
Compare your output  with the  expected output ${NC}"

echo ""
echo -n "${PURPLE}Enter Command ${NC}:"
echo ""
set mainmenuinput = `head -1`

while ( !("$mainmenuinput" == "cp file1.txt file3.txt")) 
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
 cp file1.txt file3.txt
 cat file3.txt
 
 echo ""
 echo "${RED}---------------------------------------------------------------------------------------------------------------------------- ${NC}"

 echo ""

 echo "${PURPLE}Good job!\
 Now try to learn next command (cp -r) ${NC}"
 echo ""
 echo "${RED}source cp-r.csh${NC} "
rm file4.txt
rm file3.txt 
cd -
echo ""

