(setq-default c-default-style "linux"
              c-basic-offset 4
              indent-tabs-mode nil
              default-tab-width 4)

(global-set-key (kbd "TAB") 'self-insert-command)

(defun my/ret ()
  (interactive)
  (let ((indent (save-excursion
                  (beginning-of-line)
                  (when (looking-at "[[:blank:]]+")
                    (match-string-no-properties 0)))))
    (newline)
    (when indent (insert indent))))

(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "RET") #'my/ret)))

(defun set-tab-width (width)
  """sets the tab width"""
  (interactive "nTab width: ")
  (setq tab-width width))

;; jl
