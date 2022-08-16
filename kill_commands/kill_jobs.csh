perl -MPOSIX -e '$0="DUMMY_JOB"; pause' &
#setenv kill_id `head -c 5 killid.txt`
#kill %<JOB_ID>
#This command is used for killing a jobs which are running

# syntax : kill %<JOB_ID>
#
#clearing the screen
clear
#Getting the current working directory
setenv WORKING_PATH `pwd`

mkdir -p $WORKING_PATH/kill_experiment
cd $WORKING_PATH/kill_experiment
echo ""
echo "${RED}Command : kill %<JOB_ID>${NC}"
echo ""
echo "${RED}Description : This command is used for killing\
a running jobs ${NC}"
echo ""
touch jobid.txt
echo "${RED}Created a dummy job for this experiment,\
job name is DUMMY_JOB${NC}"
echo "${RED}Try jobs command to know what all the jobs are\
running with job id ${NC}"
echo "${RED}Expected output :${NC}"

echo "unknown"
echo "unknown"
jobs >jobid.txt
grep 'DUMMY_JOB' jobid.txt > job_kill_id.txt
cat job_kill_id.txt
echo "unknown"
echo "unknown"
echo ""
echo "${RED}--------------------------------------------------------------------------------${NC}"
echo ""
echo "${GREEN}Try jobs command to check the processes running ${NC}"

echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "jobs") )
   echo ""
   echo "Actual output:"
    echo "${RED}Try jobs${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'jobs<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
jobs
echo ""
echo "Now try to kill the job named DUMMY_JOB"
echo "using command kill %ID of DUMMY_JOB"
setenv job_kill_id `head -c 2 job_kill_id.txt | tail -c 1`
echo -n "${PURPLE}Enter Command : ${NC}"

set userinput = `head -1`
while ( !("$userinput" == "kill %$job_kill_id") )
   echo ""
   echo "Actual output:"
    echo "${RED}Wrong! Try Again${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'kill %$job_kill_id<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
kill %$job_kill_id
echo ""
echo "${GREEN}Try jobs command to check whether the job was killed or not ${NC}"

echo -n "${PURPLE}Enter Command : ${NC}"
set userinput = `head -1`
while ( !("$userinput" == "jobs") )
   echo ""
    echo "${RED}Try jobs${NC}"
    echo ""
    echo -n "${PURPLE}Enter Command 'jobs<enter>': ${NC}"
    set userinput = `head -1`
end
echo ""
jobs
echo ""
cd $WORKING_PATH

rm -rf kill_experiment
