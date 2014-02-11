(defun trust-url (amount)
  """Dispay the Trust URL"""
  (interactive "nAmount: ")
  (insert (format "<https://ripple.com//trust?to=r3ADD8kXSUKHd6zTCKfnKT3zV9EZHjzp1S&name=Ripple%%20Union&amount=%d/CAD>" amount)))

(defun faq-url ()
  """ Display the FAQ URL"""
  (interactive)
  (insert "<https://faq.rippleunion.com>"))

(defun gc-url ()
  """Display the Gift Card URL"""
  (interactive)
  (insert "<https://giftcards.rippleunion.com>"))

(defun request-trust (amount)
  """Request a Trust Line"""
  (interactive "nAmount: ")
  (insert (format "We have activated your account, but before we can complete your transaction, you will need to set up a trust line with r3ADD8kXSUKHd6zTCKfnKT3zV9EZHjzp1S for at least %d CAD.  You can do this by following the link below:" amount))
  (fill-paragraph)
  (insert "\n\n")
  (trust-url amount)
  (insert "\n\nPlease be certain to open this trust line in Canadian dollars (CAD), as we operate strictly in Canadian dollars, and will be unable to process your transaction in any other currency.")
  (fill-paragraph)
  (insert "\n\nIf you prefer to do this manually, see ")
  (faq-url)
  (insert " for directions.")
  (fill-paragraph)
  (insert "\n\nIt is important to note that we have only sent you enough XRP to set up the trust line with us, as well as one other trust line or trade request.  If you want more trust lines or trade requests, you will need more XRP.")
  (fill-paragraph)
  (insert "\n\nSee our FAQ at ")
  (gc-url)
  (insert " for details on how to do currency trading within the Ripple system.")
  (fill-paragraph)
  (insert "\n"))

(defun thanks ()
  """Thank the User"""
  (interactive)
  (insert "Your transaction has been completed.\n\n")
  (insert "Thanks for choosing Ripple Union.\n"))
