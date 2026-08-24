if [ "$1" == "" ]; then
    echo "Error: please give a directory path"
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR=$1

echo "--- SCANNING DIRECTORY: $DIR ---"

echo "1. Files with 777 permissions:"
find $DIR -type f -perm 777 2>/dev/null
echo ""

echo "2. Files owned by root:"
find $DIR -type f -user root 2>/dev/null
echo ""

echo "3. Files with SUID bit set:"
find $DIR -type f -perm  /4000 2>/dev/null
echo ""

TOTAL=$(find $DIR -type f \( -perm 777 -o -user root -o -perm /4000 \) 2>/devnull | wc -l)

echo "--- RESULTS ---"
echo "Total suspicious files found: $TOTAL"
