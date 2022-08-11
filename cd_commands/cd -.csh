# This command is used to clear the screen
clear

# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`

# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/banana/

echo "$RED Command: cd - $NC"
echo ""

echo "$RED Description:\
 This command is used for jumping into the previous state where you came from $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""
pwd
cd fruits/apple/banana/
pwd
cd -
pwd
cd $WORKING_PATH

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command cd - $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""

set userinput = `head -1`
echo ""

echo "$GREEN Actual output: $NC"
echo ""

if ("$userinput" == "cd -") then
  pwd
  cd fruits/apple/banana
  pwd
  $userinput
  pwd
  else
    echo "warning"
endif

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$PURPLE Now you have learnt all about cd - \
 and now you try doing remaining commands in cd $NC"

cd $WORKING_PATH

# This is for removing the created directories
rm -rf fruits
