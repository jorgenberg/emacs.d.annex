;;; init-local.el --- Load the annex to the configuration
;;; Commentary:

;; This file loads the extras, which are kept separately.

;;; Code:

(require 'init-annex-auctex)
(require 'init-annex-deadgrep)
(require 'init-annex-go)
(require 'init-annex-haskell)
(require 'init-annex-markdown)
(require 'init-annex-yafolding)

;;
;; flyspell in some additional modes
;;
(after-load 'markdown-mode
  (add-hook 'markdown-mode-hook 'turn-on-flyspell))


;;
;; other tweaks
;;

;; don't use a pager inside Emacs
(setenv "PAGER" "cat")

;; paredit-everywhere-mode is an acquired taste
(remove-hook 'prog-mode-hook 'paredit-everywhere-mode)

;; don't want control-Z to suspend frame, it just hangs Emacs
(global-unset-key (kbd "C-z"))

;;undo tree
(require-package 'undo-tree)
(global-undo-tree-mode)


(provide 'init-local)

;;; init-local.el ends here
