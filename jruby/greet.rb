class Greet
    def initialize(who)
        @name = who.capitalize
    end

    def salute
        puts "Hello #{@name}!"
    end
end

g = Greet.new "world" # create object
g.salute() # output "Hello World!"