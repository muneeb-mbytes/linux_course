# This command is used to searches a file for a\
# particular pattern of characters, and displays\
# the lines that doesn't contain that pattern.
#
# syntax : grep -v string filename
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/grep_experiment

echo ""
echo "${RED}Command: grep -v string filename${NC}"
echo ""
echo "${RED}Description: This command is to used to searches a file for a\
particular pattern of characters, and displays\
the lines that doesn't contain that pattern${NC}"
echo ""
cd $WORKING_PATH/grep_experiment/
echo ""
touch near_by_places.txt
echo "${BLUE}Type_of_place               Name_of_place${NC}" >> near_by_places.txt
echo "Temple                      Murdeshwar" >> near_by_places.txt
echo "tourist_place               Kundadri" >> near_by_places.txt
echo "beach                       Malpe" >> near_by_places.txt
echo "restaurant                  pai tiffins" >> near_by_places.txt
echo "Temple                      Udupi Krishna math" >> near_by_places.txt
echo "tourist_place               Yana" >> near_by_places.txt
echo "beach                       Padubidri" >> near_by_places.txt
echo "restaurant                  KMC Food court" >> near_by_places.txt
echo "Temple                      Dharmasthala" >> near_by_places.txt
echo "beach                       Kapu" >> near_by_places.txt
echo "tourist_place               Jog Falls" >> near_by_places.txt
echo "restaurant                  Rajasthani_Ghar" >> near_by_places.txt
echo "${PURPLE}near_by_places.txt Contents:${NC}"
cat near_by_places.txt
echo "Expected output :(for grep restaurant)"
echo "${GREEN}"
grep -v restaurant near_by_places.txt
echo "${NC}"
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try grep command for beaches and compare with expected output\
grep -v restaurant near_by_places.txt <enter>${NC}"
echo ""


echo "Actual output:"
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "grep -v restaurant near_by_places.txt") )
   echo ""
   echo "Actual output:"
    echo "${RED}Wrong! Try Again${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'grep -v restaurant near_by_places.txt<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
grep -v restaurant near_by_places.txt
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${PURPLE}Good Job !\
now go for different options in grep\
source another files for different options${NC}"
echo ""

cd $WORKING_PATH

rm -rf grep_experiment
