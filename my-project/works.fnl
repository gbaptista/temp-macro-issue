(local fennel (require :fennel))

(local pwd (os.getenv "PWD"))

(set fennel.path
     (..
       pwd "/shared-libs/cljlib/?.fnl;"
       pwd "/shared-libs/?/init.fnl;"
       fennel.path))

(set fennel.macro-path
     (..
       pwd "/shared-libs/cljlib/init-macros.fnl;"
       fennel.macro-path))

(local clj (require :cljlib))

(print (fennel.view (clj.conj [] 1 2 3 4))) ; => [1 2 3 4]

(print "It works!")
