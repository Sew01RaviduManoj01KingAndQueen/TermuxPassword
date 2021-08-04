#!/data/data/com.termux/files/usr/bin/bash
echo -e  $g "   
 ██████╗ ██╗   ██╗███████╗███████╗███╗   ██╗
██╔═══██╗██║   ██║██╔════╝██╔════╝████╗  ██║
██║   ██║██║   ██║█████╗  █████╗  ██╔██╗ ██║
██║▄▄ ██║██║   ██║██╔══╝  ██╔══╝  ██║╚██╗██║
╚██████╔╝╚██████╔╝███████╗███████╗██║ ╚████║
 ╚══▀▀═╝  ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═══╝
                                            
            ███████╗███████╗██╗    ██╗      
            ██╔════╝██╔════╝██║    ██║      
            ███████╗█████╗  ██║ █╗ ██║      
            ╚════██║██╔══╝  ██║███╗██║      
            ███████║███████╗╚███╔███╔╝      
            ╚══════╝╚══════╝ ╚══╝╚══╝       
                                            "
pkg install python
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login
mkdir /data/data/com.termux/files/usr/share/login/
clear

#TODO: hide input
echo "Coded By Ravindu Manoj"
echo ""
read -p "Enter New Password: " passone;
echo ""
echo "Before set,"
echo ""
read -p "ReEnter Your Password: " passtwo;
echo "Checking Your Password"
echo "❯❯"
echo "❯❯❯❯"
echo "❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯"
echo "❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯❯"

if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
	echo '❃ ❃ ❃ Password Set Successful ❃ ❃ ❃'
	echo ""
	echo '
┈┈╭━╱▔▔▔▔╲━╮┈┈┈ꜱ
┈┈╰╱╭▅╮╭▅╮╲╯┈┈┈ᴇ
╳┈┈▏╰┈▅▅┈╯▕┈┈┈┈ᴡ
┈┈┈╲┈╰━━╯┈╱┈┈╳┈ǫ
┈┈┈╱╱▔╲╱▔╲╲┈┈┈┈ᴜ
┈╭━╮▔▏┊┊▕▔╭━╮┈╳ᴇ
┈┃┊┣▔╲┊┊╱▔┫┊┃┈┈ᴇ
┈╰━━━━╲╱━━━━╯┈╳ɴ'
     echo ""
     echo "Time To To Check It"
     echo ""
     echo "close the termux"
     cd && exit

elif [ $passone != $passtwo ];
then
	echo 'Opps! Password dont match'
fi
