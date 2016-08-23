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
