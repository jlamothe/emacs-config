(defun trust-url (amount)
  """Dispay the Trust URL"""
  (interactive "nAmount: ")
  (insert (format "\n\n<https://ripple.com//trust?to=r3ADD8kXSUKHd6zTCKfnKT3zV9EZHjzp1S&name=Ripple%%20Union&amount=%d/CAD>" amount)))

(defun faq-url ()
  """ Display the FAQ URL"""
  (interactive)
  (insert "<http://faq.rippleunion.com>"))

(defun request-trust (amount)
  """Request a Trust Line"""
  (interactive "nAmount: ")
  (insert (format "We have activated your account, but before we can complete your transaction, you will need to set up a trust line with r3ADD8kXSUKHd6zTCKfnKT3zV9EZHjzp1S for at least %d CAD.  You can do this by following the link below:" amount))
  (fill-paragraph)
  (trust-url amount)
  (insert "\n\nIf you prefer to do this manually, see ")
  (faq-url)
  (insert " for directions.")
  (fill-paragraph)
  (insert "\n"))

(defun thanks ()
  """Thank the User"""
  (interactive)
  (insert "Your transaction has been completed.\n\n")
  (insert "Thanks for choosing Ripple Union.\n"))
