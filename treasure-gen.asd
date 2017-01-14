(in-package :cl-user)

(defpackage :treasure-gen-asd
  (:use :cl :asdf))

(in-package :treasure-gen-asd)

(defsystem :treasure-gen
  :description "Treasure Generator of Awesome!!!"
  :depends-on
    ()
  :pathname "src"
  :serial t
  :components
    ((:file "package")
     (:module #:loot
       :pathname "PhatLoot"
       :components
       ((:file "Armor")
        (:file "GemsArt")
        (:file "Loot")
        (:file "MundaneLoot")
        ;(:file "Potions") ;; doesn't work
        ;(:file "Rings") ;; doesn't work
        ;(:file "Scrolls") ;; doesn't work
        (:file "Wands")
        (:file "Weapons")
        (:file "WonderusItems")))
     (:file "rand")
     (:file "gen-loot")))
