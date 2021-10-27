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

(setv pink (, 245 66 218))
(setv green (, 0 250 0))
(setv red (, 250 0 0))
(setv blue (, 0 0 250))

(defn draw-circle [window colour position]
  "Draw a circle, will most likely later include size argument"
  (pygame.draw.circle window colour position 40))


(setv running True)
(while running
    ((. window fill) (, 255 255 255))
  ;; Process events
    (for [event ((. pygame event get))]
        (cond [(= (. event type) (. pygame QUIT))
               (setv running False)]
              [(= (. event type) (. pygame MOUSEBUTTONDOWN))
               (setv position (pygame.mouse.get_pos))
               ; pink is a placeholder here
               (draw-circle window pink position)]) 
      ((. pygame display flip))))






