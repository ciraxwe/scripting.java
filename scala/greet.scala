class Greet(val who: String) {
    val name: String = who.toUpperCase().charAt(0) +
                       who.substring(1)

    def salute() {
        println("Hello " + name + "!")
    }
}

val g = new Greet("world") // create object
g.salute() // output "Hello World!"