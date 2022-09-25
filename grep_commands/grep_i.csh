# This command is used to searches a file for a\
# particular pattern of characters, and displays\
# the lines that contain that pattern with case in-sensitive
#
# syntax : grep -i string filename
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`

echo ""
echo "${RED}Command: grep -i string filename${NC}"
echo ""
echo "${RED}Description: This command is to used to searches a file for a\
particular pattern of characters, and displays\
the lines that contain that pattern with case in-sensitive pattern${NC}"
echo "${PURPLE}near_by_places.txt Contents:${NC}"
echo "${BLUE}Type_of_place               Name_of_place${NC}"
cat near_by_places.txt
echo ""
echo "Expected output :(for grep temple)"
echo "${GREEN}"
grep -i temple near_by_places.txt
echo "${NC}"
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try grep command for beaches and compare with expected output\
grep -i temple near_by_places.txt <enter>${NC}"
echo ""


echo "Actual output:"
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "grep -i temple near_by_places.txt") )
   echo ""
   echo "Actual output:"
    echo "${RED}Wrong! Try Again${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'grep -i temple near_by_places.txt<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
grep -i temple near_by_places.txt
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE}Good Job !\
now go for different options in grep\
source another files for different options${NC}"
echo ""

cd $WORKING_PATH
