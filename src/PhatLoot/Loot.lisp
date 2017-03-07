(in-package :treasure-gen)

;some use-the-other-shit tables

(defvar *type-a-loot*
  '((1 "5d10 cp, 3d4 sp")
    (5 "2d6 x 10 cp, 4d8 sp, 1d4 gp")
    (10 "5d10 x 10 cp, 5d10 sp, 1d8 gp")
    (25 "2d4 x 100 cp, 3d6 x 10 sp, 4d4 gp")
    (50 "4d4 x 100 cp, 4d6 x 10 sp, 8d6 gp")
    (100 "6d8 x 10 sp, 3d4 x 10 gp")
    (200 "2d4 x 100 sp, 4d4 x 10 gp, 2d4 pp")
    (500 "6d6 x 10 gp, 8d6 pp")
    (1000 "2d4 x 100 gp, 10d10 pp")
    (5000 "4d8 x 100 gp, 6d10 x 10 pp")
    (10000 "2d4 x 1,000 gp, 12d8 x 10 pp")
    (50000 "2d6 x 1,000 gp, 8d10 x 100 pp")))

(defvar *type-b-loot*
  '((10  *grade-one-gem*)
    (15  "2d6 x 10 cp, 4d8 sp, 1d4 gp, " *grade-one-gem*)
    (25  "5d10 sp, 1d4 gp, " (2 . *grade-one-gem*))
    (50  *grade-two-gem*)
    (50  "3d6 x 10 sp, 3d6 gp, " (3 . *grade-one-gem*))
    (75  "1d4 x 10 sp, 1d4 gp, " (2 . *grade-one-gem*) *grade-two-gem*)
    (100  *grade-three-gem*)
    (100  "3d8 x 10 sp, 4d8 gp, " (2 . *grade-one-gem*) *grade-two-gem*)
    (150  *grade-two-gem* *grade-three-gem*)
    (200  "3d6 x 10 sp, 2d4 x 10 gp, " (4 . *grade-one-gem*) *grade-three-gem*)
    (250  "2d4 x 10 gp, " (2 . *grade-two-gem*) *grade-three-gem*)
    (500  *grade-four-gem*)
    (500  "2d4 x 10 gp, 2d4 pp, " (2 . *grade-two-gem*) (3 . *grade-three-gem*))
    (750  "2d4 x 10 gp, " (2 . *grade-two-gem*) *grade-three-gem* *grade-four-gem*)
    (1000  *grade-five-gem*)
    (1000  "3d6 x 10 gp, 4d4 pp, " (3 . *grade-three-gem*) *grade-four-gem*)
    (2500  "2d4 x 100 gp, " (2 . *grade-four-gem*) *grade-five-gem*)
    (5000  *grade-six-gem*)
    (5000  "2d4 x 100 gp, 2d4 x 10 pp, " (2 . *grade-four-gem*) (3 . *grade-five-gem*))
    (10000  (5 . *grade-five-gem*) *grade-six-gem*)
    (20000  "4d8 x 100 gp, 6d10 x 10 pp, " (3 . *grade-six-gem*))
    (50000  "4d4 x 10 pp, " (10 . *grade-three-gem*) (4 . *grade-four-gem)
      (6 . *grade-five-gem*) (8 . *grade-six-gem))))

(defvar *type-c-loot*
  '((50  *grade-one-art*)
    (100  *grade-two-art*)
    (100  (2 . *grade-one-art*))
    (150  *grade-one-art* *grade-two-art*)
    (200  (2 . *grade-two-art*))
    (250  (3 . *grade-one-art*) *grade-two-art*)
    (500  *grade-three-art*)
    (500  (4 . *grade-one-art*) (3  *grade-two-art*))
    (750  (3 . *grade-one-art*) (2 . *grade-two-art*) *grade-three-art*)
    (1000  *grade-four-art*)
    (1000  (2 . *grade-three-art*))
    (1500  *grade-three-art* *grade-four-art*)
    (2000  (2 . *grade-four-art*))
    (2500  (5 . *grade-two-art*) (2 . *grade-three-art*) *grade-four-art*)
    (5000  *grade-five-art*)
    (5000  (4 . *grade-three-art*) (3 . *grade-four-art*))
    (7500  *grade-three-art* *grade-four-art* *grade-five-art*)
    (10000  *grade-six-art*)
    (10000  (5 . *grade-four-art*) *grade-five-art*)
    (15000  *grade-five-art* *grade-six-art*)
    (20000  (2 . *grade-five-art*) *grade-six-art*)
    (50000  (10 . *grade-three-art*) (5 . *grade-four-art*)
      (4 . *grade-five-art*) (2 . *grade-six-art*))))

