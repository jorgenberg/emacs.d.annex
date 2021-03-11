;;; init-annex-auctex --- load and customize auctex mode

;;; Commentary:

;;; Code:

(require-package 'auctex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook '(lambda ()
                              (turn-on-flyspell)
                              (LaTeX-math-mode)
                              (visual-line-mode)))

(provide 'init-annex-auctex)
;;; init-annex-auctex.el ends here
