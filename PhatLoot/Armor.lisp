(defvar *lesser-minor-armor*
  '(((0 . 79) "+1 item")
    ((80 . 99) *lesser-minor-specific-armor-armor*)))

(defvar *greater-minor-armor*
  '(((0 . 25) "+1 armor")
    ((26 . 52) "+2 armor")
    ((53 . 79) "+1 armor and" *plus-one-armor*)
    ((80 . 99) *greater-minor-specific-armor*)))

(defvar *lesser-minor-shield*
  '(((0 . 79) "+1 item")
    ((80 . 99) *lesser-minor-specific-shield*)))

(defvar *greater-minor-shield*
  '(((0 . 25) "+1 shield")
    ((26 . 52) "+2 shield")
    ((53 . 79) "+1 shield and" *plus-one-shield*)
    ((80 . 99) *greater-minor-specific-shield*)))

(defvar *plus-one-armor*
  '(((0 . 5) "Benevolent")
    ((6 . 11) "Poison resistant")
    ((12 . 17) "Balanced")
    ((18 . 23) "Bitter")
    ((24 . 29) "Bolstering")
    ((30 . 35) "Brawling")
    ((36 . 41) "Champion")
    ((42 . 47) "Dastard")
    ((48 . 53) "Deathless")
    ((54 . 59) "Defiant")
    ((60 . 65) "Fortification (light)")
    ((66 . 70) "Grinding")
    ((71 . 75) "Impervious")
    ((76 . 81) "Mirrored")
    ((82 . 87) "Spell storing")
    ((88 . 93) "Stanching")
    ((94 . 99) "Warding")))

(defvar *plus-one-shield*
  '(((0 . 9) "Poison resistant")
    ((10 . 18) "Arrow catching")
    ((19 . 27) "Bashing")
    ((28 . 36) "Blinding")
    ((37 . 45) "Clangorous")
    ((56 . 54) "Defiant")
    ((55 . 63) "Fortification (light)")
    ((64 . 72) "Grinding")
    ((73 . 81) "Impervious")
    ((82 . 90) "Mirrored")
    ((91 . 99) "Ramming")))

(defvar *lesser-minor-specific-armor*
  '(((0 . 49) "Mithral shirt")
    ((50 . 99) "Masterwork/special material armor")))

(defvar *greater-minor-specific-armor*
  '(((0 . 32) "Mistmail")
    ((33 . 65) "Otyugh hide")
    ((66 . 99) "Dragonhide plate")))

(defvar *lesser-minor-specific-shield*
  '(((0 . 19) "Living steel heavy shield")
    ((20 . 44) "Darkwood buckler")
    ((45 . 69) "Darkwood shield")
    ((70 . 99) "Mithral heavy shield")))

(defvar *greater-minor-specific-shield*
  '(((0 . 29) "Zombie skin shield")
    ((30 . 74) "Caster's shield")
    ((75 . 99) "Burglar's buckler")))
