
;; Disable backup files
(setq make-backup-files nil)

;; Packages please!
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
