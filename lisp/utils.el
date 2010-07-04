;; Utility functions

; window hopping
(defun other-window-backward (n)
  "Select n-th prev. window."
  (interactive "p")
  (other-window (- n)))

