# !/usr/bin/python3

import sys
import os

def main():
	if len(sys.argv) != 2 :
		print('Use: python3 ' + sys.argv[0] + ' <users.txt>')
		print ('Note: input file is expected to have first and last names separated by a space on each line')
		sys.exit()

	path = sys.argv[1]
	print('Input file: ' + path)

	if (os.path.getsize(path) == 0) :
		print('File is empty.')
		sys.exit()
	
	try:
		users_file = open(path,'r')
	except IOError:
		print('Oops, could not open file')
		sys.exit()
	
	directory = os.getcwd()
	new_path = directory + "/usernames.txt"
	global new_file
	new_file = open(new_path,'w')
	
	print('Writing output to: ' + new_path)

	while True:
		name = users_file.readline()
		if (name == '') : break
		name = name.rstrip('\r\n').lower()
		generate(name.split())

	users_file.close()
	new_file.close()
	print('Done.')
	
# write lowercase usernames to usernames.txt using common and less common username and email patterns
def generate(full_name):
	print(full_name)
	first = full_name[0]
	last = full_name[1]
	f_initial = first[0]
	l_initial = last[0]

	# {first}, {last}
	new_file.write(first+'\n')
	new_file.write(last+'\n')
	
	# {first}{last}, {first}.{last}, {first}-{last}, {first}_{last}
	new_file.write(first+last+'\n')
	new_file.write(first + '.' + last+'\n')
	new_file.write(first + '-' + last+'\n')
	new_file.write(first + '_' + last+'\n')
	
	# {f}{last}, {f}.{last}, {f}-{last}, {f}_{last}
	new_file.write(f_initial+last+'\n')
	new_file.write(f_initial + '.' + last+'\n')
	new_file.write(f_initial + '-' + last+'\n')
	new_file.write(f_initial + '_' + last+'\n')

	# {first}{l}, {first}.{l}, {first}-{l}, {first}_{l}
	new_file.write(first+l_initial+'\n')
	new_file.write(first + '.' + l_initial+'\n')
	new_file.write(first + '-' + l_initial+'\n')
	new_file.write(first + '_' + l_initial+'\n')

	# {last}{first}, {last}.{first}, {last}-{first}, {last}_{first}
	new_file.write(last+first+'\n')
	new_file.write(last + '.' + first+'\n')
	new_file.write(last + '-' + first+'\n')
	new_file.write(last + '_' + first+'\n')
	
	# {f}{l}, {f}.{l}, {f}-{l}, {f}_{l}
	new_file.write(f_initial+l_initial+'\n')
	new_file.write(f_initial + '.' + l_initial+'\n')
	new_file.write(f_initial + '-' + l_initial+'\n')
	new_file.write(f_initial + '_' + l_initial+'\n')

if __name__ == "__main__":
	main()