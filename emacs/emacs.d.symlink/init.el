(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(ido-mode 1)
(setq mouse-yank-at-point t)
(setq  make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)
(show-paren-mode 1)

;customize calendar
(setq calendar-week-start-day 1
      calendar-intermonth-text
      '(propertize
        (format "%2d"
                (car
                 (calendar-iso-from-absolute
                  (calendar-absolute-from-gregorian (list month day year)))))
        'font-lock-face 'font-lock-function-name-face))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp/use-package" user-emacs-directory))

(require 'use-package)

(use-package zenburn-theme
  :ensure t
  :init
  (load-theme 'zenburn t))

(if (version< "24.4" emacs-version)
    (use-package magit
      :ensure t))


(use-package flycheck
  :ensure t)

(use-package go-mode
  :ensure t
  :config
  (add-hook 'before-save-hook 'gofmt-before-save))

(use-package markdown-mode
  :ensure t)

(require 'amadeus)

(put 'narrow-to-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(indent-tabs-mode nil)
 '(package-selected-packages
   (quote
    (groovy-mode flycheck zenburn-theme color-theme-zenburn)))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
