#! /bin/zsh
msg="update"
if [ "$1" = "" ]
then
	echo "message is null ,use the default message"
elif
then
	msg="$1"
	echo $msg
fi

git add .
git commit -m "$msg"
git push 	
