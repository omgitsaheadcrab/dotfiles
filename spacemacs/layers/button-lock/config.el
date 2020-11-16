(add-hook 'python-mode-hook
          (lambda ()  (test-link)))

(add-hook 'python-mode-hook
          (lambda ()  (local-set-key (kbd "C-c C-t")  #'test-link)))
