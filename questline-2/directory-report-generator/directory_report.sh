if [ "$1" == "" ]; then
    echo "Error: please give a directory path"
    echo "Usage: $0 <directory"
    exit 1
fi

DIR=$1

echo "--- FILE SYSTEM REPORT ---" > report.txt
echo "Directory scanned: $DIR" >> report.txt
echo "" >> report.txt

TOTAL_FILES=$(find $DIR -type f 2>/dev/null | wc -l)
echo "Total number of files: $TOTAL_FILES" >> report.txt

EXEC_FILES=$(find $DIR -type f -executable 2>/dev/null | wc -l)
echo "Total number of executable files: $EXEC_FILES" >> report.txt

LARGEST=$(find $DIR -type f -exec ls -s {} + 2>/dev/null | sort -n | tail -n 1 | awk '{print $2}')
echo "Largest file: $LARGEST" >> report.txt

RECENT=$(find $DIR -type f -printf '%T+ %p\n' 2>/dev/null | sort | tail -n 1 | awk '{print $2}')
echo "Most recently modified file: $RECENT" >> report.txt

HIDDEN_FILES=$(find $DIR -type f -name ".*" 2>/dev/null | wc -l)
echo 'Number of hidden files: $HIDDEN_FILES' >> report.txt

echo "Report successfully generated in report.txt"
