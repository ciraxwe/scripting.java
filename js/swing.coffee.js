var frame, label;

importPackage(javax.swing);

frame = new JFrame("Hello World Swing");

frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

label = new JLabel("Hello World");

frame.contentPane.add(label);

frame.pack();

frame.setSize(300, 100);

frame.setVisible(true);