require "java"

java_import "javax.swing.JFrame"
java_import "javax.swing.JLabel"

frame = JFrame.new "Hello World Swing"
frame.default_close_operation = JFrame::EXIT_ON_CLOSE

label = JLabel.new "Hello World"
frame.content_pane.add label

frame.pack()
frame.setSize 300, 100
frame.visible = true