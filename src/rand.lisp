;; Random number generators

(in-package :cl-user)

(defpackage :random-z
  (:use :common-lisp
        :cl-user)
  (:export
        #:max-rand
        #:uniform-random
        #:normal-random
        #:random-n
        #:uniform-n
        #:random-elm
        #:select-rand))

(in-package :random-z)

(declaim (inline uniform-random max-rand random-elm))

(defun max-rand (&optional (state *random-state*))
  "Like `random`, but uses the `most-positive-fixnum`"
  (random most-positive-fixnum state))

(defun uniform-random (min max &optional (state *random-state*))
  "Generates a uniform random number, between
`min` & `max` inclusive if `min` & `max` both satisfy,
`integerp` and exclusive otherwise."
  (if (and (integerp min)
           (integerp max))
      (+ min (random (1+ (- max min)) state))
      (+ min (random (- max min) state))))

(defun normal-random (mean std-dev &optional (state *random-state*))
  "Generates a normal random (gaussian) number
based on the given mean & standard deviation"
  (let (rand-u rand-v rand-s)
    (labels ((nerm ()
      (setf rand-u (uniform-random -1.0l0 1.0l0 state)
            rand-v (uniform-random -1.0l0 1.0l0 state)
            rand-s (+ (* rand-u rand-u)
                      (* rand-v rand-v)))
      (if (not (or  (=  rand-s 0.0l0)
                    (>= rand-s 1.0l0)))
          (+ mean
            (* std-dev
               rand-u
               (sqrt (* -2.0l0 (/ (log rand-s) rand-s)))))
          (nerm))))
    (nerm))))

(proclaim '(inline random-n uniform-n))
(defun random-n ()
  (normal-random 0.0l0 1.0l0))
(defun uniform-n ()
  (random 1.0l0))

(defun random-elm (lst)
  "Grabs a random element from the given list"
    (nth (random (length lst)) lst))

(defun select-rand (&rest lst)
  (nth (random (length lst)) lst))
