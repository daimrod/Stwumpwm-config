;;;; init.lisp

(in-package #:stumpwm)

(defvar *stumpwm-started* nil)

(unless *stumpwm-started*
  (setf *stumpwm-started* t)
  (grename "emacs")
  (mapc #'gnewbg
        '("web"
          "ssh"
          "misc"
          "anon"
          "skype"
          "zotero")))
