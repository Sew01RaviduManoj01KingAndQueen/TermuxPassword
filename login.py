#!/data/data/com.termux/files/usr/bin/env python

import getpass
import hashlib
import sys
import os

password = getpass.getpass()

filepass = open("/data/data/com.termux/files/usr/share/login/.pass", "r")
filepass = filepass.read().split("\n")[0]

password = password.encode()
password = hashlib.sha1(password).hexdigest()

if password != filepass:
    print("")
color = ["\033[1;32m","\033[1;32m"]
m = random.choice(color)+"☬☞Invalid password☜☬ \nOWNER:★★★★☠Ravindu Manoj☠★★★★\n┈┈╭━╱▔▔▔▔╲━╮┈┈┈ꜱ\n┈┈╰╱╭▅╮╭▅╮╲╯┈┈┈ᴇ\n╳┈┈▏╰┈▅▅┈╯▕┈┈┈┈ᴡ\n┈┈┈╲┈╰━━╯┈╱┈┈╳┈ǫ\n┈┈┈╱╱▔╲╱▔╲╲┈┈┈┈ᴜ\n┈╭━╮▔▏┊┊▕▔╭━╮┈╳ᴇ\n┈┃┊┣▔╲┊┊╱▔┫┊┃┈┈ᴇ\n┈╰━━━━╲╱━━━━╯┈╳ɴ\n\nYou Cant Access Without Password\n\nExiting..."
for msg in m:
    sys.stdout.write(msg)
    sys.stdout.flush()
    time.sleep(0.02)
    print("")
    os.system("exit")
else:
    prefix = "/data/data/com.termux/files/usr"
    home = "/data/data/com.termux/files/home"
    motd = False
    hush = False

    os.system("clear")

    try:
        open(prefix + "/etc/motd")
        motd = True
    except:
        motd = False

    try:
        open(home + "/.hushlogin")
        hush = True
    except:
        hush = False

    if motd and not hush:
        print(open(prefix + "/etc/motd").read())
    
    os.system(sys.argv[1] + " " + sys.argv[2])
