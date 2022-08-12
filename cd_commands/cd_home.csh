# This command is used to clear the screen
clear
# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/banana/
#----------------------------------------------------
echo $RED"Command: cd ~"$NC
echo ""
#----------------------------------------------------
echo $RED"Description:\
This command is used for going back into home directory from any directory"$NC
echo ""
#----------------------------------------------------
cd $WORKING_PATH/fruits/apple/banana
echo "$RED Expected output: $NC"
echo""
echo $RED"This is the path of the directory where you are currently in"$NC
pwd
echo ""
cd ~
echo $RED"This is the path of the directory where you will be in after using cd ~"$NC
pwd
echo""

cd $WORKING_PATH
#----------------------------------------------------
echo $RED"-------------------------------------------------------------------------------------"\
$NC
#----------------------------------------------------
echo $GREEN"please enter the command" $PURPLE"cd ~" $GREEN"<enter>"$NC
echo ""
come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
echo ""
set command_variable = "cd $HOME"
#----------------------------------------------------

if ("$userinput" == "cd $HOME") then
    echo $GREEN"Actual output:"$NC
    echo ""
    cd $WORKING_PATH/fruits/apple/banana
    echo $GREEN"This is the path of the directory where you are currently in"$NC
    pwd
    echo ""
    $userinput
    echo $RED"This is the path of the directory where you will be in after using cd ~"$NC
    pwd
  else
    while(1)
      echo $GREEN"Actual output:"$NC
      echo ""
      echo $GREEN"Entered the wrong command"\
      "Try Entering" $PURPLE"<enter>"$NC
      goto come_here
    end
endif

echo $RED"------------------------------------------------------------------------------------"\
$NC

echo $PURPLE"Now you have learnt all about cd ~ \
and now you try doing remaining commands in cd"$NC
echo ""

cd $WORKING_PATH
# This is for removing the created directories
rm -rf fruits
