;;;; init.lisp

(in-package #:stumpwm)

(ql:quickload :swank)

(load-module "config-defs")
(load-module "config-frames")
(load-module "config-bindings")

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
