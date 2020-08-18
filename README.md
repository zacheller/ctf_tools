# ctf_tools

## rotsolver.sh
Accepts specified params and piped text. Outputs ROT1->ROT25 and ROT47 / 94 PRINTABLE ASCII CHARACTERS FROM ! (33) TO ~ (126).

Then, grep for your flag format.

## username-gen.py
Accepts a file with full names, and generates a file `usernames.txt` with a bunch of possible usernames for each user. Useful for brute-forcing credentials for CTF and pentesting challenges.

## portscan.sh
Checks for all open ports at an ip address, and then scans known ports deeper, outputting a nmap.txt file in normal format.

## XOR-files.py
Accepts a filename and a key as parameters. Useful for unencrypting files with known file types.