(defvar *type-d-loot*
  '((50  "3d6 x 10 sp, 4d4 gp, " *lesser-minor-scroll*)
    (50  "2d4 x 10 sp, 2d4 gp, " *lesser-minor-potion*)
    (100  "4d6 x 10 sp, 3d10 gp, " *lesser-minor-potion* *lesser-minor-scroll*)
    (150  "2d4 x 10 sp, 6d6 gp, " *greater-minor-scroll*)
    (200  "2d4 x 10 sp, 4d6 gp, " *greater-minor-potion* *lesser-minor-scroll*)
    (250  "3d6 x 10 sp, 3d6 gp, 1d4 pp, " (2 . *lesser-minor-potion*)
      *greater-minor-scroll*)
    (300  "2d4 x 10 sp, 6d6 gp, " *greater-minor-potion* *greater-minor-scroll*)
    (400  *greater-minor-potion* (2 . *greater-minor-scroll*))
    (500  "2d4 x 10 gp, 1d4 pp, " *lesser-medium-potion* *greater-minor-scroll*)
    (500  "2d4 x 10 gp, 1d4 pp, " (2 . *greater-minor-potion*)
      *greater-minor-scroll*)
    (750  "7d6 gp, " *greater-minor-scroll* *lesser-minor-wand*)
    (1000  "4d4 x 10 gp, 3d6 pp, " *lesser-medium-potion* *lesser-medium-scroll*)
    (1000  "2d4 x 10 gp, 2d4 pp, " *lesser-medium-potion* *lesser-minor-wand*)
    (1500  *greater-minor-wand*)
    (1500  "4d4 x 10 gp, 3d6 pp, " *greater-medium-potion* *greater-medium-scroll*)
    (2000  *greater-medium-potion* *greater-minor-wand*)
    (2000  "2d4 x 10 gp, 2d4 pp, " *lesser-medium-potion*
      (2  *greater-medium-scroll*))
    (3000  "3d6 x 10 gp, 4d4 pp, " *greater-medium-potion* *greater-medium-scroll*
      *greater-minor-wand*)
    (4000  "3d6 x 10 gp, 4d4 pp, " *greater-medium-scroll* (2 . *greater-minor-wand*))
    (5000  "2d4 x 10 gp, 2d4 pp, " (3 . *lesser-major-potion*)
      (2 . *greater-medium-scroll*) *greater-minor-wand*)
    (7500  "2d6 pp, " *lesser-major-scroll* *lesser-medium-wand*)
    (7500  "5d6 pp, " (2 . *greater-major-potion*) (2 . *greater-major-scroll*))
    (10000  *greater-medium-wand*)
    (10000  "4d6 pp, " *greater-major-potion* *greater-major-scroll*
      *lesser-medium-wand*)
    (15000  *lesser-major-wand*)
    (15000  "9d10 pp, " (3 . *greater-major-potion*) (2 . *lesser-major-scroll*)
      *greater-medium-wand*)
    (20000  "4d4 x 10 gp, 2d4x10 pp, " (2 . *greater-major-potion*) *greater-major-scroll*
      *lesser-major-wand*)
    (20000  "6d6 x 10 gp, " (3 . *lesser-major-potion*) *greater-major-wand*)
    (25000  (5 . *greater-major-scroll*) *greater-medium-wand*)
    (30000  "6d6 pp, " (4 . *greater-major-potion*) (3 . greater-major-scroll*)
      *greater-major-wand*)
    (50000  "8d4 x 10 pp, " (4 . *greater-major-scroll*) (2 . *greater-major-wand*))))

