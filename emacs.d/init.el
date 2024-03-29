
;; Disable backup files
(setq make-backup-files nil)

;; Make all tab input spaces instead of the tab char.
(setq-default indent-tabs-mode nil)

;; Enable column-number-mode everywhere
(setq column-number-mode t)

;; Packages please!
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
