public class Greet {
    private String who;

    public Greet(String who) {
        this.who = who;
    }

    public void salute() {
        System.out.println("Hello " +
            who.toUpperCase().charAt(0) +
            who.substring(1) + "!");
    }

    public static void main(String... args) {
        final Greet g = new Greet("world");
        g.salute();
    }
}
