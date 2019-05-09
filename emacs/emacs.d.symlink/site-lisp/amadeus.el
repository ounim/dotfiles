(c-add-style
 "amadeus"
 (quote
  (
   (c-basic-offset . 4)
   (c-offsets-alist
    (substatement-open . 0)
    (arglist-intro . +)
    (arglist-cont . 0)
    (arglist-cont-nonempty . +)
    (arglist-close . +)))))

(add-hook 'c++-mode-hook 
          (lambda nil
            (c-set-style "amadeus")
            (setq indent-tabs-mode nil)))

(add-hook 'c-mode-hook 
          (lambda nil 
            (c-set-style "amadeus")
            (setq indent-tabs-mode nil)))


(use-package tramp
  :ensure t
  :config
  (add-to-list 'tramp-remote-path "~/bin"))

(provide 'amadeus)
