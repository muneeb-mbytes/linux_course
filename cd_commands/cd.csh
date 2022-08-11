# This command is used to clear the screen
clear

# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`

# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple
mkdir -p $WORKING_PATH/fruits/orange
mkdir -p $WORKING_PATH/fruits/banana
# head -n -4 $WORKING_PATH/base.csh > dummy.txt && source dummy.txt
# rm -rf dummy.txt

echo "$RED Command: cd directory_name $NC"
echo ""

echo "$RED Description: This command is used for getting into the directory $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""

pwd
cd fruits
pwd
echo ""

cd $WORKING_PATH

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"
echo ""

echo "$GREEN please enter the command cd fruits below $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""

set userinput = `head -1`
echo ""

echo "$GREEN Actual output: $NC"
echo ""

# $userinput && ls && cd .. && rm -rf fruits && cd $WORKING_PATH

if ("$userinput" == "cd fruits")then
  pwd
  $userinput
  pwd
else
  echo "warning"
endif

echo ""

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo ""

echo "$PURPLE Now you have learnt all about cd command\
 and now you try doing remaining variations in cd. $NC"

cd $WORKING_PATH

# This is used to delete the directories you created
rm -rf fruits