(defvar *type-e-loot*
  '((200  "Masterwork light armor/shield")
    (300  "Masterwork medium armor")
    (350  "Masterwork " *plain-weapon*)
    (1000  "Masterwork heavy armor")
    (1500  *lesser-minor-protect*)
    (2500  *lesser-minor-weapon*)
    (3000  *greater-minor-protect*)
    (3000  "Masterwork medium armor, masterwork shield and " *lesser-minor-weapon*)
    (4000  *lesser-minor-protect* *lesser-minor-weapon*)
    (5500  *greater-minor-protect*)
    (6000  *greater-minor-weapon*)
    (7500  *lesser-minor-protect* *greater-minor-weapon*)
    (8000  *greater-minor-protect* *lesser-minor-weapon*)
    (9000  *greater-minor-protect* *greater-minor-weapon*)
    (10000  *lesser-medium-protect* *lesser-minor-weapon*)
    (13000  *lesser-medium-weapon*)
    (13000  *lesser-medium-protect* *greater-minor-weapon*)
    (15000  *greater-medium-protect* *lesser-minor-weapon*)
    (20000  *lesser-medium-protect* *lesser-medium-weapon*)
    (25000  *greater-minor-protect* *greater-medium-weapon*)
    (30000  *lesser-major-protect* *lesser-minor-weapon* *greater-minor-weapon*)
    (30000  *lesser-medium-protect* *greater-medium-weapon*)
    (35000  *lesser-major-protect* *lesser-medium-weapon*)
    (35000  *lesser-minor-protect* *lesser-major-weapon*)
    (40000  *greater-major-protect* *greater-minor-weapon*)
    (50000  *greater-major-protect* *lesser-medium-weapon*)
    (75000  *greater-minor-protect* *greater-major-weapon*)
    (100000  *greater-major-protect* *greater-major-weapon*)))

(defvar *type-f-loot*
  '((50  ("2d4 x 10 sp, 2d4 gp, " *lesser-minor-potion*))
    (250  "2d4 x 10 sp, 2d4 gp, masterwork light armor and " *lesser-minor-potion*)
    (350  "2d4 x 10 sp, 2d4 gp, masterwork medium armor and " *lesser-minor-potion*)
    (400  "2d4 x 10 sp, 2d4 gp, masterwork " *plain-weapon* *lesser-minor-potion*)
    (500  "Masterwork" *plain-weapon* *greater-minor-potion*)
    (750  "6d6 gp, masterwork medium armor, masterwork "*plain-weapon* (2 . *lesser-minor-potion*))
    (1000  "Masterwork heavy armor")
    (1500  "Masterwork heavy armor, masterwork weapon and " *greater-minor-potion*)
    (2000  *lesser-minor-protect* ", masterwork weapon and " (2 . *greater-minor-potion*))
    (3000  "Masterwork medium armor, " *lesser-minor-weapon* *greater-minor-potion*)
    (4000 *lesser-minor-protect* ", masterwork" *plain-weapon* *lesser-minor-wonderous*
      *greater-minor-potion*)
    (5000 "Masterwork medium armor, " *lesser-minor-weapon* *lesser-minor-wonderous*
      *greater-minor-potion*)
    (6000 *lesser-minor-protect* *lesser-minor-weapon* *lesser-minor-wonderous*)
    (7500 *greater-minor-protect* *lesser-minor-weapon* *lesser-minor-ring*)
    (10000 *greater-minor-protect* *lesser-minor-weapon* *lesser-minor-ring*
      *lesser-minor-wonderous* (3 . *greater-minor-potion*))
    (10000 *greater-minor-protect* *greater-minor-weapon* *greater-medium-potion*)
    (12500 *greater-minor-protect* *lesser-minor-weapon* *greater-minor-wonderous*
      (2 . *greater-medium-potion*))
    (15000 *greater-minor-protect* *greater-minor-weapon* *greater-minor-ring*)
    (20000 *lesser-medium-protect* *greater-minor-weapon* *greater-minor-wonderous*
      (2 . *greater-medium-potion*))
    (25000 *lesser-medium-protect* *lesser-medium-weapon* *lesser-minor-ring*
      *lesser-minor-wonderous* (2 . *greater-medium-potion*))
    (30000 *lesser-medium-protect* *lesser-medium-weapon*
      (2 . *lesser-minor-ring*) *greater-minor-wonderous*)
    (40000 *lesser-medium-protect* *lesser-medium-weapon* *lesser-medium-ring*
      (2 . *greater-medium-potion*))
    (50000 *greater-medium-protect* *greater-medium-weapon* *lesser-medium-wonderous*
      (2 . *lesser-major-potion*))
    (60000 *greater-medium-protect* *greater-medium-weapon* (2 . *greater-minor-ring*)
      (2 . *greater-minor-wonderous*))
    (75000 *lesser-major-protect* *greater-medium-weapon* *greater-minor-ring*
      *greater-medium-wonderous* (3 . *greater-major-potion*))
    (100000 *lesser-major-protect* *lesser-major-weapon* *lesser-medium-ring*
      *greater-minor-ring* (2 . *lesser-medium-wonderous*))))

