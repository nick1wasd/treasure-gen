(in-package :treasure-gen)

(defvar *lesser-minor-potion*
  '(((0 . 39) *lvl-zero-potion*)
    ((40 . 99) *lvl-one-potion*)))

(defvar *greater-minor-potion*
  '(((0 . 9) *lvl-zero-potion*)
    ((10 . 59) *lvl-one-potion*)
    ((60 . 99) *lvl-two-potion*)))
;
(defvar *lesser-medium-potion*
  '(((0 . 24) *lvl-one-potion*)
    ((25 . 84) *lvl-two-potion*)
    ((85 . 99) *lvl-three-potion*)))
;
(defvar *greater-medium-potion*
  '(((0 . 9) *lvl-one-potion*)
    ((10 . 49) *lvl-two-potion*)
    ((50 . 99) *lvl-three-potion*)))

(defvar *lesser-major-potion*
  '(((0 . 34) *lvl-two-potion*)
    ((35 . 99) *lvl-three-potion*)))

(defvar *greater-major-potion*
  '(((0 . 9) *lvl-two-potion*)
    ((10 . 99) *lvl-three-potion*)))
;
(defvar *lvl-zero-potion*
  '(((0 . 13) "Arcane mark")
    ((14 . 27) "Guidance")
    ((28 . 43) "Light")
    ((44 . 57) "Purify food/drink")
    ((58 . 71) "Resistance")
    ((72 . 85) "Stabilize")
    ((86 . 99) "Virtue")))

(defvar *lvl-one-potion*
  '(((0 . 74) *C-lvl-one-potion)
    ((75 . 99) *U-lvl-one-potion)))
;
(defvar *lvl-two-potion*
  '(((0 . 74) *C-lvl-two-potion)
    ((75 . 99) *U-lvl-two-potion)))
;
(defvar *lvl-three-potion*
  '(((0 . 74) *C-lvl-three-potion)
    ((75 . 99) *U-lvl-three-potion)))

(defvar *C-lvl-one-potion*
  '(((0 . 3) "Bless weapon")
    ((4 . 13) "Cure light wounds")
    ((14 . 18) "Endure elements")
    ((19 . 26) "Enlarge person")
    ((27 . 32) "Jump")
    ((33 . 40) "Mage armor")
    ((41 . 46) "Magic fang")
    ((47 . 54) "Magic weapon")
    ((55 . 59) "Pass without trace")
    ((60 . 63) "Protection from chaos")
    ((64 . 67) "Protection from evil")
    ((68 . 71) "Protection from good")
    ((72 . 75) "Protection from law")
    ((76 . 80) "Reduce person")
    ((81 . 86) "Remove fear")
    ((87 . 91) "Sanctuary")
    ((92 . 99) "Shield of faith")))

(defvar *U-lvl-one-potion*
  '(((0 . 3) "Animate rope")
    ((4 . 10) "Ant haul")
    ((11 . 15) "Cloak of the shade")
    ((16 . 19) "Erase")
    ((20 . 25) "Feather step")
    ((26 . 29) "Goodberry")
    ((30 . 33) "Grease")
    ((34 . 40) "Hide from animals")
    ((41 . 48) "Hide from undead")
    ((49 . 52) "Hold portal")
    ((53 . 57) "Invigorate")
    ((58 . 63) "Keen senses")
    ((64 . 67) "Magic stone")
    ((68 . 74) "Remove sickness")
    ((75 . 79) "Sanctify corpse")
    ((80 . 83) "Shillelagh")
    ((84 . 91) "Touch of the sea")
    ((92 . 99) "Vanish")))
;
(defvar *C-lvl-two-potion*
  '(((0 . 3) "Aid")
    ((4 . 6) "Align weapon")
    ((7 . 10) "Barkskin")
    ((11 . 15) "Bear's endurance")
    ((16 . 19) "Blur")
    ((20 . 24) "Bull's strength")
    ((25 . 29) "Cat's grace")
    ((30 . 36) "Cure moderate wounds")
    ((37 . 40) "Darkvision")
    ((41 . 43) "Delay poison")
    ((44 . 48) "Eagle's splendor")
    ((49 . 53) "Fox's cunning")
    ((54 . 60) "Invisibility")
    ((61 . 65) "Levitate")
    ((66 . 70) "Owl's wisdom")
    ((71 . 72) "Protection from arrows")
    ((73 . 75) "Remove paralysis")
    ((76 . 79) "Resist energy (acid)")
    ((80 . 83) "Resist energy (cold)")
    ((84 . 87) "Resist energy (electricity)")
    ((88 . 91) "Resist energy (fire)")
    ((92 . 93) "Resist energy (sonic)")
    ((94 . 97) "Spider climb")
    ((98 . 99) "Undetectable alignment")))

(defvar *C-lvl-three-potion*
  '(((0 . 5) "Cure serious wounds")
    ((6 . 9) "Dispel magic")
    ((10 . 13) "Displacement")
    ((14 . 19) "Fly")
    ((20 . 24) "Gaseous form")
    ((25 . 28) "Good hope")
    ((29 . 34) "Haste")
    ((35 . 39) "Heroism")
    ((40 . 43) "Keen edge")
    ((44 . 47) "Magic fang (greater)")
    ((48 . 51) "Magic vestment")
    ((52 . 56) "Neutralize poison")
    ((57 . 59) "Protection from energy (acid)")
    ((60 . 62) "Protection from energy (cold)")
    ((63 . 65) "Protection from energy (electricity)")
    ((66 . 68) "Protection from energy (fire)")
    ((69 . 70) "Protection from energy (sonic)")
    ((71 . 73) "Rage")
    ((74 . 76) "Remove blindness/deafness")
    ((77 . 80) "Remove curse")
    ((81 . 85) "Remove disease")
    ((86 . 90) "Tongues")
    ((91 . 95) "Water breathing")
    ((96 . 99) "Water walk")))

(defvar *U-lvl-three-potion*
  '(((0 . 11) "Burrow")
    ((12 . 21) "Countless eyes")
    ((22 . 33) "Daylight")
    ((34 . 48) "Draconic reservoir")
    ((49 . 57) "Flame arrow")
    ((58 . 66) "Shrink item")
    ((67 . 76) "Stone shape")
    ((77 . 86) "Fire trap")
    ((87 . 99) "Nondetection")))
