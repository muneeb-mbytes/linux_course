# This command is used to clear the screen
clear
# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
# This is used to create a new directories in your current path.
#--------------------------------------------------------------------------------- 
echo $RED"Command: setenv variable_name 'value'"$NC
echo ""
 
echo $RED"Description:\
setenv is a built-in function of the C shell (csh).\
It is used to define the value of environment variables."$NC
echo ""
echo $RED"Expected output:"$NC
echo ""
set sample = '10'

$sample

#unsetenv sample

echo $RED"-----------------------------------------------------------------------------------"$NC
echo ""

echo $GREEN"Please try the below command " $PURPLE"----------" $GREEN"<enter>"${NC}
echo ""

echo "${PURPLE}Enter Command ${NC}:"
echo ""
    
set userinput = `head -1`
set compare = `echo $userinput`

#echo "this is $'sample'" 
#echo '$\e"ssample\e"t' 
echo ""
#setenv a `echo '$\e"ssample\e"t'`
echo ""
echo $userinput
echo $compare
if ("$userinput" == "$compare") then
  echo $compare
  echo "hi working"
 else
  echo "wrong command"
endif

echo "$RED-----------------------------------------------------------------------------------$NC"

 echo "$PURPLE Now you have learnt all about setenv \
  and now you try doing remaining commands in environment variables $NC"

#unsetenv $WORKING_PATH
#unsetenv $sample
