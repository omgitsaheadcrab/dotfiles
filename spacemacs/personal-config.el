(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour
(global-set-key (kbd "C-z") 'undo)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun count-occurences (regex string)
  (recursive-count regex string 0))
(defun recursive-count (regex string start)
  (if (string-match regex string start)
      (+ 1 (recursive-count regex string (match-end 0)))
    0))
(setq dmesg-out
      (shell-command-to-string "/usr/bin/dmesg"))
(setq hhkb-times
      (count-occurences "HHKB" dmesg-out))
(if (> hhkb-times 0)
    (progn
      (setq  x-meta-keysym 'super
             x-super-keysym 'meta)
      (message "HHKB connected on Linux.")))

(if (string-equal system-type "darwin")
    (progn
      (setq mac-command-modifier 'meta
            mac-option-modifier 'super)
      (message "MacOS detected.")))

(setq python-formatter 'black)

(global-company-mode)
(global-button-lock-mode)

(setq counsel-find-file-ignore-regexp "\\.pyc\\'")
