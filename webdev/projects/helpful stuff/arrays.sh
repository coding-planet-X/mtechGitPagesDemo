firstNames=(parker inigo )
lastNames=(darker montoya )

for ((i = 0; i < ${#firstNames[@]}; ++i)); do
echo "first=${firstNames[i]} last=${lastNames[i]}"
done