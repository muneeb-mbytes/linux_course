# This command is used for giving permissions to an already existing directory
#
# syntax : chmod 777 directoryname
#

#Clearing the screen
clear
# Getting the current working directory
setenv WORKING_PATH `pwd`
mkdir -p $WORKING_PATH/mkdir_practice
cd $WORKING_PATH/mkdir_practice

echo ""
echo "${BLUE}Command: chmod 777 directoryname ${NC}"
echo ""
echo "${BLUE}Description : This command is for creating multiple directories\
       but with an hierarchy of parent , child and sub-child ${NC}"
echo ""
echo "${BLUE}---------------------------------------------------------------------------------------    ------------------------------------ ${NC}"

echo "\nDoes below files has linux_basics ? type yes/no\n"
ls
set usrip = `head -1`
if ( $usrip == no ) then
echo "create linux_basics directory now using mkdir command in mkdir_practice\
and go to previous dir using cd - and try to source again"
goto LABEL
else
chmod 777 linux_basics
echo "${YELLOW}In $WORKING_PATH/\nlinux_basics (existing)directory can be\
      accessable for reading,\nwriting and executable by anyone${NC}"
    endif
echo "try ls"
set usrip = `head -1`
while ( !($usrip == ls) )
echo "try ls"
set usrip = `head -1`
end
ls
echo "${YELLOW}observe the change in color \
of directory to green background which indicates\
that it doesn't need permissions ${NC}"
LABEL:
echo ""
