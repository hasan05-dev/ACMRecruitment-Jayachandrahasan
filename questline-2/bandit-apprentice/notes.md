level 0 :
found the password inside the readme file in the home directory.
commands used : ls -alps, cat readme

level 1 :
found password inside the file named '-' located in the home directory.
commands used : ls -alps, cat ./-

level 2 :
found the password inside a file with spaces in it's name ('--spaces in this filename--')
commands used : ls -alps, cat ./-spaces\ in\ this\ filename-

level 3 :
found the password inside a hidden file in the 'inhere' directory.
commands used : ls -alps, cd inhere/, ls -al, cat ./...Hiding-From-You

level 4 :
found the password inside the only human-readable file in the 'inhere' directory.
commands used : cd inhere/, find . -type f | xargs file, cat ./-file07

level 5 :
found the password in a file under 'inhere' that is human-readable, 1033 bytes in size and not executable.
commands used : cd inhere/, find . -type f -size 1033c ! -executable, cat ./maybehere07/.file2

level 6 :
found the password stored somewhere on the server, owned by user 'bandit7', group 'bandit6' and 33 bytes in size.
commands used : find / -type f -user bandit7 -group bandit6 -size 33c, cat /var/lib/dpkg/info/bandit7.password

level 7 :
found the password in 'data.txt' next to the word 'millionth'.
commands used : strings data.txt | grep "millionth"

level 8 :
found the password in 'data.txt' as the only linne that occurs textually only once.
commands used : sort data.txt | uniq -c

level 9 :
found the password in 'data.txt' in a human-readable string preceded by several '=' characters.
commands used : strings data.txt | grep "="

level 10 :
decoded the password from base64 data inside 'data.txt'
commands used : cat data.txt, base64 -d data.txt

level 11 :
decoded the password from 'data.txt' where all letters have been rotated by 13 positions (ROT13)
commands used : cat data.txt

level 12 :
reversal of a hex dump of 'data.txt' and repeatedly decompress a chain of file formats (gzip, bzip2, tar)
commands used : mkdir /tmp/work, cp data.txt /tmp/work, cd /tmp/work, xxd -r data.txt > datafile, file datafile

decompression sequence based on 'file' output :
mv datafile datafile.gz && gunzip datafile.gz, bzip2 -d datafile, tar -xf datafile.out, tar -xf data6.bun, bzip2 -d data7.bin, tar -xf data8.bin, gzip -d data9.bin, gzip -d data9.bin, cat data9

level 13 :
used private SSH key stored in 'sshkey.private' to log into level 14 on local host.
commands used : ls, ssh -i sshkey.private bandit14@localhost

level 14 :
submitted the password obtained in previous level to port 30000 on localhost to retrieve the level 15 password.
commands used : cat /etc/bandit_pass/bandit14, nc localhost 30000

