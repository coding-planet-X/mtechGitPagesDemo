rm -rf projects
mkdir projects
cd projects
var1=text1.txt
var2=text2.txt
if [[ -z $1 ]]; then
    echo "a positional  variable is needed"
    exit
fi
ls
echo "enter username"
read username
echo "enter password"
read password

if [[ $username != "user" ]] || [[ $password != "name" ]]; then
    echo "either username or password is incorrect"
    exit
else
    echo "Authentication accepted, thanks ${username} now lets get to that script"
fi
echo "Script is starting"

mkdir bashScript && cd bashScript
echo "hello there, traveller" > $var1
cat $var1
mv $var1 ..
pwd 
cd ..
mkdir TXT
echo "${1}" > $var2
cat $var2
mv ${var1} TXT/
mv ${var2} TXT/

rmdir bashScript
cd TXT
echo $ls
pwd
ls
echo "Script finished. if var1 and var2 are in TXT folder I passed."