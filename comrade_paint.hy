;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                  This file is part of Comrade Paint.                    ;;;
;;;                                                                         ;;;
;;;  Comrade Paint is free software: you can redistribute it and/or modify  ;;;
;;;  it under the terms of the GNU General Public License as published by   ;;;
;;;     the Free Software Foundation, either version 3 of the License, or   ;;;
;;;                 (at your option) any later version.                     ;;;
;;;                                                                         ;;;
;;;     Comrade Paint is distributed in the hope that it will be useful,    ;;;
;;;     but WITHOUT ANY WARRANTY; without even the implied warranty of      ;;;
;;;     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the       ;;;
;;;              GNU General Public License for more details.               ;;;
;;;                                                                         ;;; 
;;;    You should have received a copy of the GNU General Public License    ;;;
;;;  along with Comrade Paint.  If not, see <https://www.gnu.org/licenses/> ;;;
;;;                                                                         ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
