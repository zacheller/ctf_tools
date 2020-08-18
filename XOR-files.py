# Adapted from http://opentechnotes.blogspot.com/2014/08/xor-string-with-key-in-python.html
from itertools import cycle
import sys

def do_xor(key, message):
    message = message.replace(' ', '').decode('hex')
    key = ''.join(key.split()[::-1]).decode('hex')

    return ''.join([chr(ord(a) ^ ord(b)) for a,b in zip(message, cycle(key))])

msg_file = sys.argv[1]
key = sys.argv[2]

#key = "46ccf9a571f0ffb17e41cb84"

with open(msg_file, 'rb') as f:
    message  = f.read()
f.close()



print do_xor(key,message).encode("hex")


