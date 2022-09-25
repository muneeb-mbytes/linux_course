# This command is used to searches a file for a\
# particular pattern of characters, and displays\
# the lines that contain that pattern
#
# syntax : grep string filename
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
echo ""
echo "${RED}Command: grep string filename ${NC}"
echo ""
echo "${RED}Description: This command is to used to searches a file for a\
particular pattern of characters, and displays\
the lines that contain that pattern${NC}"
echo ""
echo "${PURPLE}near_by_places.txt Contents:${NC}"
echo "${BLUE}Type_of_place               Name_of_place${NC}"
cat near_by_places.txt
echo ""
echo "Expected output :(for grep beach)"
echo "${GREEN}"
grep beach near_by_places.txt
echo "${NC}"
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try grep command for beaches and compare with expected output\
grep beach near_by_places.txt <enter>${NC}"
echo ""


echo "Actual output:"
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "grep beach near_by_places.txt") )
   echo ""
   echo "Actual output:"
    echo "${RED}Wrong! Try Again${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'grep beach near_by_places.txt<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
grep beach near_by_places.txt
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE}Good Job !\
you have completed basic grep , now go for different options in grep\
source another files for different options${NC}"
echo ""

cd $WORKING_PATH
