(import '(javax.swing JFrame JLabel))

(defn hello []
  (let [frame (JFrame. "Hello World Swing")
        label (JLabel. "Hello World")]
    (doto frame
      (.add label)
      (.setDefaultCloseOperation JFrame/EXIT_ON_CLOSE)
      (.setSize 300 300)
      (.setVisible true))))

(hello)