# This command is used to clear the screen
clear

# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`

# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/banana/

echo "$RED Command: cd .. $NC"
echo ""

echo "$RED Description:\
 This command is used for getting one step back from the current directory $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""
cd fruits/apple/banana/
pwd
echo ""

cd ..
pwd

cd $WORKING_PATH/

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command cd .. below $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""

set userinput = `head -1`
echo ""

echo "$GREEN Actual output: $NC"
echo ""

if ("$userinput" == "cd ..") then
  cd $WORKING_PATH/fruits/apple/banana/
  pwd
  $userinput
  echo ""
  pwd
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

