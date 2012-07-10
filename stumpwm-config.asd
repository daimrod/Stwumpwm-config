;;;; stumpwm-config.asd

(asdf:defsystem #:stumpwm-config
  :serial t
  :depends-on (#:stumpwm
               #:swank)
  :components ((:file "config-defs")
               (:file "config-frames")
               (:file "config-theme")
               (:file "config-bindings")
               (:file "init")))
