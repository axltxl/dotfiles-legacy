;; My minimalist emacs config
;; My attempt to take what I consider the best from spacemacs
;; and replicate it onto a way slimmed-down minimalist config that
;; is especially made for my needs
;; (this is still a work in progress)
;; STATE: experimental
;; -----------------------------

;; Packages, packages, packages!
;; -----------------------------
;; Source: http://aaronbedra.com/emacs.d/#user-info

;; Setup MELPA stable as the package repo
(require 'package)
(package-initialize)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

;; Define my packages :)
;; TODO fill that list with some packages!
(defvar axltxl/packages '(
			   use-package
			   ) "Default packages")

;; Install default packages
;; ------------------------
;; When Emacs boots, check to make sure all of the packages
;; defined in abedra/packages are installed. If not, have ELPA take care of it.
(require 'cl)
(defun axltxl/packages-installed-p ()
  (loop for pkg in axltxl/packages
     when (not (package-installed-p pkg)) do (return nil)
     finally (return t)))

(unless (axltxl/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg axltxl/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Take it from here and load config files
;; ---------------------------------------
(defun axltxl/load-config (name)
  (load-file (concat user-emacs-directory "config.d/" name ".el")))

;; This is only needed once, near the top of the file
(eval-when-compile
        (require 'use-package))
(setq use-package-always-ensure t)

;; The very basics
(axltxl/load-config "which-key")
(axltxl/load-config "evil-mode")
(axltxl/load-config "evil-leader")

;; Basic workflow
(axltxl/load-config "helm")
(axltxl/load-config "window-mgmt")
(axltxl/load-config "buffer-mgmt")

;; The actual packages that make it awesome
(axltxl/load-config "auto-complete")

;; Look and feel
(axltxl/load-config "look-and-feel")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
