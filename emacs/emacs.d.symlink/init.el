(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(ido-mode 1)

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
(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/") t)

(package-initialize)

(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp/use-package" user-emacs-directory))

(require 'use-package)

(use-package color-theme
  :ensure t)
(use-package color-theme-zenburn
  :ensure t
  :config
  (color-theme-zenburn))

(require 'amadeus)
