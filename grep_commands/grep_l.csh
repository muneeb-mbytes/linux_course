# This command is used to searches a file for a\
# particular pattern of characters, and displays\
# the files names only which has that pattern
#
# syntax : grep -l string file1 file2 file3
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`

echo ""
echo "${RED}Command: grep -l string file1 file2 file3${NC}"
echo ""
echo "${RED}Description: This command is to used to search a file for a\
particular pattern of characters, and displays\
the files names only which has that pattern${NC}"
echo ""
echo "${PURPLE}places_bangalore Contents:${NC}"
echo "${BLUE}Type_of_place               Name_of_place${NC}"
cat places_bangalore.txt
echo ""
echo "${PURPLE}places_hyderabad Contents:${NC}"
echo "${BLUE}Type_of_place               Name_of_place${NC}"
cat places_hyderabad.txt
echo ""
echo "${PURPLE}places_chennai Contents:${NC}"
echo "${BLUE}Type_of_place               Name_of_place${NC}"
cat places_chennai.txt
echo ""
echo "Expected output :(for grep tourist_place)"
echo "${GREEN}"
grep -l beach places_bangalore.txt places_hyderabad.txt places_chennai.txt
echo "${NC}"
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try grep command for beaches and compare with expected output\
grep -l beach places_bangalore.txt places_hyderabad.txt places_chennai.txt<enter>${NC}"
echo ""


echo "Actual output:"
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "grep -l beach places_bangalore.txt places_hyderabad.txt places_chennai.txt") )
   echo ""
   echo "Actual output:"
    echo "${RED}Wrong! Try Again${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'grep -l beach places_bangalore.txt places_hyderabad.txt places_chennai.txt<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
grep -l beach places_bangalore.txt places_hyderabad.txt places_chennai.txt
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE}Good Job !\
now go for different options in grep\
source another files for different options${NC}"
echo ""

cd $WORKING_PATH
