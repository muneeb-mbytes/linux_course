# This command is used for deleting multiple directories at a time
#
# syntax : rm -rf dir1 dir2 or rm -r dir1 dir2
#
# (rm -r is very similar but not identical to rm -rf,rm -r will exit
#  on the first error unlike rm -rf which continue on and keep 
#  deleting everything it can.)
#
rm -rf manipal_b5_dummy manipal_b6_dummy

# this will deletes the both the directories 
# Note : make sure before deleting, this can't be undo
echo "${YELLOW}Deleting manipal_b5_dummy and manipal_b6_dummy both directories recursively ${NC}"
