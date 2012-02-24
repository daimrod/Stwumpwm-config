;;;; stumpwm-init.asd

(asdf:defsystem #:stumpwm-init
  :serial t
  :depends-on (#:stumpwm
               #:stumpwm-contrib
               #:swank)
  :components ((:file "config-defs")
               (:file "config-frames")
               (:file "config-theme")
               (:file "config-bindings")
               (:file "init")))
