; Copyright (C) 2012 by Grégoire Jadi
; See the file LICENSE for copying permission.

(in-package #:stumpwm)

(defcommand start-swank (port) ((:number "Port: "))
  "Launch a swank server
Use M-x slime-connect"
  (setf stumpwm:*top-level-error-action* :break)
  (swank-loader:init)
  (swank:create-server :port port
                       :style swank:*communication-style*
                       :dont-close t))

(defun global-set-key (key command)
  "Map KEY to COMMAND in the root keymap."
  (define-key *root-map* key command))

(defun top-set-key (key command)
  "Map KEY to COMMAND in the top keymap."
  (define-key *top-map* key command))

(defun spawn (command)
  (concat "run-shell-command " command))

(defparameter *webbrowser-program* "conkeror")
(defcommand websearch (search-terms) ((:shell "Search: "))
  "Use Conkeror the run a web search."
  (run-prog "/bin/sh" :args (list "-c"
                                  (format nil "~A \"~A\""
                                          *webbrowser-program* search-terms))
                      :wait nil))

(defvar *xterm* "exo-open --launch TerminalEmulator")