(defvar *type-g-loot*
  '((50 "2d4 x 10 sp, 2d4 gp, " *lesser-minor-potion*)
    (75 "2d4 gp, " *lesser-minor-potion* *lesser-minor-scroll*)
    (100 *lesser-minor-potion* (2 . *lesser-minor-scroll*))
    (150 *lesser-minor-scroll* *greater-minor-scroll*)
    (200 (2 . *lesser-minor-potion*) *greater-minor-scroll*)
    (250 (2 . *greater-minor-scroll*))
    (500 (3 . *lesser-minor-potion*) (3 . *greater-minor-scroll*))
    (750 *greater-minor-potion* *lesser-minor-wand*)
    (1000 "7d6 gp, " (3 . *greater-minor-scroll*) *lesser-minor-wand*)
    (1500 "3d6 x 10 gp, " *lesser-medium-potion* *lesser-medium-scroll*
      *lesser-minor-wand*)
    (2000 "Masterwork " *plain-weapon* (2 . *lesser-medium-scroll*) *lesser-minor-wand*)
    (2500 (2 . *greater-medium-potion*) *greater-minor-wand*)
    (3000 *greater-medium-potion* (2 . *lesser-medium-scroll*) *greater-minor-wand*)
    (4000 *lesser-minor-wonderous* *greater-medium-potion* *greater-minor-wand*)
    (5000 *lesser-minor-ring* *lesser-minor-wonderous* (2 . *lesser-medium-scroll*))
    (6000 *lesser-minor-ring* *lesser-minor-wonderous* *greater-medium-potion*
      *greater-minor-wand*)
    (7500 (2 . *greater-medium-potion*) *lesser-minor-scroll* *lesser-medium-wand*)
    (10000 *lesser-minor-ring* *lesser-minor-wonderous* *lesser-medium-wand*)
    (12500 *lesser-minor-ring* *greater-minor-wonderous* (2 . *greater-medium-scroll*)
      (2 . *greater-minor-wand*))
    (15000 *lesser-minor-ring* *lesser-medium-rod* *lesser-medium-wand*)
    (20000 *greater-minor-ring* *greater-minor-wonderous* *greater-medium-potion*
      (2 . *greater-medium-scroll*) *lesser-medium-wand*)
    (25000 *lesser-minor-ring* *lesser-medium-wand* *greater-medium-wand*
      *greater-minor-wonderous*)
    (30000 *greater-minor-ring* *lesser-medium-wonderous* *lesser-major-scroll*
      *greater-medium-wand*)
    (40000 *lesser-minor-weapon* *lesser-medium-staff* *greater-medium-rod*
      (2 . *lesser-minor-wonderous*) *lesser-medium-wand*)
    (50000 *greater-minor-ring* (2 . *lesser-medium-wonderous*) *lesser-major-potion*
      (3 . *greater-minor-scroll*) *lesser-major-wand*)
    (60000 *lesser-medium-staff* *greater-medium-rod* *greater-medium-wonderous*
      *greater-medium-potion* (2 . *lesser-major-scroll*) *lesser-medium-wand*)
    (75000 *lesser-minor-weapon* *greater-medium-staff* *greater-medium-wonderous*
      (3 . *greater-major-scroll*) *greater-major-wand*)
    (100000 *lesser-major-ring* *greater-medium-rod* *lesser-major-staff*
      *lesser-major-scroll* *greater-medium-wand*)))

