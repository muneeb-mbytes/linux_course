# This command is used to searches a file for a\
# particular pattern of characters, and displays\
# the files names only which has that pattern
#
# syntax : grep -l string file1 file2 file3
#Clearing the screen
clear 
# Getting the current working directory
 setenv WORKING_PATH `pwd`
 
mkdir -p $WORKING_PATH/grep_experiment

echo ""
echo "${RED}Command: grep -l string file1 file2 file3${NC}"
echo ""
echo "${RED}Description: This command is to used to search a file for a\
particular pattern of characters, and displays\
the files names only which has that pattern${NC}"
mkdir $WORKING_PATH/grep_experiment/
cd $WORKING_PATH/grep_experiment/
echo ""
touch places_bangalore.txt
echo "${BLUE}Type_of_place               Name_of_place${NC}" >> places_bangalore.txt
echo "Temple                      Murdeshwar" >> places_bangalore.txt
echo "tourist_place               Kundadri" >> places_bangalore.txt
echo "beach                       Malpe" >> places_bangalore.txt
echo "restaurant                  pai tiffins" >> places_bangalore.txt
echo "Temple                      Udupi Krishna math" >> places_bangalore.txt
echo "tourist_place               Yana" >> places_bangalore.txt
echo "beach                       Padubidri" >> places_bangalore.txt
echo "restaurant                  KMC Food court" >> places_bangalore.txt
echo "Temple                      Dharmasthala" >> places_bangalore.txt
echo "beach                       Kapu" >> places_bangalore.txt
echo "tourist_place               Jog Falls" >> places_bangalore.txt
echo "restaurant                  Rajasthani_Ghar" >> places_bangalore.txt
touch places_hyderabad.txt
echo "${BLUE}Type_of_place               Name_of_place${NC}" >> places_hyderabad.txt
echo "tourist_place               Charminar" >> places_hyderabad.txt
echo "restaurant                  Bawarchi" >> places_hyderabad.txt
echo "tourist_place               Golconda" >> places_hyderabad.txt
echo "restaurant                  subbaya gari hotel" >> places_hyderabad.txt
echo "tourist_place               Ananthagiri hills" >> places_hyderabad.txt
echo "restaurant                  Paradise" >> places_hyderabad.txt
touch places_chennai.txt
echo "beach                       Marina" >> places_chennai.txt
echo "Temple                      Vellore" >> places_chennai.txt
echo "beach                       ECR Beach" >> places_chennai.txt
echo "Temple                      Meenakshi" >> places_chennai.txt
echo "beach                       Juhu Beach" >> places_chennai.txt
echo "Temple                      kapaleeshwarar" >> places_chennai.txt
echo "${PURPLE}places_bangalore Contents:${NC}"
cat places_bangalore.txt
echo "${PURPLE}places_hyderabad Contents:${NC}"
cat places_hyderabad.txt
echo "${PURPLE}places_chennai Contents:${NC}"
cat places_chennai.txt
cd $WORKING_PATH/grep_experiment/
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

rm -rf grep_experiment

