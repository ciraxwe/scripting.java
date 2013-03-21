function Greet(who) {
    this.name = who[0].toUpperCase() +
        who.substr(1);
}

Greet.prototype.salute = function() {
    console.log("Hello " + this.name + "!");
};

var g = new Greet("world"); // create object
g.salute(); // output "Hello World!"