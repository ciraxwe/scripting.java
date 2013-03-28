import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.*;

public class Converter {
    private JFrame frame = new JFrame("Celsius to Fahrenheit Converter");
    private JTextField celsius = new JTextField();
    private JTextField fahrenheit = new JTextField();

    public Converter() {
        JButton button = new JButton("Convert");

        celsius.setText("0");
        celsius.setColumns(5);

        fahrenheit.setText("32");
        fahrenheit.setColumns(5);

        FlowLayout layout = new FlowLayout();
        JPanel panel = new JPanel();
        panel.setLayout(layout);

        panel.add(celsius);
        panel.add(new JLabel("Celsius = "));
        panel.add(fahrenheit);
        panel.add(new JLabel("Fahrenheit"));

        frame.getContentPane().add(panel, BorderLayout.CENTER);
        frame.getContentPane().add(button, BorderLayout.SOUTH);

        button.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                int c = Integer.parseInt(celsius.getText());
                int f = c * 9 / 5 + 32;

                fahrenheit.setText(Integer.toString(f));
            }
        });

        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

    public static void main(String... args) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Converter();
            }
        });
    }
}