;;;; config-defs.lisp

(in-package #:stumpwm)

(defcommand start-swank () ()
  "Launch a swank server
Use M-x slime-connect"
  (setf stumpwm:*top-level-error-action* :break)
  (swank-loader:init)
  (swank:create-server :port 4005
                       :style swank:*communication-style*
                       :dont-close t))

