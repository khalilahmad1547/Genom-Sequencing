import sys

# function
def readGenome(filename):
    genome = ''
    with open(filename, 'r') as f:
        for line in f:
            if not line[0]=='>':
                genome += line.rstrip()
    return genome

# global variables
file_name = ''

try:
    file_name = sys.argv[1]
except IndexError:
    pass

bases = 70
bits = bases*2

converts = {
    'A' : '00',
    'C' : '01',
    'G' : '10',
    'T' : '11'
}

if file_name:
    genome = readGenome(file_name)

    genome_bits = ""
    for i in genome:
        genome_bits += converts[i]

    with open("reference_genome.fa", 'w') as w:
        for i in range(0, len(genome_bits)-bits+2, 2):
            w.write(f"{genome_bits[i:i+bits]}\n")
    print("Complete...")
else:
    print("Please enter the name of input file")

