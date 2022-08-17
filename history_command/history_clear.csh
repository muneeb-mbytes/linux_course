#this is used to clear the screen
clear
# this is used to show the working path
setenv WORKING_PATH `pwd`

 #---------------------------------------------------------
 echo $RED"Command: history -c"$NC
 echo ""
 echo $RED"Discription :This command is used for remove the all commands from history."$NC
 echo ""
 echo $RED"expected output :" $NC
 echo ""
 echo "history"
 history
 echo ""
# echo "history -c"
# history -c
 echo ""

 echo $RED"-------------------------------------------------------------------"$NC
 
 echo ""
 #------------------------------------------------------------
 echo $GREEN"please enter the command" $PURPLE"ls"$NC
 echo ""
 come_here_l:
 echo $PURPLE"Enter the command here :"$NC
 echo ""
 set userinput_l = `head -1`
 echo ""
  #-----------------------------------------------------
  if ("$userinput_l" == "ls")then
    $userinput_l
    echo ""
    echo $GREEN "please enter the command" $PURPLE "pwd"$NC
    echo ""
    come_here_p:
    echo $PURPLE "Enter the command here :" $NC
    echo ""
    set userinput_p = `head -1`
    echo ""
    #-----------------------------------------
    if ("$userinput_p" == "pwd")then
      $userinput_p
      echo ""
      echo $GREEN "please enter the command" $PURPLE " cd ~"$NC
      echo ""
      come_here_cd_h:
      echo $PURPLE "Enter the command here :" $NC
      echo ""
      set userinput_cd_h = `head -1`
      echo ""       
      #---------------------------------------
      if ("$userinput_cd_h" == "cd $HOME")then
        $userinput_cd_h
        echo ""
        echo $GREEN "please enter the command" $PURPLE"cd -"$NC
        echo ""
        come_here_cd_j:
        echo $PURPLE "Enter the command here :" $NC
        echo ""
        set userinput_cd_j = `head -1`
        echo ""
        #---------------------------------------
        if ("$userinput_cd_j" == "cd -")then
          $userinput_cd_j
          echo ""
          echo  $GREEN "please enter the command" $PURPLE"history -c"$NC
          echo ""
          come_here_h:
          echo $PURPLE "Enter the command here :" $NC
          echo ""
          set userinput_h = `head -1`
          echo ""
          #---------------------------------------------
          if ("$userinput_h" == "history -c")then
            $userinput_h
            echo ""
            goto come
          else
            while(1)
              echo $GREEN "enter wrong command:"$NC
              echo $GREEN "Try entering" $PURPLE "history -c" $GREEN "<enter>"$NC
              echo""
              goto come_here_h
            end
          endif
          #-------------------------------------
        else
          while(1)
            echo $GREEN "enter wrong command:"$NC
            echo $GREEN "Try entering" $PURPLE "cd -" $GREEN "<enter>"$NC
            echo ""
            goto come_here_cd_j
          end
        endif
        #-------------------------------------------------------------
      else
        while(1)
          echo $GREEN "enter wrong command:"$NC
          echo $GREEN "Try entering" $PURPLE "cd ~" $GREEN "<enter>"$NC
          echo""
          goto come_here_cd_h
        end
      endif
``````#---------------------------------------------
    else
      while(1)
        echo $GREEN "enter wrong command :"$NC
        echo $GREEN "Try entering" $PURPLE "pwd" $GREEN "<enter>"$NC
        echo ""
        goto come_here_p
      end
    endif
    #-------------------------------------------------
  else
    while(1)
      echo $GREEN "enter wrong command :"$NC
      echo $GREEN "Try entering" $PURPLE "ls" $GREEN "<enter>"$NC
      echo ""
      goto come_here_l
    end
  endif
  #----------------------------------------------

come:
cd $WORKING_PATH

