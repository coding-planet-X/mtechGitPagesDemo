
#while :; do echo $RANDOM && sleep 5; done
##echo $RANDOM
##echo $(($RANDOM % 50))


#start match game
#declare variables
if [[ -z $1 ]]; then
    echo "enter add sub div or x"e
    exit
fi
echo "you chose ${1}"

function addition() {
    green='\033[0;32m'
    gray='\033[0;37m'
    num1=$(echo $(($RANDOM % 50)))
    num2=$(echo $(($RANDOM % 50)))
    sum=$(echo $((${num1} + ${num2})))
    echo ${green}"do you want the answer?"${gray} && read -r -p "[Y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        echo "the answer is ${sum}"
        ;;
    [nN][oO] | [nN])
        echo "good job on not being a cheater"
        ;;
    *)
        echo ""
        exit
        ;;
    esac
    echo "what is ${num1} + ${num2}" && read ans

    if [[ ${ans} == ${sum} ]]; then
        echo ${green}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "score " ${total}
    
    else
        echo "so close, yet so far. the answer is ${sum}"
        total=${#score[@]}
        echo "final score " ${total}
        exit
    fi
    addition
}
function subtraction() {
    green='\033[0;32m'
    orange='\033[0;33m'
    gray='\033[0;37m'
    num1=$(echo $(($RANDOM % 50)))
    num2=$(echo $(($RANDOM % 50)))
    answer=0
    
    if [[ ${num1} -gt ${num2} ]]; then
        sum=$(echo $((${num1} - ${num2})))
        echo ${green}"do you want the answer?"${gray} && read -r -p "[Y/n] " input
        case $input in
        [yY][eE][sS] | [yY])
            echo "the answer is ${sum}"
            ;;
        [nN][oO] | [nN])
            echo "good job on not being a cheater"
            ;;
        *)
            echo ""
            exit
            ;;
        esac
        echo "what is ${num1} - ${num2}" && read ans
        answer=${ans}
    else
        sum=$(echo $((${num2} - ${num1})))
        echo ${green}"do you want the answer?"${gray} && read -r -p "[Y/n] " input
        case $input in
        [yY][eE][sS] | [yY])
            echo "the answer is ${sum}"
            ;;
        [nN][oO] | [nN])
            echo "good job on not being a cheater"
            ;;
        *)
            echo ""
            exit
            ;;
        esac
        echo "what is ${num2} - ${num1}" && read ans
        answer=${ans}
    fi
    if [[ ${answer} == ${sum} ]]; then
        echo ${orange}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "score " ${total}
    else
        echo "so close, yet so far. the answer is ${sum}"
        total=${#score[@]}
        echo "final score " ${total}
        exit
    fi
    subtraction
}
function divide() {
    green='\033[0;32m'
    orange='\033[0;33m'
    gray='\033[0;37m'
    num1=$(echo $(($RANDOM % 50)))
    num2=$(echo $(($RANDOM % 50)))
    answer=0
    if [[ ${num1} -gt ${num2} ]]; then
        sum=$(echo $((${num1} / ${num2})))
        echo ${green}"do you want the answer?"${gray} && read -r -p "[Y/n] " input
        case $input in
        [yY][eE][sS] | [yY])
            echo "the answer is ${sum}"
            ;;
        [nN][oO] | [nN])
            echo "good job on not being a cheater"
            ;;
        *)
            echo ""
            exit
            ;;
        
        esac
        echo "what is ${num1} / ${num2} rounded down" && read ans
        answer=${ans}
    else
        sum=$(echo $((${num2} / ${num1})))
        echo ${green}"do you want the answer?"${gray} && read -r -p "[Y/n] " input
        case $input in
        [yY][eE][sS] | [yY])
            echo "the answer is ${sum}"
            ;;
        [nN][oO] | [nN])
            echo "good job on not being a cheater"
            ;;
        *)
            echo ""
            exit
            ;;
        esac
        echo "what is ${num2} / ${num1} rounded down" && read ans
        answer=${ans}
    fi
    if [[ ${answer} == ${sum} ]]; then
        echo ${orange}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "score " ${total}
    else
        echo "so close, yet so far. the answer is ${sum}"
        total=${#score[@]}
        echo "final score " ${total}
        exit
    fi
    divide
}
function multiply() {
    green='\033[0;32m'
    gray='\033[0;37m'
    num1=$(echo $(($RANDOM % 50)))
    num2=$(echo $(($RANDOM % 50)))
    sum=$(echo $((${num1} * ${num2})))
    echo ${green}"do you want the answer?"${gray} && read -r -p "[Y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        echo "the answer is ${sum}"
        ;;
    [nN][oO] | [nN])
        echo "good job on not being a cheater"
        ;;
    *)
        echo ""
        exit
        ;;
    esac
    echo "what is ${num1} * ${num2}" && read ans

    if [[ ${ans} == ${sum} ]]; then
        echo ${green}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "score " ${total}
    
    else
        echo "so close, yet so far. the answer is ${sum}"
        total=${#score[@]}
        echo "final score " ${total}
        exit
    fi
    multiply
}


case ${1} in
add)
    addition
    ;;
#subtract
sub)
    subtraction
    ;;
x)
    multiply
    ;;
div)
    divide
    ;;
esac
