"""
>> python char2binary.py input_file
>> input file can be either .fa or .fastq extension
"""


import sys

file_name = ''

try:
    file_name = sys.argv[1]
except IndexError:
    pass


converts = {
    'A' : '00',
    'C' : '01',
    'G' : '10',
    'T' : '11'
}


if file_name:
    with open(file_name, 'r') as fd:
        with open("reads.fastq", 'w') as fd2:
            while True:
                fd.readline()
                seq = fd.readline().rstrip()
                fd.readline()
                fd.readline()
                if len(seq) == 0:
                    break
                out_str = ''
                for o in seq:
                    out_str += converts[o]
                fd2.write(f"{out_str}\n")
    print(f"Complete...")
else:
    print(f"Invalid arguments: python {sys.argv[0]} {file_name}")
    exit()


