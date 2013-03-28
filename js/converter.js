importPackage(javax.swing);
importPackage(java.awt);

var frame = new JFrame("Celsius to Fahrenheit Converter");
frame.defaultCloseOperation = JFrame.EXIT_ON_CLOSE;

var celsius = new JTextField("0");
celsius.columns = 5;

var fahrenheit = new JTextField("32");
fahrenheit.columns = 5;

var panel = new JPanel;
panel.add(celsius);
panel.add(new JLabel(" Celsius = "));
panel.add(fahrenheit);
panel.add(new JLabel(" Fahrenheit "));

frame.contentPane.add(panel, BorderLayout.CENTER);

var button = new JButton("Convert");

button.addActionListener(function(e) {
    var c, f;

    c = celsius.text;
    f = c * 9 / 5 + 32;
    return fahrenheit.text = f;
});

frame.contentPane.add(button, BorderLayout.SOUTH);
frame.pack();
frame.visible = true;
