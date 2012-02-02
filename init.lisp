;;;; init.lisp

(in-package :stumpwm)

(set-prefix-key (kbd "s-s"))

(ql:quickload :swank)
(swank-loader:init)

(defcommand start-swank () ()
  "Launch a swank server
Use M-x slime-connect"
  (setf stumpwm:*top-level-error-action* :break)
  (swank:create-server :port 4005
		       :style swank:*communication-style*
		       :dont-close t))

(defvar *stumpwm-started* nil)
(unless *stumpwm-started*
  (setf *stumpwm-started* t)
  (start-swank)
  (grename "emacs")
  (mapc #'gnewbg
        '("web"
          "ssh"
          "misc"
          "anon"
          "skype"
          "zotero")))

(load-module "config-frame")
