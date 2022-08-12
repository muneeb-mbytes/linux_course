# This command is used to clear the screen
clear
# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/banana/
#--------------------------------------------------------------
echo $RED"Command: cd .."$NC
echo ""
#--------------------------------------------------------------
echo $RED"Description:\
This command is used for getting one step back from the current directory"$NC
echo ""
#--------------------------------------------------------------
echo $RED"Expected output:"$NC
echo ""
cd fruits/apple/banana/
echo $RED"This is the path of the directory where you are currently in"$NC
pwd
echo ""
cd ..
echo $RED"This is the path of the directory where you will be after using cd .. command"$NC
pwd

cd $WORKING_PATH/
#--------------------------------------------------------------
echo $RED"------------------------------------------------------------------------------------"\
$NC
#--------------------------------------------------------------
echo $GREEN"please enter the command" $PURPLE"cd .." $GREEN"<enter>"$NC
echo ""
come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
echo ""
echo $GREEN"Actual output:"$NC
echo ""

if ("$userinput" == "cd ..") then
  echo $GREEN"Actual output:"$NC
  echo ""
  cd $WORKING_PATH/fruits/apple/banana/
  echo $GREEN"This is the path of the directory where you are currently in"$NC
  pwd
  $userinput
  echo ""
  echo $RED"This is the path of the directory where you will be after using cd .. command"$NC
  pwd
  else
    while (1)
      echo $GREEN"Actual output:"$NC
      echo ""
      echo $GREEN"Entered the wrong command"\
      "Try Entering" $PURPLE"cd .."$NC
      goto come_home
    end
endif

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$PURPLE Now you have learnt all about cd .. \
 and now you try doing remaining commands in cd $NC"

cd $WORKING_PATH

# This is for removing the created directories
rm -rf fruits

