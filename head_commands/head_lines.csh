#This command is used to clear the screen
clear
#This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#This is used to create a new directories in your current path.
#mkdir -p $WORKING_PATH
cd $WORKING_PATH
#----------------------------------------------------------------------------------------
echo "Tulips" >> file1.txt
echo "Rose" >> file1.txt
echo "Lily" >> file1.txt
echo "Lotus" >> file1.txt
echo "camellia" >> file1.txt
echo "canna" >> file1.txt
echo "daisy" >> file1.txt
echo "waterlily" >> file1.txt
echo "marigold" >> file1.txt
echo "iris" >> file1.txt
echo "Lavendar" >> file1.txt
echo "Orchid" >> file1.txt
echo "Poppy" >> file1.txt
echo "datura" >> file1.txt
echo "Bluebell" >> file1.txt
#-----------------------------------------------------------------------------------------
echo "$RED Command: head -n <number> file1.txt $NC"
echo ""

echo "$RED Description:\
print the mentioned number of contents $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""

head -n8 file1.txt

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command "$PURPLE head -n8 file1.txt "$GREEN below  $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""
 
 set userinput = `head -1`

echo ""

 if ("$userinput" == "head -n8 file1.txt") then
 $userinput

 else
 echo "warning"
 endif

 echo "$RED\
 --------------------------------------------------------------------------------------------\
 $NC"

 echo "$PURPLE Now you have learnt all about head -n filename \
 and now you try doing remaining commands in head $NC"

 cd $WORKING_PATH
 rm -rf file1.txt
