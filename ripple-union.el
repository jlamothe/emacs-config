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

(defun etransfer-url()
  """Display the E-Tansfer URL"""
  (interactive)
  (insert "<https://etransfer.rippleunion.com>"))

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

(defun gc-value ()
  """Request the Value of a Claim Code"""
  (interactive)
  (insert "Thanks for your interest in Ripple Union.\n\n")
  (insert "Unfortunately, we no longer accepting claim codes without knowing their value in advance.  What is the value of this claim code in Canadian dollars?")
  (fill-paragraph)
  (insert "\n\nAlso, please note that we are not accepting claim codes with a value greater than 10 CAD.  If we are unable to accept your claim code, you should be able to get a refund from Amazon, since we have not redeemed it.")
  (fill-paragraph)
  (insert "\n\nWe apologize for any inconvenience.\n\n")
  (gc-details))

(defun gc-too-big ()
  """Reply to a user who has sent a gift card that is too large"""
  (interactive)
  (insert "Thanks for your interest in Ripple Union.\n\n")
  (insert "Unfortunately, we are no longer accepting claim codes with values greater than 10 CAD.  Since we have not redeemed your claim code, you should be able to get a refund from Amazon.")
  (fill-paragraph)
  (insert "\n\nWe apologize for any inconvenience.\n\n")
  (gc-details))

(defun gc-details ()
  (insert "You can view the full details of our gift card program on our website at ")
  (gc-url)
  (insert ".")
  (fill-paragraph)
  (insert "\n\nAdditionally, if you have a Canadian bank account, we now have an Interac e-Transfer program with much higher limits that you may find more useful.  Details can be found at ")
  (etransfer-url)
  (insert ".")
  (fill-paragraph)
  (insert "\n"))
