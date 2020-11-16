(when (configuration-layer/package-usedp 'button-lock)
  (defun test-link ()
    (interactive)
    (button-lock-set-button
     "test\\?name=[a-zA-Z0-9_\\.]*"
     (lambda ()
       (interactive)
       (browse-url (concat "http://localhost:8080/"
                           (buffer-substring
                            (previous-single-property-change (point) 'mouse-face)
                            (next-single-property-change (point) 'mouse-face)))))
     :face 'link
     :face-policy 'prepend
     :keyboard-binding "RET")))
