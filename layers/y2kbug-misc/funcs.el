(defun evil-save-and-enter-normal-state ()
  "Save buffer and go to normal state."
  (interactive)
  (save-buffer)
  (evil-normal-state))
