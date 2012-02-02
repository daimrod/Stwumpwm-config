;;;; config-bindings.lisp

(in-package #:stumpwm)

(set-prefix-key (kbd "s-s"))

(flet ((top-set-key-gselect (n)
         (let ((group (format nil "~A" n)))
           (define-key *top-map* (kbd (concat "s-" group)) (concat "gselect " group)))))
  (mapc #'top-set-key-gselect
        '(1 2 3 4 5 6 7 8 9)))

(flet ((global-set-key-helper (args)
         (let ((key (first args))
               (command (second args)))
           (global-set-key (kbd key) command))))
  (mapc #'global-set-key-helper
        `(("s-e"        ,(spawn "~/bin/emacsc"))
          ("s-RET"      ,(spawn "sakura -e tmux"))
          ("RET"        ,(spawn "sakura -e tmux"))
          ("s-S-RET"    ,(spawn "sakura"))
          ("s-p"        ,(spawn "~/bin/dmenu_launcher")))))
