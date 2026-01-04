    #!/bin/bash
    ID=$(id -u)
    echo "Script name is: $0"
    VALIDATE(){
        if [ $1 -ne 0 ]
        then
        echo "Error: $2 Installation got failed"
        exit 1
        else
        echo "$2 Installation went success"
        fi 
    }
    if [ $ID -ne 0 ]
    then
    echo "Error:Please run with root access"
    exit 1
    else
    echo "you are root user"
    fi
    yum install mysql -y

    VALIDATE $? "Installing Mysql"
    
    yum install git -y

    VALIDATE $? "Installing GIT"
