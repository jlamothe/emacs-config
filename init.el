(load-file "~/.emacs.d/ripple-union.el")

(setq-default c-default-style "linux"
              c-basic-offset 4
              indent-tabs-mode nil
              default-tab-width 4)

(global-set-key (kbd "TAB") 'self-insert-command)

(require 'cc-mode)
(add-to-list 'c-mode-common-hook
  (lambda () (setq c-syntactic-indentation nil)))

(defun set-tab-width (width)
  """sets the tab width"""
  (interactive "nTab width: ")
  (setq tab-width width))

;; jl
