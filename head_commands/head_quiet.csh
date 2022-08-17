#This command is used to clear the screen
clear
#This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#This is used to create a new directories in your current path.
#mkdir -p $WORKING_PATH
cd $WORKING_PATH
rm -rf file2.txt
rm -rf file3.txt
#-------------------------------------------------------------------------------
echo "List of states:" >> file2.txt
echo "Andhrapradesh">> file2.txt
echo "Telangana" >> file2.txt
echo "Karnataka" >> file2.txt
echo "Madyapradesh" >> file2.txt
echo "List of Flowers" >> file3.txt
echo "rose" >> file3.txt
echo "hibiscus" >> file3.txt
echo "lotus" >> file3.txt
echo "tulip" >> file3.txt
echo "lily" >> file3.txt
echo "daisy" >> file3.txt
echo "canna" >> file3.txt

#--------------------------------------------------------------------------

echo "$RED Command: head -q  file2.txt $NC"
echo ""

echo "$RED Description:\
print the first NUM bytes of each file $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""

head -q file2.txt file3.txt

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command head -q  file2.txt file3.txt  below $NC"
echo ""
echo "$PURPLE Enter the command here: $NC"
echo ""
 
 set userinput = `head -1`
 echo ""

 if ("$userinput" == "head -q file2.txt file3.txt") then
 $userinput
          
 else
 echo "warning"
 endif

 echo "$RED\
 --------------------------------------------------------------------------------------------\
 $NC"

 echo $PURPLE "Now you have learnt all about head -q filename\
 and now you try doing remaining commands in head" $NC
 cd $WORKING_PATH
rm -rf file2.txt
rm -rf file3.txt
