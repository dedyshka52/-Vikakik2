bin/bash/
clear
echo "by supercret"
sleep 3.0
clear
#banner
function banner(){
    echo "
  ___          _             _            _ 
 |   \ _____ _(_)_ _  __ _  | |_ ___  ___| |
 | |) / _ \ \ / |    \/ _ | |  _/ _ \/ _ \ | 
 |___/\___/_\_\_|_||_\__  |  \__\___/\___/_|
                     |___/                  
                     "
}

function depe(){
    
    pkg install git python3 php openssh -y
    clear
    pkg install tur-repo
    pkg install cloudflared
    clear
    
    sleep 1
    clear
    echo"By Supercret"
    clear
    
    #Phishing
    clear
    cd
    git clone https://github.com/htr-tech/nexphisher.git
    cd nexphisher
    bash tmux_setup
    cd
    
    #Maskphishing
    
    git clone https://github.com/jaykali/maskphish
    
    #Phoneinfoga
    
    pkg install python
    pkg install python2
    git clone https://github.com/abhinavkavuri/PhoneInfoga
    cd PhoneInfoga
    mv config.example.py config.py
    python3 -m pip install -r requirments.txt
    chmod +x *
    
    cd
    
    pkg install whois
    pkg install host
    
    #osint
    clear
    cd 
    git clone https://github.com/thewhiteh4t/nexfil.git
    cd nexfil
    pip3 install -r requirements.txt
    sleep 3
    echo "Install end"
    sleep 1
    clear
    bash doxing.sh
    
}

function ip(){
    clear
    read -p "укажите IP :" ip_address
    echo "" 
    echo "Валюта  : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency)" 
    echo "Курсы валют : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency_rates)" 
    echo "Символ валюты : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency_symbol)" 
    echo "Соседи по стране : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_neighbours)" 
    echo "Код телефона: $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_phone)" 
    echo "Столица страны : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_capital)" 
    echo "Код страны : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_code)" 
    echo "Код валюты: $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=currency_code)" 
    echo ""
    echo "Интернет провайдер : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=isp)" 
    echo "Тип IP адресса : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=type)" 
    echo ""
    echo "Город : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=city)" 
    echo "Регион : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=region)" 
    echo ""
    echo "Долгота : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=longitude)" 
    echo "Широта : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=latitude)" 
    echo ""
    echo "имя часового пояса : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=timezone_name)" 
    echo "Часовой пояс : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=timezone)" 
    echo ""
    echo "Организация : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=org)" 
    echo ""
}


function Phish(){
    clear
    cd 
    cd nexphisher
    bash nexphisher
       
}

function Maskphishing(){
    clear
    cd maskphish
    bash maskphish.sh
}

function PhoneInfoga(){
    clear
    cd
    cd PhoneInfoga
    echo "Введите номер. Пример: +791704XXXXX by supercret"
    read -p ">>> " numero
    python3 phoneinfoga.py -n $numero
    
}

function Osint(){
    clear
    cd
    cd nexfil
    clear
    echo "укажите имя/name человека"
    read -p ">>> " username
    python3 nexfil.py -u $username
    
}

function webscan(){
    clear
    echo "Введите url от сайта"
    read -p ">>> " url
    clear
    host $url
    echo""
    echo "Скиньте IP сайта"
    read -p ">>> " ipweb
    clear
    whois $ipweb
    
}
clear
banner
echo""
sleep 1
echo "1) ---> Install"
sleep 1
echo""
echo "2) ---> IP Информация"
echo""
sleep 1
echo "3) ---> МаскФишинг"
echo""
sleep 1
echo "4) ---> Информация телефона"
echo""
sleep 1
echo "5) ---> Фишинг"
echo""
sleep 1
echo "6) ---> Осинт"
echo""
sleep 1
echo "7) ---> Сканирование Сайта"
sleep 1
echo""
read -p ">>> " menu

if [ $menu = 2 ]; then
    ip
 
elif [ $menu = 3 ]; then
    Maskphishing

elif [ $menu = 4 ]; then
    PhoneInfoga

elif [ $menu = 5 ]; then
    Phish

elif [ $menu = 6 ]; then
    Osint

elif [ $menu = 1 ]; then
    depe
    
elif [ $menu = 7 ]; then
    webscan

fi
