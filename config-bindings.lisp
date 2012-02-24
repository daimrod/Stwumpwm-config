;;;; config-bindings.lisp

(in-package #:stumpwm)

(set-prefix-key (kbd "s-s"))

;;; Map [prefix s-X] to switch to the group X
(flet ((top-set-key (command &optional prefix)
         (lambda (n)
          (let ((group (format nil "~A" n)))
            (define-key *top-map* (kbd (concat "s-" prefix group)) (concat command " " group))))))
  (mapc (top-set-key "gselect")
        '(1 2 3 4 5 6 7 8 9)))

;;; Map [prefix s-S-X] to move the current window to the group X
(flet ((top-set-key-helper (args)
         (destructuring-bind (key command) args
           (top-set-key (kbd key) command))))
  (mapc #'top-set-key-helper
        `(("s-!"  "gmove 1")
          ("s-@"  "gmove 2")
          ("s-#"  "gmove 3")
          ("s-$"  "gmove 4")
          ("s-%"  "gmove 5")
          ("s-^"  "gmove 6")
          ("s-&"  "gmove 7")
          ("s-*"  "gmove 8")
          ("s-("  "gmove 9"))))

;;; Misc bindings
(flet ((global-set-key-helper (args)
         (destructuring-bind (key command) args
          (global-set-key (kbd key) command))))
  (mapc #'global-set-key-helper
        `(("s-e"        ,(spawn "~/bin/emacsc"))
          ("s-RET"      ,(spawn "sakura -e tmux"))
          ("RET"        ,(spawn "sakura -e tmux"))
          ("s-S-RET"    ,(spawn "sakura"))
          ("s-p"        ,(spawn "~/bin/dmenu_launcher"))
          ("V"          "vsplit"))))
