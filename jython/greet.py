class Greet:
    def __init__(self, who):
        self.name = who.capitalize()

    def salute(self):
        print "Hello %s!" % self.name

g = Greet("world") # create object
g.salute() # output "Hello World!"