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

(defun global-set-key (key command)
  "Map KEY to COMMAND in the root keymap."
  (define-key *root-map* key command))

(defun spawn (command)
  (concat "run-shell-command " command))
