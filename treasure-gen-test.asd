(in-package :cl-user)

(defpackage :treasure-gen-test-asd
  (:use :cl :asdf))

(in-package :treasure-gen-test-asd)

(defsystem :treasure-gen-test
  :description "Treasure Generator of Awesome!!!"
  :depends-on
    (:treasure-gen :lisp-unit)
  :pathname "t"
  :serial t
  :components
    ((:file  "package")
     (:file  "tests")))
