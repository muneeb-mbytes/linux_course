# This command is used to search
# multiple patterns in a single file
#
# syntax : grep -e string1 -e string2 file_name
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
echo ""
echo "${RED}Command: grep -e string1 -e string2 file_name${NC}"
echo ""
echo "${RED}Description: This command is to used to search\
multiple patterns in a single file${NC}"
echo ""
echo "${RED}Expected output: ${NC}"
echo ""
echo "${PURPLE}places_bangalore Contents:${NC}"
echo "${BLUE}Type_of_place               Name_of_place${NC}"
cat places_bangalore.txt
echo "${PURPLE}places_hyderabad Contents:${NC}"
echo "${BLUE}Type_of_place               Name_of_place${NC}"
cat places_hyderabad.txt

echo "Expected output :(for grep beach & restaurant)"
echo "${GREEN}"
grep -e beach -e restaurant places_bangalore.txt
echo "${NC}"
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try grep command for beaches and compare with expected output\
grep -e beach -e restaurant places_bangalore.txt<enter>${NC}"
echo ""


echo "Actual output:"
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "grep -e beach -e restaurant places_bangalore.txt") )
   echo ""
   echo "Actual output:"
    echo "${RED}Wrong! Try Again${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'grep -e beach -e restaurant places_bangalore.txt<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
grep -e beach -e restaurant places_bangalore.txt
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE}Good Job !\
now go for different options in grep\
source another files for different options${NC}"
echo ""

cd $WORKING_PATH

