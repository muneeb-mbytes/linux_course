#This command is used to clear the screen
clear
#This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#This is used to create a new directories in your current path.
#mkdir -p $WORKING_PATH/
cd $WORKING_PATH

echo "$RED Command: head -v  file.txt $NC"
echo ""

echo "$RED Description:\
Display the content with filename $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""

head -v file.txt

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command "$PURPLE  head -v file.txt "$GREEN below $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""
 
 set userinput = `head -1`
 echo ""

 if ("$userinput" == "head -v file.txt") then
    
      
 $userinput
            
 else
 echo "warning"
 endif

 echo "$RED\
 --------------------------------------------------------------------------------------------\
 $NC"

 echo "$PURPLE Now you have learnt all about head -v filename \
 and now you try doing remaining commands in head $NC"

 cd $WORKING_PATH
 rm -rf file.txt