(defvar *type-h-loot*
  '((500 "4d4 x 100 cp, 3d6 x 10 sp, 2d4 x 10 gp, masterwork " *plain-weapon*
    *lesser-minor-potion* *lesser-minor-scroll* *grade-two-gem*)
    (1000 "2d4 x 100 cp, 2d6 x 100 sp, 6d6 gp, " *greater-minor-potion*
      *greater-minor-scroll* *lesser-minor-wand* (3 . *grade-one-gem*))
    (2500 "3d6 x 10 sp, 2d4 gp, masterwork heavy armor, masterwork " *plain-weapon*
      (2 . *lesser-medium-potion*) (2 . *greater-minor-scroll*) *grade-two-gem*)
    (5000 "2d4 x 10 gp, 4d6 pp, masterwork " *plain-weapon* *lesser-minor-ring*
      *greater-medium-potion* *lesser-medium-scroll* *greater-minor-wand*)
    (7500 "4d4 x 10 gp, 6d6 pp, " *lesser-minor-weapon* *lesser-minor-wonderous*
      (2 . *greater-medium-potion*) *greater-minor-wand* (2 . *grade-three-gem*))
    (10000 "4d8 x 10 gp, 6d10 pp, " *greater-minor-protect* *lesser-minor-ring*
      *lesser-minor-wonderous* *lesser-medium-scroll* *greater-minor-wand* *grade-four-gem*)
    (15000 "4d4 x 10 gp, 4d4 x 10 pp, " *greater-minor-protect* *lesser-minor-wonderous*
      (2 . *greater-medium-potion*) (2 . *greater-medium-scroll*) *lesser-medium-wand* *grade-three-gem*)
    (20000 "2d4 x 10 pp, " *greater-minor-ring* (2 . *lesser-minor-wonderous*)
      (2 . *greater-medium-potion*) (2 . *lesser-major-scroll*) *lesser-medium-wand*)
    (25000 "6d10 x 10 gp, 6d6 pp, " *lesser-medium-protect* *lesser-minor-weapon*
      *greater-minor-wonderous* (2 . *lesser-major-scroll*) *lesser-medium-wand* *grade-four-gem*)
    (30000 "6d6 x 10 gp, 2d4 x 10 pp, " *greater-minor-weapon* *lesser-medium-wonderous*
      *greater-medium-wand* (3 . *grade-three-gem*))
    (40000 "4d4 x 10 gp, 4d4 x 10 pp, " *lesser-medium-ring* *lesser-medium-rod*
      (2 . *greater-major-potion*) (2 . *lesser-major-scroll*) *lesser-major-wand*)
    (50000 "4d4 x 10 pp, " *greater-medium-protect* *lesser-medium-staff*
      *lesser-medium-wonderous* *greater-major-scroll* *lesser-medium-wand* *grade-five-gem*)
    (75000 "2d8 x 100 gp, 4d4 x 10 pp, " *greater-minor-weapon* *greater-medium-ring*
      *greater-medium-staff* (3 . *greater-major-potion*) *greater-major-scroll*
      *lesser-major-wand* *grade-five-gem*)
    (100000 "8d6 x 100 gp, 4d4 x 10 pp, " *lesser-major-ring* *lesser-major-wonderous*
      (3 . *greater-major-potion*) *greater-major-scroll* *lesser-medium-wand*
      (2 . *grade-five-gem*) *grade-six-gem*)))

(defvar *type-i-loot*
  '((5000 "4d4 x 1,000 cp, 6d6 x 100 sp, 2d4 x 100 gp, 6d6 pp, " *lesser-minor-protect*
      *greater-minor-wand* (5 . *grade-three-gem*) *grade-three-art*)
    (10000 "4d4 x 1,000 cp, 6d6 x 100 sp, 2d4 x 100 gp, 6d6 pp, " *greater-minor-protect*
      *lesser-minor-weapon* *lesser-minor-wonderous* *greater-medium-scroll*
      *grade-four-gem* *grade-three-art*)
    (15000 "2d4 x 1,000 cp, 6d4 x 100 sp, 3d6 x 10 gp, 6d6 pp, " *greater-minor-ring*
      (2 . *lesser-minor-wonderous*) (2 . *greater-medium-potion*) *greater-minor-wand*
      *grade-four-gem* *grade-three-art*)
    (20000 "2d4 x 1,000 cp, 6d4 x 100 sp, 3d6 x 10 gp, 6d6 pp, " *greater-minor-protect*
      *lesser-medium-rod* *greater-minor-wonderous* (2 . *lesser-major-potion*)
      *greater-medium-scroll* (3 . *grade-three-art*))
    (25000 "2d4 x 1,000 cp, 6d4 x 100 sp, 3d6 x 10 gp, 6d6 pp, " *lesser-medium-staff*
      (2 . *lesser-minor-wonderous*) *greater-medium-potion* *lesser-medium-wand*
      (2 . *grade-two-gem*) (2 . *grade-three-gem*) *grade-four-gem*)
    (30000)))
