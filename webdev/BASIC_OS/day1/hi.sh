mainName=Projects2
if [[ -z $1 ]]; then
    echo "I need 1 param position 1"
    exit
fi
echo ${1}

echo "who is this?"
read username
echo "what is you password?"
read password


if [[ $username == "username" ]] && [[ $password == "password" ]]; then
    echo "welcome, $username"
else
    echo "system shutdown"
    exit
fi
rm -rf $mainName

mkdir $mainName && cd $mainName
dirs=(SampleProject css pages about contact images icons js)

for dir in ${dirs[@]}; do
    echo "creating" ${dir}
        mkdir $dir
done

files=(index.html style.css about.html about.css contact.html contact.css companyLogo.png email.png phone.png chat.png index.js)
for fileName in ${files[@]}; do
    echo "creating" ${fileName}
    touch $fileName
done

mv index.html SampleProject/
mv style.css css/
mv about.* about/
mv contact.* contact/
mv companyLogo.png images/
mv *.png icons/
mv index.js js/
mv icons/ images/
mv about/ pages/
mv -v * SampleProject/

cd ..
pwd
tree -d $mainName
tree $mainName