# %%
# a function which can return conzective k-mers of a string
def getK_mers(str:str, k:int):
    """
    str: a string from which k-mers have to be constructed
    k:   length of each k-mer
    """
    k_mers = []
    for i in range(len(str) - k + 1):
        k_mers.append(str[i: i + k])
    
    return k_mers


