importPackage(javax.swing);

var frame = new JFrame("Hello World Swing");
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

var label = new JLabel("Hello World");
frame.getContentPane().add(label);

frame.pack();
frame.setSize(300, 100);
frame.setVisible(true);