# This command is used to clear the screen
clear

# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`

# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/banana/

echo "$RED Command: cd -p <directory_nam> $NC"
echo ""

echo "$RED Description:\
 This command is used for getting the path link and changing the current directory $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""
cd fruits/apple/
echo ""
pwd
echo ""
cd -p banana

cd $WORKING_PATH/

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command cd -p banana below $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""

set userinput = `head -1`
echo ""

echo "$GREEN Actual output: $NC"
echo ""

if ("$userinput" == "cd -p banana") then
 cd $WORKING_PATH/fruits/apple/
 pwd
 echo ""
 $userinput
  else
    echo "warning: wrong command"
endif

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$PURPLE Now you have learnt all about cd .. \
 and now you try doing remaining commands in cd $NC"

cd $WORKING_PATH

# This is for removing the created directories
rm -rf fruits
