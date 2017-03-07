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
  (let ((loot (random-item itm-list)))
    (if (stringp (car loot))
      (car loot)
      (loot-finder (symbol-value (car loot))))))

(defun generate-item (itm-list)
  (let ((item (loot-finder itm-list)))
    (string-trim '(#\NewLine)
      (format nil "~{~A ~}"
        (mapcar
          (lambda (i)
            (if (stringp i)
                i
                (loot-finder i)))
          item)))))

(defun grand-table (itm-list value)
  (labels ((select (current rest)
    (let ((worth (car current)))
      (if (= value worth)
        (typecase (cadr current)
          (string (if (symbolp (caddr current))
                    (format t "~a ~a" (cadr current)
                      (loot-finder (symbol-value (caddr current))))
                    (write (cadr current))))
          (symbol (loot-finder (symbol-value (cadr current)))))
        (select (car rest) (cdr rest))))))
    (select (car itm-list) (cdr itm-list))))
