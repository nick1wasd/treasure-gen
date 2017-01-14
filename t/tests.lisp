
(in-package :treasure-gen-test)

(remove-tests)
(setq *print-failures* t)

(define-test gen-loot
  (assert-equal 1000
    (let ((itms 0))
      (dotimes (n 1000)
        (when (generate-item *lesser-minor-wonderous*)
          (incf itms)))
      itms)))

(define-test bounds-checking
  (assert-equal '("+1 weapon")
    (tg::get-item-num tg::*lesser-minor-weapon* 1))
  (assert-equal '("+1 weapon")
    (tg::get-item-num tg::*lesser-minor-weapon* 0))
  (assert-equal tg::*lesser-minor-specific-weapon*
    (tg::get-item-num tg::*lesser-minor-weapon* 98))
  (assert-equal tg::*lesser-minor-specific-weapon*
    (tg::get-item-num tg::*lesser-minor-weapon* 99)))
