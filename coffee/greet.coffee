class Greet
    constructor: (who) ->
        @name = "#{@who[0].toUpperCase()}
          #{@who[1..-1]}"

    salute: () ->
        console.log "Hello #{@name}!"

g = new Greet "world" # create object
g.salute() # output "Hello World!""