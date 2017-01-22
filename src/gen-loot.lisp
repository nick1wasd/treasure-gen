;; generate some loot!!!

(in-package :treasure-gen)

(define-symbol-macro d%
  (random 100))

(defun random-item (itm-list)
  (get-item-num itm-list d%))

(defun get-item-num (itm-list num)
  (labels ((select (current rest)
      (let ((range (car current)))
        (if (listp range)
            (if (<= (car range) num (cdr range))
                (cdr current)
                (select (car rest) (cdr rest)))
            (if (= range num)
                (cdr current)
                (select (car rest) (cdr rest)))))))
    (select (car itm-list) (cdr itm-list))))

(defun loot-finder (itm-list)
  (let ((thing (random-item itm-list)))
    (if (stringp (car thing))
      (cdr thing)
      (random-item (symbol-value (car thing))))))

(defun generate-item (itm-list)
  (let ((item (loot-finder itm-list)))
    (string-trim '(#\NewLine)
      (format nil "~{~A ~}"
        (mapcar
          (lambda (i)
            (if (stringp (car i))
                i
                (generate-item (car i))))
          item)))))
