from javax.swing import *
from java.awt import BorderLayout

frame = JFrame("Celsius to Fahrenheit Converter", defaultCloseOperation = JFrame.EXIT_ON_CLOSE)

celsius = JTextField("0", columns = 5)
fahrenheit = JTextField("32", columns = 5)

panel = JPanel()
panel.add(celsius)
panel.add(JLabel(" Celsius = "))
panel.add(fahrenheit)
panel.add(JLabel(" Fahrenheit "))

frame.contentPane.add(panel, BorderLayout.CENTER)

def convertButtonActionPerformed(event):
    c = int(celsius.text)
    f = c * 9 / 5 + 32
    fahrenheit.text = str(f)

button = JButton("Convert", actionPerformed = convertButtonActionPerformed)

frame.contentPane.add(button, BorderLayout.SOUTH)

frame.pack()
frame.visible = True
