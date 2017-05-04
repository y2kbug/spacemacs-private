;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '("" " y2kbug - "
        (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name)) "%b"))))

;; all-the-icons add hook
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
