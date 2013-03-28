var button, celsius, fahrenheit, frame, panel;

importPackage(javax.swing);

importPackage(java.awt);

frame = new JFrame("Celsius to Fahrenheit Converter");

frame.defaultCloseOperation = JFrame.EXIT_ON_CLOSE;

celsius = new JTextField("0");

celsius.columns = 5;

fahrenheit = new JTextField("32");

fahrenheit.columns = 5;

panel = new JPanel;

panel.add(celsius);

panel.add(new JLabel(" Celsius = "));

panel.add(fahrenheit);

panel.add(new JLabel(" Fahrenheit "));

frame.contentPane.add(panel, BorderLayout.CENTER);

button = new JButton("Convert");

button.addActionListener(function(e) {
  var c, f;

  c = celsius.text;
  f = c * 9 / 5 + 32;
  return fahrenheit.text = f;
});

frame.contentPane.add(button, BorderLayout.SOUTH);

frame.pack();

frame.visible = true;
