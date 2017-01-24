(in-package :treasure-gen)

(defvar *lesser-minor-armor*
  '(((0 . 79) "+1 armor ")
    ((80 . 99) *lesser-minor-specific-armor*)))
;
(defvar *greater-minor-armor*
  '(((0 . 25) "+1 armor")
    ((26 . 52) "+2 armor")
    ((53 . 79) "+1 armor and" *plus-one-armor*)
    ((80 . 99) *greater-minor-specific-armor*)))
;
(defvar *lesser-medium-armor*
  '(((0 . 9) "+1 armor")
    ((10 . 19) "+2 armor")
    ((20 . 31) "+3 armor")
    ((32 . 43) "+1 armor and " *plus-one-armor*)
    ((44 . 55) "+2 armor and " (2 . *plus-one-armor*)
    ((56 . 67) "+1 armor and " *plus-two-armor*)
    ((68 . 79) "+2 armor and " *plus-one-armor*)
    ((80 . 99) *lesser-medium-specific-armor*))))

(defvar *greater-medium-armor*
  '(((0 . 9) "+2 armor")
    ((10 . 21) "+3 armor")
    ((22 . 31) " +1 armor and " *plus-one-armor*)
    ((32 . 43) "+1 armor and " (2 . *plus-one-armor*))
    ((44 . 55) "+2 armor and " *plus-one-armor*)
    ((56 . 67) "+2 armor and " *plus-two-armor*)
    ((68 . 79) "+3 armor and" *plus-one-armor*)
    ((80 . 99) *greater-medium-specific-armor*)))

(defvar *lesser-major-armor*
  '(((0 . 9) "+3 armor")
    ((10 . 21) "+4 armor")
    ((22 . 31) "+1 armor and " *plus-two-armor*)
    ((32 . 43) "+1 armor and " *plus-three-armor*)
    ((44 . 55) "+2 armor and " *plus-two-armor*)
    ((56 . 67) "+3 armor and " *plus-one-armor*)
    ((68 . 79) "+4 armor and " *plus-one-armor*)
    ((80 . 99) *lesser-major-specific-armor*)))

(defvar *greater-major-armor*
  '(((0 . 9) "+4 armor")
    ((10 . 19) "+5 armor")
    ((30 . 29) "+4 armor and " *plus-one-armor*)
    ((30 . 37) "+4 armor and " *plus-two-armor*)
    ((38 . 45) "+4 armor and " *plus-three-armor*)
    ((46 . 50) "+4 armor and " *plus-four-armor*)
    ((51 . 58) "+5 armor and " *plus-one-armor*)
    ((59 . 66) "+5 armor and " *plus-two-armor*)
    ((67 . 70) "+5 armor and " *plus-three-armor*)
    ((71 . 73) "+5 armor and " (2 . *plus-two-armor*))
    ((74 . 76) "+5 armor and " *plus-four-armor*)
    ((77 . 79) "+5 armor and " *plus-five-armor*)
    ((80 . 99) *greater-major-specific-armor*)))

(defvar *lesser-minor-shield*
  '(((0 . 79) "+1 item")
    ((80 . 99) *lesser-minor-specific-shield*)))
;
(defvar *greater-minor-shield*
  '(((0 . 25) "+1 shield")
    ((26 . 52) "+2 shield")
    ((53 . 79) "+1 shield and" *plus-one-shield*)
    ((80 . 99) *greater-minor-specific-shield*)))
;
(defvar *lesser-medium-shield*
  '(((0 . 9) "+1 shield")
    ((10 . 19) "+2 shield")
    ((20 . 31) "+3 shield")
    ((32 . 43) "+1 shield and " *plus-one-shield*)
    ((44 . 55) "+2 shield and " (2 . *plus-one-shield*)
    ((56 . 67) "+1 shield and " *plus-two-shield*)
    ((68 . 79) "+2 shield and " *plus-one-shield*)
    ((80 . 99) *lesser-medium-specific-shield*))))

(defvar *greater-medium-shield*
  '(((0 . 9) "+2 shield")
    ((10 . 21) "+3 shield")
    ((22 . 31) " +1 shield and " *plus-one-shield*)
    ((32 . 43) "+1 shield and " (2 . *plus-one-shield*))
    ((44 . 55) "+2 shield and " *plus-one-shield*)
    ((56 . 67) "+2 shield and " *plus-two-shield*)
    ((68 . 79) "+3 shield and" *plus-one-shield*)
    ((80 . 99) *greater-medium-specific-shield*)))

