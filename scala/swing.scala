import javax.swing.JFrame
import javax.swing.JLabel

val frame = new JFrame("Hello World Swing")
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE)

val label = new JLabel("Hello World")
frame.getContentPane().add(label)

frame.pack()
frame.setSize(300, 100)
frame.setVisible(true)
