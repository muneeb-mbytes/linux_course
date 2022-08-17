#This command is used to clear the screen
clear

#This command is used to store the path of current working directory into wp
setenv wp `pwd`
#This is used to create a new file
#touch file.txt
cd $wp
echo""
echo $RED"Description: In this we are taking few lines of file.txt using head command\
and giving it as input to tail command using piping and later storing the output in\
list.txt"\
$NC
echo ""
echo $RED"Expected output: " $NC
echo ""
echo $RED"This are the actual contents of the file" $NC
cat file.txt
echo ""
echo $RED"This is the output you'll get using head -7 file.txt | tail -3 > list.txt " $NC
head -7 file.txt | tail -3 > list.txt
cat list.txt
cd $wp
echo $RED"-------------------------------------------------------------------"\
$NC

echo $GREEN"Please enter the command" $PURPLE"head -7 file.txt | tail -3 > list.txt" $GREEN"<ENTER>"\
$NC
echo ""
come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
set command1 = `$userinput`
echo ""
   if("$userinput" == "head -7 file.txt | tail -3 > list.txt") then
      echo $GREEN"Actual output:" $NC
      echo ""
      echo $GREEN"These are the actual contents of the file " $NC
      cat file.txt
       echo ""
       echo $GREEN"This is the output you'll get using head -7 file.txt | tail -3 > list.txt" $NC
       $command1
       cat list.txt
       echo ""
     else
       echo $GREEN"Actual output:" $NC
       echo ""
           while(1)
         echo $GREEN"Entered wrong command:"$NC
         echo $GREEN"Try entering" $PURPLE"head -7 file.txt | tail -3 > list.txt" $GREEN"<enter>"\
             $NC
             echo ""
            goto come_here
           end
   endif
echo $RED"-----------------------------------------------------------------"\
$NC
echo ""
echo $PURPLE"Now you have learnt all about tail command application\
and now you try doing remaining variations in tail."$NC
echo ""
cd $wp
#This is used to delete the directories you created
rm list.txt