(defvar *lesser-major-shield*
  '(((0 . 9) "+3 shield")
    ((10 . 21) "+4 shield")
    ((22 . 31) "+1 shield and " *plus-two-shield*)
    ((32 . 43) "+1 shield and " *plus-three-shield*)
    ((44 . 55) "+2 shield and " *plus-two-shield*)
    ((56 . 67) "+3 shield and " *plus-one-shield*)
    ((68 . 79) "+4 shield and " *plus-one-shield*)
    ((80 . 99) *lesser-major-specific-shield*)))

(defvar *greater-major-shield*
  '(((0 . 9) "+4 shield")
    ((10 . 19) "+5 shield")
    ((30 . 29) "+4 shield and " *plus-one-shield*)
    ((30 . 37) "+4 shield and " *plus-two-shield*)
    ((38 . 45) "+4 shield and " *plus-three-shield*)
    ((46 . 50) "+4 shield and " *plus-four-shield*)
    ((51 . 58) "+5 shield and " *plus-one-shield*)
    ((59 . 66) "+5 shield and " *plus-two-shield*)
    ((67 . 70) "+5 shield and " *plus-three-shield*)
    ((71 . 73) "+5 shield and " (2 . *plus-two-shield*))
    ((74 . 76) "+5 shield and " *plus-four-shield*)
    ((77 . 79) "+5 shield and " *plus-five-shield*)
    ((80 . 99) *greater-major-specific-shield*)))

(defvar *lesser-minor-protect*
  '(((0 . 49) *lesser-minor-armor*)
    ((50 . 99) *lesser-minor-shield*)))

(defvar *greater-minor-protect*
  '(((0 . 49) *greater-minor-armor*)
    ((50 . 99) *greater-minor-shield*)))

(defvar *lesser-medium-protect*
  '(((0 . 49) *lesser-medium-armor*)
    ((50 . 99) *lesser-medium-shield*)))

(defvar *greater-medium-protect*
  '(((0 . 49) *greater-medium-armor*)
    ((50 . 99) *greater-medium-shield*)))

(defvar *lesser-major-protect*
  '(((0 . 49) *lesser-major-armor*)
    ((50 . 99) *lesser-major-shield*)))

(defvar *greater-major-protect*
  '(((0 . 49) *greater-major-armor*)
    ((50 . 99) *greater-major-shield*)))

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
;
(defvar *plus-two-armor*
  '(((0 . 11) "Glamered")
    ((12 . 23) "Jousting")
    ((24 . 37) "Shadow")
    ((38 . 51) "Slick")
    ((52 . 63) "Expeditious")
    ((64 . 75) "Creeping")
    ((76 . 87) "Rallying")
    ((88 . 99) "Spell resistance (13)")))

(defvar *plus-three-armor*
  '(((0 . 7) "Adhesive")
    ((8 . 16) "Hasteling")
    ((17 . 25) "Radiant")
    ((26 . 35) "Delving")
    ((36 . 44) "Putrid")
    ((45 . 54) "Fortification (moderate)")
    ((55 . 64) "Ghost touch")
    ((65 . 73) "Invulnerability")
    ((74 . 83) "Spell resistance (15)")
    ((84 . 91) "Titanic")
    ((92 . 99) "Wild")))

(defvar *plus-four-armor*
  '(((0 . 15) "Harmonizing")
    ((16 . 32) "Shadow (improved)")
    ((33 . 49) "Slick (improved)")
    ((50 . 66) "Energy resistance")
    ((67 . 82) "Martyring")
    ((83 . 99) "Spell resistance (17)")))

(defvar *plus-five-armor*
  '(((0 . 7) "Righteous")
    ((8 . 14) "Unbound")
    ((15 . 22) "Unrighteous")
    ((23 . 29) "Vigilant")
    ((30 . 36) "Determination")
    ((37 . 44) "Shadow (greater)")
    ((45 . 52) "Slick (improved)")
    ((53 . 60) "Energy resistance (improved)")
    ((61 . 68) "Etherealness")
    ((69 . 75) "Undead controlling")
    ((76 . 83) "Energy resistance (greater)")
    ((84 . 91) "Fortification (heacy)")
    ((92 . 99) "Spell resistance (19)")))

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

(defvar *plus-two-shield*
  '(((0 . 14) "Rallying")
    ((15 . 29) "Wyrmsbreath")
    ((30 . 49) "Animated")
    ((50 . 66) "Arrow deflection")
    ((67 . 81) "Merging")
    ((82 . 99) "Spell resistance (13)")))

(defvar *plus-three-shield*
  '(((0 . 14) "Hasteling")
    ((15 . 31) "Radiant")
    ((32 . 48) "Fortification (moderate)")
    ((49 . 65) "Ghost touch")
    ((66 . 82) "Spell resistance (15)")
    ((83 . 99) "Wild")))

