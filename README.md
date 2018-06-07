# walle

Prerequisites:  
In order for the application to work, you should:  
1) Have a UNIX-based system with a shell
2) Have Python 2.7 or newer
3) Have xinetd installed  
  
Installation:  
Clone the repository to a folder on your machine.  
In shell, *cd* to the folder and run *sudo make*  
It will install the application on your computer, download and install *pip* package for Python.  
Now, run *pip install ryu* in shell  
After, run *ryu-manager rest-forward.py*  
Run *systemctl start xinetd*  
Now, run *main_ui* to launch the local version of the application or *nmain_ui* to launch the server version of the app.  
You can change the language of the app to Russian by setting LANG and/or LANGUAGE to ru_RU.UTF-8 (e.g. run *LANG=ru_RU.UTF-8* in shell) and then running the app  
