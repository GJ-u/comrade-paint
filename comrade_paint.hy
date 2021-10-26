(import pygame)

((. pygame init))
(setv window ((. pygame display set-mode) (, 800 600)))
((. pygame display set-caption) "Comrade Paint")

(setv running True)
(while running
    ;; Process events
    (for [event ((. pygame event get))]
        (when (= (. event type) (. pygame QUIT))
            (setv running False)))

    ((. window fill) (, 255 255 255))
    ((. pygame display flip)))
