    echo -e "\033c"
        echo "
            ==========================================================================
                 
                 $(tput setaf 6) ##            ##    ##                        ##    ##################    ##            ##
                 $(tput setaf 6)   ##       ##       ##                        ##                       ##                           ##       ##
                 $(tput setaf 6)      ## ##          ##                        ##                       ##                              ## ##
                 $(tput setaf 6)         ##             ##                        ##                       ##                                 ##
                 $(tput setaf 6)         ##             ##                        ##                       ##                                 ##
                 $(tput setaf 6)         ##              ##                      ##                        ##                                 ##
                 $(tput setaf 6)         ##                 ##########                            ##                                 ##
                 $(tput setaf 6) COPYRIGHT 2024 - 2025 

            ==========================================================================
                         "
    apt install openjdk-17-jdk openjdk-17-jre
    clear
    echo "eula=true" > eula.txt

echo "
 $(tput setaf 6) Bạn dùng nền tảng nào?
    1) Paper - 1.21          2) Purpur - 1.21
     "
read -r n
case $n in
  1) 
    sleep 1
    
    echo "$(tput setaf 6)Download paper 1.21 : ..."
wget https://api.papermc.io/v2/projects/paper/versions/1.21/builds/40/downloads/paper-1.21-40.jar
mv paper-1.21-40.jar server.jar

java -jar server.jar
  2)
    sleep 1
    
    echo "$(tput setaf 6)Download purpur 1.21 : ..."
wget https://api.purpurmc.org/v2/purpur/1.21/2252/download
mv purpur-1.21-2252.jar server.jar

java -jar server.jar

esac
exit