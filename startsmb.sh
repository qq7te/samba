docker run --rm -it \
       -p 139:139 \
       -p 445:445 \
       -v smb_music:/music \
       -v smb_daniele:/daniele \
       --name=samba \
       daniele/samba:4.13.3_3 \
       -p \
       -u "daniele;badpass;;casa" \
       -u "rdutt;badpass;;casa" \
       -u "arya;badpass;;casa" \
       -u "rishi;badpass;;casa" \
       -s "radhika;/rdutt;yes;no;no;rdutt,daniele"  \
       -s "daniele;/daniele;yes;no;no;daniele" \
       -s "public;/share;yes;no;no;daniele,rdutt,arya,rishi;;daniele" \
       -s "music;/music;yes;yes;yes;daniele,rdutt,arya,rishi;;daniele"
