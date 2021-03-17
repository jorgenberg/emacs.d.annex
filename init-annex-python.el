;;; init-annex-python --- python mode

;;; Commentary:
;;; Loads and customizes python mode

;;; Code:

(require-package 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
;; Activate on changing buffers
(add-hook 'window-configuration-change-hook 'auto-virtualenv-set-virtualenv)

(provide 'init-annex-python)
;;; init-annex-python.el ends here
