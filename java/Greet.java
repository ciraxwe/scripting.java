public class Greet {
    private String name;

    public Greet(String who) {
        name = who.toUpperCase().charAt(0) +
            who.substring(1);
    }

    public void salute() {
        System.out.println("Hello " + name + "!");
    }

    public static void main(String... args) {
        final Greet g = new Greet("world");
        g.salute();
    }
}
