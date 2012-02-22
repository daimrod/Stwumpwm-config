;;;; stumpwm-init.asd

(asdf:defsystem #:stumpwm-init
  :serial t
  :depends-on (#:stumpwm
               #:swank)
  :components ((:file "config-defs")
               (:file "config-frames")
               (:file "config-bindings")
               (:file "init")))
