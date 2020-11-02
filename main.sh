#!/bin/bash
source /home/ubuntu/.bashrc
send_mail() {
    cat ~/website_src/.pull >>$MAILFILE
    cat $MAILFILE | /usr/sbin/ssmtp ishaqshaik084@gmail.com
}
MAILFILE=/home/ubuntu/mail.log
git pull &>.pull
c1=$(cat .pull | grep "up to date" | wc -l)
c2=$(cat .pull | grep "insertion" | wc -l)
c3=$(cat .pull | grep "Aborting" | wc -l)
if [ "$c1" -gt 0 ]; then
    exit
elif [ "$c2" -gt 0 ]; then
    cd /home/ubuntu/website_src && flutter build web
    commitMsg=$(git log -1 | tail -n 1)
    cd build
    mv ./*  ../../website
    git add .
    git commit -m "$commitMsg"
    git push
elif [ "$c3" -gt 0 ]; then
    echo "error"
    echo -e "Subject: There's a pulling error for this shit @ $(date)\nTo: sonuishaq67@gmail.com" >$MAILFILE
    send_mail
fi

