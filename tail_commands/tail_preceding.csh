#This command is used to clear the screen
clear

#This command is used to store the path of current working directory into wp
setenv wp `pwd`
#This is used to create a new file
#touch file.txt
cd $wp
echo ""
echo $RED"Command: tail file1_name file2_name" $NC
echo ""
echo $RED"Description: This command is used to merge and print all the contents \
of two files into one without file_names as header."\
$NC
echo ""
echo $RED"Expected output: " $NC
echo ""
#echo $RED"This are the actual contents of the file" $NC
#cat file.txt
#echo ""
echo $RED"This is the output you'll get using tail file.txt file1.txt " $NC
tail file.txt file1.txt
cd $wp
echo $RED"-------------------------------------------------------------------"\
$NC

echo $GREEN"Please enter the command" $PURPLE "tail  file.txt file1.txt" $GREEN"<ENTER>"$NC
echo ""
come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
echo ""
  if("$userinput" == "tail file.txt file1.txt") then
       echo $GREEN"Actual output:" $NC
       #echo ""
       #echo $GREEN"These are the actual contents of the file " $NC
       #cat file.txt
       echo ""
       echo $GREEN"This is the output you'll get using tail file.txt file1.txt" $NC
       $userinput
       echo ""
     else
       echo $GREEN"Actual output:" $NC
       echo ""
           while(1)
             echo $GREEN"Entered wrong command:"$NC
             echo $GREEN"Try entering" $PURPLE"tail file.txt file1.txt" $GREEN"<enter>"$NC
             echo ""
            goto come_here
           end
   endif
echo $RED"-----------------------------------------------------------------"\
$NC
echo ""
echo $PURPLE"Now you have learnt all about tail file1 file2 command\
and now you try doing remaining variations in tail."$NC
echo ""
cd $wp
#This is used to delete the directories you created
#rm file.txt