(defvar *plus-four-shield*
  '(((0 . 49) "Energy resistance")
    ((50 . 99) "Spell resistance (17)")))

(defvar *plus-five-shield*
  '(((0 . 10) "Determination")
    ((11 . 26) "Energy resistance (improved)")
    ((27 . 37) "Undead controlling")
    ((38 . 54) "Energy resistance (greater)")
    ((55 . 69) "Fortification (heavy)")
    ((70 . 84) "Reflecting")
    ((85 . 99) "Spell resistance (19)")))

(defvar *lesser-minor-specific-armor*
  '(((0 . 49) "Mithral shirt")
    ((50 . 99) "Masterwork/special material armor")))
;
(defvar *greater-minor-specific-armor*
  '(((0 . 32) "Mistmail")
    ((33 . 65) "Otyugh hide")
    ((66 . 99) "Dragonhide plate")))
;
(defvar *lesser-medium-specific-armor*
  '(((0 . 32) "Elven chain")
    ((33 . 65) "Rhino hide")
    ((66 . 99) "Morlock hide")))

(defvar *greater-medium-specific-armor*
  '(((0 . 14) "Adamantine breastplate")
    ((15 . 24) "Soothsayer’s raiment")
    ((25 . 27) "Equestrian plate")
    ((28 . 49) "Enchanted eelskin")
    ((50 . 61) "Boneless leather")
    ((62 . 71) "Murderer’s blackcloth")
    ((72 . 85) "Folding plate")
    ((86 . 99) "Breastplate of vanishing")))

(defvar *lesser-major-specific-armor*
  '(((0 . 12) "Armor of insults")
    ((13 . 28) "Dwarven plate")
    ((29 . 44) "Banded mail of luck")
    ((45 . 57) "Catskin leather")
    ((58 . 70) "Celestial armor")
    ((71 . 83) "Buccaneer’s breastplate")
    ((84 . 99) "Plate armor of the deep")))

(defvar *greater-major-specific-armor*
  '(((0 . 9) "Breastplate of command")
    ((10 . 13) "Forsaken banded mail")
    ((14 . 23) "Mithral full plate of speed")
    ((24 . 27) "Warden of the woods")
    ((28 . 31) "Scarab breastplate")
    ((32 . 37) "Giant-hide armor (ogre)")
    ((38 . 41) "Hamatula hide")
    ((42 . 47) "Giant-hide armor (hill giant)")
    ((48 . 51) "Demon armor")
    ((52 . 57) "Giant-hide armor (stone, fire, or frost giant)")
    ((58 . 63) "Giant-hide armor (troll)")
    ((64 . 69) "Mail of malevolence")
    ((70 . 75) "Giant-hide armor (cloud giant)")
    ((76 . 81) "Giant-hide armor (storm giant)")
    ((82 . 87) "Daystar half-plate")
    ((88 . 95) "Invincible armor")
    ((96 . 99) "Prismatic plate")))

(defvar *lesser-minor-specific-shield*
  '(((0 . 19) "Living steel heavy shield")
    ((20 . 44) "Darkwood buckler")
    ((45 . 69) "Darkwood shield")
    ((70 . 99) "Mithral heavy shield")))
;
(defvar *greater-minor-specific-shield*
  '(((0 . 29) "Zombie skin shield")
    ((30 . 74) "Caster's shield")
    ((75 . 99) "Burglar's buckler")))

(defvar *lesser-medium-specific-shield*
  '(((0 . 34) "Spined shield")
    ((35 . 49) "Dragonslayer’s shield")
    ((50 . 64) "Collapsible tower")
    ((65 . 99) "Lion’s shield")))

(defvar *greater-medium-specific-shield*
  '(((0 . 19) "Caster shield (greater)")
    ((20 . 39) "Celestial shield")
    ((40 . 59) "Maelstrom shield")
    ((60 . 79) "Volcanic shield")
    ((80 . 99) "Tempest shield")))

(defvar *lesser-major-specific-shield*
  '(((0 . 19) "Battlement shield")
    ((20 . 39) "Winged shield")
    ((40 . 59) "Avalanche shield")
    ((60 . 79) "Fortress shield")
    ((80 . 99) "Wyrmslayer’s shield")))

(defvar *greater-major-specific-shield*
  '(((0 . 19) "Spell ward tower shield")
    ((20 . 34) "Quick block buckler")
    ((35 . 49) "Belligerent shield")
    ((50 . 64) "Force tower")
    ((65 . 84) "Absorbing shield")
    ((85 . 99) "Elysian shield")))
