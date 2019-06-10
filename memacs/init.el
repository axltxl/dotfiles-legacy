;; My minimalist emacs config
;; My attempt to take what I consider the best from spacemacs
;; and replicate it onto a way slimmed-down minimalist config that
;; is especially made for my needs
;; (this is still a work in progress)
;; STATE: experimental
;; -----------------------------

;; Setup MELPA as the package repo
(require 'package)
(package-initialize)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

;; use-package is the only package that is needed at init time.
;; It's awesome and it will take care of everything from this point onwards.
(when (not (package-installed-p 'use-package))
    (package-refresh-contents)
    (package-install 'use-package))

(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t)
  (setq use-package-verbose t))

(require 'org)
(with-eval-after-load 'org
  (org-babel-load-file (concat user-emacs-directory "README.org")))
