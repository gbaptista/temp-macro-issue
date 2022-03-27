(local fennel (require :fennel))

(local clj (require :cljlib))
(import-macros cljm :cljlib)

(print (fennel.view (clj.conj [] 1 2 3 4))) ; => [1 2 3 4]

(cljm.def value "It works!")

(print value) ; => It works!
