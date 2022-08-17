# This command is used to clear the screen
clear
#-------------------------------------------------------------------------------------------
# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#-------------------------------------------------------------------------------------------
# This is used to create a new directories in your current path.
#-------------------------------------------------------------------------------------------
echo $RED"Command: setenv"$NC
echo ""
echo $RED"Description:\
This command is used to see all the environmental variable which are already created."\
$NC
echo ""
echo $RED"Expected output:"$NC
echo ""
#----------------------------------------------------------------------
setenv sample '10'
echo ""
setenv
cd $WORKING_PATH
#----------------------------------------------------------------------
echo $RED"-------------------------------------------------------------------------------------"\
$NC

echo $GREEN"please enter the command" $PURPLE"setenv" $GREEN"<enter>"$NC
echo ""

come_here_1:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
echo ""

if("$userinput" == "setenv") then
  echo $GREEN"Actual output:"$NC
  echo ""
  $userinput
  else
  while (1)
    echo $GREEN"Entered wrong command:"$NC
    echo $GREEN"Try entering" $PURPLE"setenv" $GREEN"<enter>"$NC
    echo ""
    goto come_here_1
  end
endif


echo $RED"-------------------------------------------------------------------------------------"\
$NC

echo $PURPLE"Now you have learnt all about cd command \
and now you try doing remaining variations in cd."$NC
echo ""

cd $WORKING_PATH
# unsetting the environmental variables
unsetenv sample
