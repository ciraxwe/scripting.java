require "java"

java_import "javax.swing.JFrame"
java_import "javax.swing.JTextField"
java_import "javax.swing.JLabel"
java_import "javax.swing.JButton"
java_import "javax.swing.JPanel"
java_import "java.awt.BorderLayout"
java_import "java.awt.event.ActionListener"

frame = JFrame.new "Celsius to Fahrenheit Converter"

celsius = JTextField.new "0"
celsius.columns = 5

fahrenheit = JTextField.new "32"
fahrenheit.columns = 5

panel = JPanel.new
panel.add celsius
panel.add JLabel.new " Celsius = "
panel.add fahrenheit
panel.add JLabel.new " Fahrenheit "

frame.content_pane.add panel, BorderLayout::CENTER

button = JButton.new "Convert"
button.add_action_listener ActionListener.impl {
    c = celsius.text.to_i
    f = c * 9 / 5 + 32
    fahrenheit.text = f.to_s
}

frame.content_pane.add button, BorderLayout::SOUTH

frame.default_close_operation = JFrame::EXIT_ON_CLOSE
frame.pack()
frame.visible = true