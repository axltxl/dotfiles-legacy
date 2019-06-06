;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Text editing that are must haves!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; auto-complete
(use-package auto-complete
  :config
  (ac-config-default))

;; editorconfig is must have in my life!
(use-package editorconfig
  :config
  (editorconfig-mode 1))

;; Show line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Toggle display line numbers
(axltxl/define-key "tl" 'display-line-numbers-mode)

;; No tabs
(setq tab-width 2)
(setq indent-tabs-mode nil)

;; This makes sure that brace structures (), [], {}, etc.
;; are closed as soon as the opening character is typed.
(use-package autopair
  :config
  (autopair-global-mode)) ;; enable autopair in all buffers

;; no blinking cursor
(blink-cursor-mode 0)

 ;; No wordwrap, no nothing, me no likey
(setq-default truncate-lines 1)

;; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;; unimpaired.vim in emacs! :)
(use-package evil-unimpaired
  :load-path "local"
  :config
  (evil-unimpaired-mode))

;; vim-surround in emacs :)
(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

;; highlight indentation
(use-package highlight-indent-guides
  :config
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (setq highlight-indent-guides-method 'fill))

;; backup files management
(setq backup-directory-alist
  `(("." . ,(concat user-emacs-directory "backups"))))

;; auto-save
(use-package real-auto-save
  :config
  ;; Enable auto-save on all programming modes
  (add-hook 'prog-mode-hook 'real-auto-save-mode)
  ;; Set auto-save interval
  (setq real-auto-save-interval 10))

;; comment things a la nerd commenter
;; FIXME doesn't work when trying to comment a single line ';;'
;; (use-package evil-nerd-commenter
;;   :config
;;   (evilnc-default-hotkeys t t))
;; (axltxl/define-key ";" 'evilnc-comment-operator)

;; emacs + easymotion = avy
(use-package avy)
(axltxl/define-key "jw" 'avy-goto-word-1)
(axltxl/define-key "jl" 'avy-goto-line)

;; Text scaling
(axltxl/define-key "/" 'text-scale-increase)
(axltxl/define-key "." 'text-scale-decrease)
