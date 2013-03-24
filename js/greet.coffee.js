var Greet, g;

Greet = (function() {
  function Greet(who) {
    this.name = "" + (who[0].toUpperCase()) + who.slice(1);
  }

  Greet.prototype.salute = function() {
    return print("Hello " + this.name + "!");
  };

  return Greet;

})();

g = new Greet("world");

g.salute();