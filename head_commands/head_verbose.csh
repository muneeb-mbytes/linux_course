#This command is used to clear the screen
clear
#This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#This is used to create a new directories in your current path.
#mkdir -p $WORKING_PATH/
cd $WORKING_PATH
#--------------------------------------------------------
rm -rf file.txt
echo "Flowers:" >> file.txt
echo "Rose" >> file.txt
echo "Lily" >> file.txt
echo "waterlily" >> file.txt
echo "Daffodil" >> file.txt
echo "Dahila" >> file.txt
echo "Tulip" >> file.txt
echo "Lotus" >> file.txt
echo "Hibiscus" >> file.txt
echo "canna" >> file.txt
#--------------------------------------------------------
echo $RED"Command: head -v file.txt"$NC
echo ""

echo $RED"Description: Display the content with filename"$NC
echo ""

echo $RED"Expected output: "$NC
echo ""

head -v file.txt

echo "$RED--------------------------------------------------------------------------------------\
$NC"

echo $GREEN"please enter the command" $PURPLE"head -v file.txt" $GREEN"<enter>"$NC
echo ""
come_here:
echo $PURPLE"Enter the command here: "$NC
echo ""
 
set userinput = `head -1`
echo ""

if ("$userinput" == "head -v file.txt") then
    echo $GREEN"Actual output:"$NC
    echo ""
    $userinput
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

echo "$RED--------------------------------------------------------------------------------------\
$NC"

echo "$PURPLE Now you have learnt all about head -v filename \
and now you try doing remaining commands in head $NC"

cd $WORKING_PATH
rm -rf file.txt
