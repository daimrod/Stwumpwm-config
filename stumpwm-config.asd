; Copyright (C) 2012 by Grégoire Jadi
; See the file LICENSE for copying permission.

(asdf:defsystem #:stumpwm-config
  :serial t
  :depends-on (#:stumpwm
               #:swank
               #:inferior-shell)
  :components ((:file "config-defs")
               (:file "config-theme")
               (:file "config-bindings")
               (:file "init")))
