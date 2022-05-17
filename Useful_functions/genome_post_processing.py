
import sys

file_name = ''

# for lambda virus m will be 70
m = 70
m = m*2

try:
    file_name = sys.argv[1]
except IndexError:
    pass

converts = {
    '00' : 'A',
    '01' : 'C',
    '10' : 'G',
    '11' : 'T'
}

if file_name:
    out_file = 'genome.out'
    with open(file_name, 'r') as fd:
        with open(out_file, 'w') as w:
            for line in fd:
                line = line.rstrip()
                line = line[0:m]
                # index = line[m:]
                out_str = ''
                for i in range(0, len(line), 2):
                    base = line[i:i+2]
                    out_str += converts[base]
                w.write(f"{out_str}\n")
    print(f"See file: {out_file}")
else:
    print(f"Invalid arguments: python {sys.argv[0]} {file_name}")
    exit()






