;; My minimalist emacs config
;; My attempt to take what I consider the best from spacemacs
;; and replicate it onto a way slimmed-down minimalist config that
;; is especially made for my needs
;; (this is still a work in progress)
;; STATE: experimental
;; -----------------------------

;; Essentials
;; ----------

;; Main config file location
(defconst axltxl/emacs-config-file (concat user-emacs-directory "init.el"))
(defconst axltxl/emacs-layer-dir   (concat user-emacs-directory "config.d/"))

(defun axltxl/config-load (name)
  "Load configuration module"
  (load-file (concat axltxl/emacs-layer-dir name ".el")))

(defun axltxl/config-restart ()
  "Command to reload main configuration"
  (interactive)
  (load-file axltxl/emacs-config-file))

(defun axltxl/config-edit ()
  "Edit configuration file"
  (interactive)
  (find-file axltxl/emacs-config-file))

(defun axltxl/layer-edit ()
  "Edit layer file"
  (interactive)
  (let '(layer-file (concat axltxl/emacs-layer-dir (read-string "Layer name: ") ".el"))
    (if (file-exists-p layer-file)
      (find-file layer-file)
      (message "Layer '%s' does not exist!"))))

;; Packages, packages, packages!
;; -----------------------------
;; Source: http://aaronbedra.com/emacs.d/#user-info

;; Setup MELPA stable as the package repo
(require 'package)
(package-initialize)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

;; Define my bootstrap packages :)
(defvar axltxl/packages '(use-package) "Default packages")

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

;; This is only needed once, near the top of the file
(eval-when-compile
        (require 'use-package)
(setq use-package-always-ensure t))

(setq axltxl/config-layers
  '(
    ;; The very basics
    "essentials"
    "which-key"
    "evil-mode"
    "evil-leader"
    "toggles" ;; UI toggle switches

    ;; Basic workflow
    "helm"
    "window-mgmt"
    "buffer-mgmt"

    ;; Config for vanilla packages
     "dired"

    ;; Text editing must haves
     "text-editing"

    ;; Look and feel
     "look-and-feel"
    ))

;; Take it from here and load config files
;; ---------------------------------------
(dolist (layer axltxl/config-layers) (axltxl/config-load layer))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
    '(custom-safe-themes
         (quote
             ("cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
    '(package-selected-packages
         (quote
             (doom-modeline autopair editorconfig helm-config evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
