import java.awt.*
import java.awt.event.*
import javax.swing.*
import groovy.swing.SwingBuilder

new SwingBuilder().edt {
    frame(title: "Celsius to Fahrenheit Converter", defaultCloseOperation: JFrame.EXIT_ON_CLOSE, pack: true, show: true) {
        borderLayout()

        panel(constraints: BorderLayout.NORTH) {
            celsius = textField(text: "0", columns: 5)
            label(" Celsius = ")
            fahrenheit = textField(text: "32", columns: 5)
            label(" Fahrenheit ")
        }

        button(text: "Convert", constraints: BorderLayout.SOUTH,
            actionPerformed: {
                c = celsius.text as Integer
                f = c * 9 / 5 + 32
                fahrenheit.text = f as Integer
            }
        )
    }
}