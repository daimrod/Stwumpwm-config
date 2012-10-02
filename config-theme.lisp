; Copyright (C) 2012 by Grégoire Jadi
; See the file LICENSE for copying permission.

(in-package #:stumpwm)

(setf *message-window-gravity* :top-center
      *input-window-gravity* :top-center)

(defparameter *theme-tango* '(#x2e3436  ; black
                              #xa40000  ; red
                              #x4e9a06  ; green
                              #xc4a000  ; yellow
                              #x204a87  ; blue
                              #x5c3566  ; magenta
                              #x729fcf  ; cyan
                              #xeeeeec  ; white
                              )
  "See http://tango.freedesktop.org/Tango_Icon_Theme_Guidelines")

(setf *colors* *theme-tango*)

(set-focus-color #x3465a4)
(set-unfocus-color #x1a1a1a)
(set-border-color #x729fcf)
(set-bg-color #x2e3436)
(set-fg-color #xeeeeec)

