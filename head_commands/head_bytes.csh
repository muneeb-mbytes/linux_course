#This command is used to clear the screen
clear
#This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#This is used to create a new directories in your current path.
mkdir -p $WORKING_PATH
cd $WORKING_PATH
#-----------------------------------------------------------------------------
echo "List of states:" >> file.txt
echo "Andhra Pradesh" >> file.txt
echo "Tamilnadu" >> file.txt
echo "Karnataka" >> file.txt
echo "Uttar Pradesh" >> file.txt
echo "Telengana" >> file.txt
echo "Delhi" >> file.txt
echo "Kerala" >> file.txt
echo "Oddisa" >> file.txt
echo "West Bengal" >> file.txt
echo "Maharastra" >> file.txt
echo "Madhya Pradesh" >> file.txt
echo "Goa" >> file.txt
echo "Rajasthan" >> file.txt
echo "Punjab" >> file.txt
echo "Harayana" >> file.txt
echo "Gujarath" >> file.txt
echo "Himachal Pradesh" >> file.txt
echo "Bihar" >> file.txt
echo "Jharkhand" >> file.txt
echo "Chhattisgarh" >> file.txt
echo "Assam" >> file.txt
echo "Mizoram" >> file.txt
echo "Arunachal Pradesh" >> file.txt
#-----------------------------------------------------------------------------
echo "$RED Command: head -c <number> file_name $NC"
echo ""

echo "$RED Description: \
print the number of characters which equals to the bytes mentioned in a file $NC"
echo ""

echo "$RED Expected output: $NC"
echo ""
head -c 60 file.txt
echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo $GREEN"please enter the command" $PURPLE"head -c 60 file.txt" $GREEN"<enter>"$NC
echo ""

echo "$PURPLE Enter the command here: $NC"
echo ""
 
set userinput = `head -1`

echo ""

if ("$userinput" == "head -c 60 file.txt") then
    $userinput
  
  else
    echo "warning"
endif

echo "$RED\
--------------------------------------------------------------------------------------------\
$NC"

echo "$PURPLE Now you have learnt all about head -c filename \
and now you try doing remaining commands in head $NC"

cd $WORKING_PATH
