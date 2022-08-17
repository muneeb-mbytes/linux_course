#This command is used to clear the screen
clear
#This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH/
#-------------------------------------------------------------------------------------
echo " List of states:" >>file.txt
echo "Andhra Pradesh" >> file.txt
echo "Tamilnadu" >>file.txt
echo "Karnataka" >> file.txt
echo "Uttar Pradesh" >> file.txt
echo "Telangana" >> file.txt
echo "Delhi" >> file.txt
echo "Kerala" >> file.txt
echo "Oddisa" >> file.txt
echo "West Bengal" >> file.txt
echo "Maharastra" >> file.txt
echo "Madhya Pradesh" >> file.txt
echo "Goa" >> file.txt
echo "Rajasthan" >>file.txt
echo "Punjab" >> file.txt
echo "Flowers:" >> file1.txt
echo "waterlily" >>file1.txt
echo "canna" >> file1.txt
echo "cosmos" >> file1.txt
echo "Rose">> file1.txt
echo "whiterose" >> file1.txt
echo "hibiscus" >> file1.txt
echo "marigold" >> file1.txt
echo "tulip" >> file1.txt
echo "orchid" >> file1.txt
echo "Rose" >> file1.txt
echo "lily" >> file1.txt
echo "lavender" >> file1.txt
echo "$RED Command: head file.txt file1.txt $NC"
echo ""

echo "$RED Description:\
print the first 10 lines of each file $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""

head file.txt file1.txt

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$GREEN please enter the command head file.txt file1.txt below $NC"
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""
 
 set userinput = `head -1`
 echo ""
 if ("$userinput" == "head file.txt file1.txt") then
 $userinput
 else
 echo "warning"
 endif

 echo "$RED\
 --------------------------------------------------------------------------------------------\
 $NC"

 echo "$PURPLE Now you have learnt all about head file1 file2 \
 and now you try doing remaining commands in head $NC"

 cd $WORKING_PATH
 rm -rf file.txt
 rm -rf file1.txt
