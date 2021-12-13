# %%
# all the required pakages
import re

# for saving Hash Table as JSON file to disk
import json

# %%
# a function which can return consective k-mers of a string


def getK_mers(str: str, k: int) -> list:
    """
    str: a string from which k-mers have to be constructed
    k:   length of each k-mer
    """
    k_mers = []
    for i in range(len(str) - k + 1):
        k_mers.append(str[i: i + k])

    return k_mers

# %%


def getAllIndex(to_find: str, from_str: str) -> list:
    """
    to_find: a short string to find from the other string
    from_str: a usally long string in which sub string is to be find
    return: this function will returns a list of all the index of to_find(sub string) in the from_str(greater string)
    """
    # using list comprehension + startswith()
    # All occurrences of substring in string
    res = [i.start() for i in re.finditer(to_find, from_str)]
    return res


# %%
# loade the data from .fasta file
file = open("../Data/refgen.fasta", "r")
# reading the whole file
raw_data = file.read()

# doing data clean-up if needed
# if we find ">" at the start we need to remove this line
# this first line only for mata-data
if raw_data[0] == ">":
    # finding the end of first line by raw_data.find("\n")
    # returns the index of first match
    # keep all the string except first line
    data = raw_data[raw_data.find("\n"):]

# removing all the endline parameters from the string
# this will give a long complete string of given refrence genome
data = data.replace("\n", "")

# %%
# a function which returns Hash-Table


def getHashTable(ref_genome: str, k: int = 12) -> dict:
    """
    ref_genome: a whole genome for which Hash Table has to be build
    k: size of k-mer to be taken (by default k = 12)
    returns: this function will returns a dict with k-mers as keys
        list of all the index (of k-mers) as respective value e.g.
        {
            "k_mer_1":[5, 10, 100],
            "k_mer_2":[500, 2, 487]
        }
    """
    # an empty dict which will store the results
    res = {}
    for each_k_mer in getK_mers(ref_genome, k):
        # saving each k-mer as dict key and list of index as values
        res[each_k_mer] = getAllIndex(each_k_mer, ref_genome)

    return res

# %%


def saveHashTable(hash_table: dict, file_name: str):
    """
    hash_table: a dict which have to be saved
    file_name: file name to which data have to be save
    """
    with open(file_name, "w") as outfile:
        json.dump(hash_table, outfile)

# %%
# this function loads Hash-Table from JSON file to dict object


def loadHashTable(file_name: str) -> dict:
    """
    file_name: name of JSON file to loade hash table
    returns
        a python dict object of Hash Table 
    """
    # opening json file to read
    file = open(file_name, "r")
    # loade data from json file
    return json.load(file)

# %%
# it calculates the edit distance between two strings


def editDistance(str1: str, str2: str) -> int:
    """
    str1: first string
    str2: second string
    returns:
        an integer value of distance between two strings str1 and str2
    """
    # length of str1
    m = len(str1)
    # lenght of str2
    n = len(str2)

    # Create a table to store results of subproblems
    dp = [[0 for x in range(n + 1)] for x in range(m + 1)]

    # Fill d[][] in bottom up manner
    for i in range(m + 1):
        for j in range(n + 1):

            # If first string is empty, only option is to
            # insert all characters of second string
            if i == 0:
                dp[i][j] = j  # Min. operations = j

            # If second string is empty, only option is to
            # remove all characters of second string
            elif j == 0:
                dp[i][j] = i  # Min. operations = i

            # If last characters are same, ignore last char
            # and recur for remaining string
            elif str1[i-1] == str2[j-1]:
                dp[i][j] = dp[i-1][j-1]

            # If last character are different, consider all
            # possibilities and find minimum
            else:
                dp[i][j] = 1 + min(dp[i][j-1],	 # Insert
                                   dp[i-1][j],	 # Remove
                                   dp[i-1][j-1])  # Replace

    return dp[m][n]
