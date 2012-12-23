; Copyright (C) 2012 by Grégoire Jadi
; See the file LICENSE for copying permission.

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

(inferior-shell:run "sh ~/.post-wm &")
