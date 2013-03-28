(import '(javax.swing JFrame JLabel JTextField JButton JPanel)
        '(java.awt.event ActionListener)
        '(java.awt BorderLayout))

(defn celsius []
  (let [frame (JFrame. "Celsius Converter")
        celsius (JTextField. "0")
        fahrenheit (JTextField. "32")
        button (JButton. "Convert")
        panel (JPanel.)]
    (.addActionListener button
      (reify ActionListener
        (actionPerformed
          [_ evt]
            (let [c (Double/parseDouble (.getText celsius))]
              (.setText fahrenheit
                (str (+ 32 (* 1.8 c))))))))
    (.setColumns celsius 5)
    (.setColumns fahrenheit 5)
    (doto panel
      (.add celsius)
      (.add (JLabel. " Celsius = "))
      (.add fahrenheit)
      (.add (JLabel. " Fahrenheit ")))
    (.. frame getContentPane (add panel BorderLayout/CENTER))
    (.. frame getContentPane (add button BorderLayout/SOUTH))
    (doto frame
      (.setDefaultCloseOperation JFrame/EXIT_ON_CLOSE)
      (.pack)
      (.setVisible true))))

(celsius)