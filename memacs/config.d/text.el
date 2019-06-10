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

;; No tabs
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

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
  :after general
  :load-path "local"
  :config
  (evil-unimpaired-mode))

;; vim-surround in emacs :)
(use-package evil-surround
  :after general
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

;;comment things a la nerd commenter
(use-package evil-nerd-commenter
  :after general
  :config
  (evilnc-default-hotkeys t t))

(axltxl/define-key ";" 'evilnc-comment-operator)

;; emacs + easymotion = avy
(use-package avy)
(axltxl/define-key "jw" 'avy-goto-word-1)
(axltxl/define-key "jl" 'avy-goto-line)

;; Text scaling
(axltxl/define-key "/" 'text-scale-increase)
(axltxl/define-key "." 'text-scale-decrease)

;; Quite useful to know where a buffer ends
(setq-default indicate-empty-lines t)

;; Remove trailing whitespace upon saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Always write a newline at the end of a file
(setq-default require-final-newline t)

;; no mouse !!!
;; https://github.com/purcell/disable-mouse
(use-package disable-mouse
  :after (evil general)
  :config
  ;; Disable mouse globally
  (global-disable-mouse-mode)

  ;; This is for evil mode bindings
  (mapc #'disable-mouse-in-keymap
    (list evil-motion-state-map
          evil-normal-state-map
          evil-visual-state-map
          evil-insert-state-map)))
