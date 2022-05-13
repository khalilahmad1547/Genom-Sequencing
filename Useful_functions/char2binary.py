"""
>> python char2binary.py input_file
>> input file can be either .fa or .fastq extension
"""


import sys

file_name = ''

try:
    file_name = sys.argv[1]
except IndexError:
    file_name = ''


converts = {
    'A' : '00',
    'C' : '01',
    'G' : '10',
    'T' : '11'
}


if file_name:
    _, file_type = file_name.split('.')
    out_file = f"output.{file_type}"
    if file_type == 'fa':
        with open(file_name, 'r') as fd:
            with open(out_file, 'w') as fd2:
                for line in fd:
                    if not line[0] == '>':
                        out = line.rstrip()
                        out_str = ''
                        for o in out:
                            out_str += converts[o]
                        fd2.write(f"{out_str}\n")
        print(f"See file {out_file}")
    elif file_type == 'fastq':
        with open(file_name, 'r') as fd:
            with open(out_file, 'w') as fd2:
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
        print(f"See file {out_file}")
    else:
        print(f"Invalid file type: {file_type}")
        print("File can be either .fa or .fastq extension")
else:
    print(f"Invalid arguments: python {sys.argv[0]} {file_name}")
    exit()


