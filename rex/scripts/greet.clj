(ns .
  (:require [clojure.string :as s]))

(defn greet [who]
    (println(str "Hello " (s/capitalize who) "!")))

(greet "world") ; output "Hello World!
