;;; packages.el --- y2kbug-ui layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Turing <turing@MacBook-Pro>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `y2kbug-ui-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `y2kbug-ui/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `y2kbug-ui/pre-init-PACKAGE' and/or
;;   `y2kbug-ui/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst y2kbug-ui-packages
  '(all-the-icons
    all-the-icons-dired
    )
)

(defun y2kbug-ui/init-all-the-icons-dired ()
  (use-package all-the-icons-dired
    :defer t) 
  )

(defun y2kbug-ui/init-all-the-icons ()
  (use-package all-the-icons
    :defer t
    :init
    (progn
      (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
      )))

;;; packages.el ends here
