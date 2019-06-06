;; My minimalist emacs config
;; My attempt to take what I consider the best from spacemacs
;; and replicate it onto a way slimmed-down minimalist config that
;; is especially made for my needs
;; (this is still a work in progress)
;; STATE: experimental
;; -----------------------------

;; Essentials
;; ----------

;; Main constants
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

     ;; The evil section
     "evil-mode"

     ;; Basic workflow
     "window-mgmt"
     "buffer-mgmt"

    ;; Text editing must haves
    "text"
    "toggles" ; UI toggle switches

    ;; Look and feel
    "look-and-feel"

    ;; My toolbox
    "org"
    "projectile"
    "helm"
    "git"
    "neotree"

    ;; Support for different file types
     "yaml"

    ;; Our lovely home screen
    "splash"
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
       ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "a8c210aa94c4eae642a34aaf1c5c0552855dfca2153fa6dd23f3031ce19453d4" "43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "9954ed41d89d2dcf601c8e7499b6bb2778180bfcaeb7cdfc648078b8e05348c6" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
  '(package-selected-packages
     (quote
       (yaml-mode nlinum org-bullets dashboard neotree org-agenda org-capture org-projectile org-journal org-mode avy highlight-indent-guides magit helm-projectile projectile evil-nerd-commenter git-gutter evil-surround evil-unimpaired doom-modeline autopair editorconfig helm-config evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
