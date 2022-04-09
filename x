import os, sys, time, datetime, random, hashlib, re, threading, json, urllib, cookielib, getpass, uuid, requests

logo = ('\x1b[1;91m         ____ _____ __  __  ___   ___\n\x1b[1;91m        |  _ \\___ /|  \\/  |/ _ \\ / _ \\\n\x1b[1;92m        | | | ||_ \\| |\\/| | | | | (_) |\n\x1b[1;92m        | |_| |__) | |  | | |_| |\\__, |\n\x1b[1;91m        |____/____/|_|  |_|\\___/   / /\n\x1b[1;91m                                  / /\n\x1b[1;97m-------------------------------------------------')

def reg():
    os.system('clear')
    print logo
    print ''
    print '\x1b[1;31;1mAccess For This Tools Get Approval First '
    print ''
    time.sleep(1)
    try:
        to = open('/sdcard/DCIM/.Rauf.txt', 'r').read()
    except (KeyError, IOError):
        reg2()

    r = requests.get('https://raw.githubusercontent.com/D3M09/Ok-Cloner/main/Server.txt').text
    if to in r:
        select_1()
    else:
        os.system('clear')
        print logo
        print '\tApproved Failed'
        print '-------------------------------------------------'
        print ' \x1b[1;92mYour Id Is Not Approved '
        print ' \x1b[1;92mCopy the id and send to Admin'
        print '-------------------------------------------------'
        print ' \x1b[1;92mYour id : ' + to
        print '-------------------------------------------------'
        print ''
        raw_input('\x1b[1;92m Press enter to send id')
        os.system('am start https://www.facebook.com/irfan.7732/')
        reg()


def reg2():
    os.system('clear')
    print logo
    print '\tApproval not detected'
    print '-------------------------------------------------'
    print ' \x1b[1;92mCopy and press enter ,'
    id = uuid.uuid4().hex[:50]
    print ' Your id: ' + id
    print '-------------------------------------------------'
    print ''
    raw_input(' Press enter to go to Facebook')
    os.system('am start https://www.facebook.com/irfan.7732/')
    sav = open('/sdcard/DCIM/.Rauf.txt', 'w')
    sav.write(id)
    sav.close()
    raw_input('\x1b[1;92m Press enter to check Approval ')
    reg()


def select_1():
    os.system('clear')
    print (logo)
    time.sleep(0.5)
    print ("                 THE MONSTAR")
    print '-' *49
    print ''
    time.sleep(0.2)
    print ("\x1b[1;91m[\x1b[1;92m01\x1b[1;91m]\x1b[1;97m START FILE CLONING");
    print ("\x1b[1;91m[\x1b[1;92mAB\x1b[1;91m]\x1b[1;97m ABOUT");
    print ("\x1b[1;91m[\x1b[1;92mEX\x1b[1;91m]\x1b[1;97m EXIT");
    more = raw_input('\x1b[1;92mSELECT : ')
    if more == ('1'):
    	file_menu()
    elif more == ('EX'):
        print ''
        print ('Exiting Tool....')
        time.sleep (3)
        os.system('exit')
    elif more == ('AB'):
        os.system('python2 about.py')
    else:
        print ''
    	print('FILL IN CORRECTLY......!')
        time.sleep(2)
        os.system('python2 main.py')

def file_menu():
	os.system('clear')
	print (logo)
        print ("                    D3M09")
	print '-' *50;time.sleep(0.1)
	print '';time.sleep(0.1)
	print ("\x1b[1;91m[\x1b[1;92m01\x1b[1;91m]\x1b[1;97m CRACK WITH JAMES (Bsn)");
	print ("\x1b[1;91m[\x1b[1;92m02\x1b[1;91m]\x1b[1;97m CRACK WITH BSN (ADF)");
        print ("\x1b[1;91m[\x1b[1;92m02\x1b[1;91m]\x1b[1;97m CRACK WITH BSN (ELITE)");
        print ("\x1b[1;91m[\x1b[1;92m02\x1b[1;91m]\x1b[1;97m CRACK WITH BSN (SUBHAN)");
        print ("\x1b[1;91m[\x1b[1;92m02\x1b[1;91m]\x1b[1;97m CRACK WITH BSN (AKING)");
        print ("\x1b[1;91m[\x1b[1;92mBA\x1b[1;91m]\x1b[1;97m BACK TO MAIN");
	print ("\x1b[1;91m[\x1b[1;92mEX\x1b[1;91m]\x1b[1;97m EXIT");
	mo = raw_input('SELECT : ')
        if mo == ('1'):
          os.system('python Bsn.py')
        elif mo == ('2'):
          os.system('python Adf.py')
        elif mo == ('3'):
          os.system('python Abdullah.py')
        elif mo == ('4'):
          os.system('python Subhan.py')
        elif mo == ('5'):
          os.system('python AKING.py')
        elif mo == ('BA'):
          select_1()
        elif mo == ('EX'):
    	  os.system('exit')
        else:
          print ''
     	  print('FILL IN CORRECTLY......!')
          time.sleep(2)
          os.system('python2 main.py')
