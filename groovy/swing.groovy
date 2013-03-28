import javax.swing.JFrame
import javax.swing.JLabel

frame = new JFrame("Hello World Swing")
frame.defaultCloseOperation = JFrame.EXIT_ON_CLOSE

label = new JLabel("Hello World")
frame.contentPane.add label

frame.pack()
frame.setSize(300, 100)
frame.visible = true
