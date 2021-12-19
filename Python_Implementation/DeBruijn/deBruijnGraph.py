# %%
import graphviz

# %%
# a function which can return consective k-mers of a string
def K_mers(str:str, k:int)->list:
    """
    str: a string from which k-mers have to be constructed
    k:   length of each k-mer
    """
    k_mers = []
    for i in range(len(str) - k + 1):
        k_mers.append(str[i: i + k])
    
    return k_mers

# %%
def prefix(string:str)->str:
    """it returns prefix of the string leaving only the last char by default e.g. string[:-1]
    string: a string for which prefix is required
    returns:
        a prefix of string 
    """
    return string[:-1]

# %%
def sufix(string:str)->str:
    """it returns sufix of the string leaving only the first char by default e.g. string[1:]
    string: a string for which sufix is required
    returns:
        a sufix of string 
    """
    return string[1:]

# %%
def readGenome(file_name: str) -> str:
    """
    file_name: file from which genome is to be read
    returns:
        genome as a string
    """
    # loade the data from .fasta file
    file = open(file_name, "r")
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
    return data

# %%
class Node:
    """
    It save the text value of the node along with out and in going
    edges in it.
    """
    def __init__(self, value:str) -> None:
        """
        value: any value to store in a Node
        """
        # text value stored in the node
        self.Value = value
        # number of all the incomming edges to this node
        self.inCommingEdges = 0
        # number of all the out going edges from this node
        self.outGoingEdges = 0
    
    def isBalanced(self)->bool:
        """This function returns True if Node is Balance (if number 
        of in comming edges is equla to
        number of out going edges then node is balanced)
        otherwise it retuns False."""
        if self.inCommingEdges == self.outGoingEdges:
            return True
        else:
            return False
    
    # over-riding default hash function so Nodes can be used as key in
    # dict in python
    def __hash__(self) -> int:
        return hash(self.Value)
    
    # over-riding default print() function for Node
    def __str__(self) -> str:
        return self.Value

# %%
class DeBruijnGraph:
    """This Contain De Bruijn Graph implementation with all the helper
    functions"""
    def __init__(self) -> None:
        # inilizing all the varibales with defalut values
        
        # this dict will store key value pairs as shown
        # {
        #     "string_1":[Node(), Node()],
        #     "string_1":[Node(],
        # }
        self.Graph = {}
        
        # a list of all the nodes in the graph
        # {
        #   "string_1":Node("string_1")
        # }
        self.nodes = {}

        # to keep track of all the balamced nodes in the graph
        self.totalBalanceNodes = 0

        # total nodes in the graph
        self.totalNodes = 0
    
    def addNode(self, value:str)->None:
        """it adds a new node in the graph and inilize its values by 
        empty list, if node exist it do nothing
        value: a string value which will be stored into the new Node
        returns: it returns nothing"""

        # if node not exist already
        if value not in self.Graph.keys():
            # add new node
            self.Graph[value] = []
        if value not in self.nodes.keys():
            # add new node to the text graph also
            self.nodes[value] = Node(value)
    
    def addEdge(self, from_node:str, to_node:str)->None:
        """it will add a new edge from a node (from_node) to a node (to_node)
        from_node: a string value of the starting node of the edge
        to_node: a string value of the ending node of the edge
        """
        # updating Node list
        if from_node in self.nodes.keys():
            self.nodes[from_node].outGoingEdges += 1
        else:
            temp_node = Node(from_node)
            temp_node.outGoingEdges += 1
            self.nodes[from_node] = temp_node
        
        if to_node in self.nodes.keys():
            self.nodes[to_node].inCommingEdges += 1
        else:
            temp_node = Node(to_node)
            temp_node.inCommingEdges += 1
            self.nodes[to_node] = temp_node

        # if node already exits
        if from_node in self.Graph.keys():
            # appending a new node to already present list
            self.Graph[from_node].append(Node(to_node))
        else:
            # if not present
            # inilizing with a list which conain one node
            self.Graph[from_node] = [Node(to_node)]
    
    def buildFromFile(self, filename:str, k:int = 12):
        """"it takes .fasta file name from which to read and build the graph
        filename: file from which data has to read with extention
        k: size of each k-mer to be taken by default it is 12
        returns: it returns nothing"""
        # reading the file and cleaning the data
        data = readGenome(filename)
        # choping the data into k-mers of specified lenght
        k_mers = K_mers(data, k)
        # sorting the k-mers
        k_mers.sort()
        # adding each k-mer to the graph
        for each in k_mers:
            self.addEdge(prefix(each), sufix(each))
    
    # this function render graph to a pdf file for view
    def renderGraph(self, filename:str):
        g = graphviz.Digraph(format='pdf')
        for eachNode in self.Graph.keys():
            for eachToNode in self.Graph[eachNode]:
                g.edge(eachNode, eachToNode.Value, label="")
        g.render(filename)


