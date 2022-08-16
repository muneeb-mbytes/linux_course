
perl -MPOSIX -e '$0="DUMMY"; pause' &
#ps | grep 'dummy' > killid.txt
#setenv kill_id `head -c 5 killid.txt`
#kill -9 $kill_id
#This command is used for killing a process which going on

# syntax : kill -9 PID
#
#clearing the screen
clear
#Getting the current working directory
setenv WORKING_PATH `pwd`

mkdir -p $WORKING_PATH/kill_experiment
cd $WORKING_PATH/kill_experiment
echo ""
echo "${RED}Command : kill -9 PID${NC}"
echo ""
echo "${RED}Description : This command is used for killing\
a running process by using ps(process command)${NC}"
echo ""
touch killid.txt
echo "${RED}Created a dummy process for this experiment,\
process name is DUMMY${NC}"
echo "${RED}Try ps command to know what all the process are\
running with pid & details${NC}"
echo "${RED}Expected output :${NC}"

echo "unknown"
echo "unknown"
ps | grep 'DUMMY' > killid.txt
cat killid.txt
echo "unknown"
echo "unknown"
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try ps command to check the processes running ${NC}"

echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "ps") )
   echo ""
   echo "Actual output:"
    echo "${RED}Try ps${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'ps<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
ps
echo ""
echo "Now try to kill the process named DUMMY"
echo "using command kill - 9 PID of DUMMY"
setenv kill_id `head -c 5 killid.txt`
echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "kill -9 $kill_id") )
   echo ""
   echo "Actual output:"
    echo "${RED}Wrong! Try Again${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'kill -9 $kill_id<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
kill -9 $kill_id
echo ""
echo "${GREEN}Try ps command to check whether the process was killed or not ${NC}"

echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "ps") )
   echo ""
   echo "Actual output:"
    echo "${RED}Try ps${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'ps<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
ps
echo ""
cd $WORKING_PATH

rm -rf kill_experiment






