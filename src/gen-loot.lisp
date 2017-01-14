;; generate some loot!!!

(in-package :treasure-gen)

(define-symbol-macro d%
  (random 100))

(defun random-item (itm-list)
  (get-item-num itm-list d%))

(defun get-item-num (itm-list num)
  (labels ((select (current rest)
      (let ((range (car current)))
        (if (< (car range) num (cdr range))
            (cdr current)
            (select (car rest) (cdr rest))))))
    (select (car itm-list) (cdr itm-list))))

(defun generate-item (itm-list)
  (let ((item (random-item itm-list)))
    (string-trim
      (format nil "~{~A ~}"
        (mapcar
          (lambda (i)
            (if (stringp i)
                i
                (generate-item i)))
          item)))))
