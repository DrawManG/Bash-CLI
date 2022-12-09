echo
echo
echo "-Был запущен CLI-"
echo
echo

# Insert data --- 

#git OK (update = none)
export git_Out_ENG='Already up to date.'
export git_Out_RUS='Уже обновлено.'
#git path to repository
export git_Path='/home/drawmang/Музыка/khala-client-cli'




# --------------
cd $git_Path

export LANGISH=$(echo $LANG)
export git_Result=$(git pull)

while :

do
    if [[ $LANGISH = 'ru_RU.UTF-8' ]]; then
        #code script for RUS
        
        if [[ $git_Result == $git_Out_RUS ]]; then
            echo "Update none. RUS"
        else
            echo "Update. RUS"
        fi
    else 
        #code script for ENG
        if [[ $git_Result == $git_Out_ENG ]]; then
            echo "Update none. ENG"
        else
            echo "Update. ENG"
        fi
    fi
    
    
    

    sleep 60
    

done