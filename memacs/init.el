;; My minimalist emacs config
;; My attempt to take what I consider the best from spacemacs
;; and replicate it onto a way slimmed-down minimalist config that
;; is especially made for my needs
;; (this is still a work in progress)
;; STATE: experimental
;; -----------------------------

;; custom-set-variables is set on another file
;; https://emacs.stackexchange.com/questions/21394/how-can-i-change-where-the-customize-puts-custom-set-variables
(setq custom-file (concat user-emacs-directory "custom.el"))

;; Essentials
;; ----------

;; Main constants
(defconst axltxl/emacs-init-file  (concat user-emacs-directory "init.el"))
(defconst axltxl/emacs-config-dir (concat user-emacs-directory "config.d/"))

(defun axltxl/config-get-file (name)
  "Get path to configuration module"
  (concat axltxl/emacs-config-dir (format "%s" name) ".el"))

(defun axltxl/config-load (name)
  "Load configuration module"
  (load-file (axltxl/config-get-file name)))

(defun axltxl/config-restart ()
  "Command to reload main configuration"
  (interactive)
  (load-file axltxl/emacs-init-file))

(defun axltxl/init-edit ()
  "Edit init.el configuration file"
  (interactive)
  (find-file axltxl/emacs-init-file))

(defun axltxl/config-edit ()
  "Edit configuration module file"
  (interactive)
  (let '(layer-file (concat axltxl/emacs-config-dir (read-string "Layer name: ") ".el"))
    (if (file-exists-p layer-file)
      (find-file layer-file)
      (message "Layer '%s' does not exist!" layer-file))))

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

;; Install default package
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
  (setq use-package-always-ensure t)
  (setq use-package-verbose t))

(setq axltxl/config-modules
  '(
    ;; The very basics
    essentials
    which-key

    ;; The evil section
    evil-mode

    ;; Basic workflow
    window-mgmt
    buffer-mgmt

    ;; Text editing must haves
    text
    toggles ; UI toggle switches

    ;; Look and feel
    look-and-feel

    ;; My toolbox
    org
    projectile
    ivy
    git
    neotree

    ;; Support for different file types
    yaml

    ;; Our lovely home screen
    splash
    ))

;; Take it from here and load config files
;; ---------------------------------------
(dolist (cfg axltxl/config-modules) (axltxl/config-load cfg))

;; Load custom-set-variables file
(load custom-file 'noerror)
