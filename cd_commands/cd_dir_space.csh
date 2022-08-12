# This command is used to clear the screen
clear
# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
# This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/fruits/apple/"banana tree"
#----------------------------------------------------------
echo $RED"Command: cd directory\ name"$NC
echo ""
#----------------------------------------------------------
echo $RED"Description:\
This command is used for changing the directory which has a whitespace in it."$NC
echo ""
#----------------------------------------------------------
echo $RED"Expected output:"$NC
echo ""
#----------------------------------------------------------
echo $RED"This is the path of the directory where you are currently in"$NC
pwd
echo ""
cd fruits/apple/banana\ tree
echo $RED"This is the path where you will go after using cd fruits/apple/banana\ tree"$NC
pwd
#----------------------------------------------------------
cd $WORKING_PATH/fruits/apple/

echo $RED"--------------------------------------------------------------------------------------"\
$NC
#----------------------------------------------------------
echo $GREEN"please enter the command cd banana\ tree"$NC
echo ""
come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
#----------------------------------------------------------
set userinput = `head -1`
echo ""
set comparing_variable = 'cd banana\ tree'
#----------------------------------------------------------
if ("$userinput" == "$comparing_variable") then
    echo $GREEN"Actual output:"$NC
    echo $GREEN"This is the path of the directory where you are currently in"$NC
    pwd
    echo ""
    cd banana\ tree
    echo $GREEN"This is the path where you will go after using cd fruits/apple/banana\ tree"$NC
    pwd
  else
    while (1)
       echo $GREEN"Actual output:"$NC
       echo $GREEN"Entered the wrong command:"\
       "Try Entering"$PURPLE"cd banana\ tree"$GREEN"<Enter>"$NC
       goto come_here
    end
endif

echo $RED"-------------------------------------------------------------------------------------"\
$NC

echo $PURPLE"Now you have learnt all about cd directory\ name \
and now you try doing remaining commands in cd"$NC
echo ""

cd $WORKING_PATH
# This is for removing the created directories
rm -rf fruits
