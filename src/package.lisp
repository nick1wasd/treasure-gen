;; package.lisp
;; Treasure genertor

(in-package :cl-user)

(defpackage :treasure-gen
  (:nicknames #:tg)
  (:use :common-lisp
        :cl-user)
  (:export
    #:generate-item))
