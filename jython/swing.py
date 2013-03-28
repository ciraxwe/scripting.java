from javax.swing import JFrame
from javax.swing import JLabel

frame = JFrame("Hello World Swing")
frame.defaultCloseOperation = JFrame.EXIT_ON_CLOSE

label = JLabel("Hello World")
frame.contentPane.add(label)

frame.pack()
frame.size = (300, 100)
frame.visible = True