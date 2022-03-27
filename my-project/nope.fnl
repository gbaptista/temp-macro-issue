(local fennel (require :fennel))

(local current-folder (os.getenv "CURRENT_FOLDER"))

(set fennel.path
     (..
       current-folder "/shared-libs/cljlib/?.fnl;"
       current-folder "/shared-libs/?/init.fnl;"
       fennel.path))

(set fennel.macro-path
     (..
       current-folder "/shared-libs/?/init-macros.fnl;"
       fennel.macro-path))

(local clj (require :cljlib))

(print (fennel.view (clj.conj [] 1 2 3 4))) ; => [1 2 3 4]

(print "It works!")
