(load-file "./ripple-union")

(setq-default c-default-style "linux"
              c-basic-offset 4
              indent-tabs-mode nil
              default-tab-width 4)

(defun set-tab-width (width)
  """sets the tab width"""
  (interactive "nTab width: ")
  (setq tab-width width))

;; jl
