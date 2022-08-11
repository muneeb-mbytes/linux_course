# This command is used to clear the screen
clear

# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`

# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/banana/

echo "$RED Command: cd directory1/directory2 $NC"
echo ""

echo "$RED Description:\
 This command is used for getting into the sub directories using path $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""
pwd
cd fruits/apple/banana/
echo ""
pwd
cd $WORKING_PATH

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command cd fruits/apple/banana below $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""

set userinput = `head -1`
echo ""

echo "$GREEN Actual output: $NC"
echo ""

if ("$userinput" == "cd fruits/apple/banana") then
  pwd
  $userinput
  echo ""
  pwd
  else
    echo "warning"
endif

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$PURPLE Now you have learnt all about cd dir1/dir2/ \
 and now you try doing remaining commands in cd $NC"

cd $WORKING_PATH

# This is for removing the created directories
rm -rf fruits
