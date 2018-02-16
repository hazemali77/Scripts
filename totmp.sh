#!bin\bash
if [ -z $1 ]
then
echo "Please enter a file to copy:"
read FILENAMES
else
FILENAMES="$@"
fi
for i in "$FILENAMES"
do
cp $i $HOME
done
exit 0

