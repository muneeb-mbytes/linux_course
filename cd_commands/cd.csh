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
echo $RED"Command: cd directory_name"$NC
echo ""
echo $RED"Description: This command is used for getting into the directory"$NC
echo ""
echo $RED"Expected output:"$NC
echo ""
#------------------------
echo $RED"This is the path where you are currently in"$NC
pwd
cd fruits
echo ""
echo $RED"This is the path where you will be when using cd fruits"$NC
pwd
cd $WORKING_PATH

echo $RED"-------------------------------------------------------------------------------------"\
$NC

echo $GREEN"please enter the command" $PURPLE"cd fruits" $GREEN"<enter>"$NC
echo ""

come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
echo ""

# $userinput && ls && cd .. && rm -rf fruits && cd $WORKING_PATH
if("$userinput" == "cd fruits") then
    echo $GREEN"Actual output:"$NC
    echo ""
    echo $GREEN"This is the path where you are currently in"$NC
    pwd
    echo ""
    $userinput
    echo $GREEN"This is the path where you will be when using cd fruits"$NC
    pwd
else
    echo $GREEN"Actual output:"$NC
    echo ""
    while (1)
      echo $GREEN"Entered wrong command:"$NC
      echo $GREEN"Try entering" $PURPLE"cd fruits" $GREEN"<enter>"$NC
      echo ""
      goto come_here
    end
endif

echo $RED"--------------------------------------------------------------------------------------"\
$NC

echo $PURPLE"Now you have learnt all about cd command \
and now you try doing remaining variations in cd."$NC
echo ""

cd $WORKING_PATH
# This is used to delete the directories you created
rm -rf fruits
