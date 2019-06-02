;; Text editing that are must haves!
;; ---------------------------------

;; auto-complete
(use-package auto-complete
  :config
    (ac-config-default))

;; editorconfig is must have in my life!
(use-package editorconfig :config (editorconfig-mode 1))

;; Show line numbers
(global-display-line-numbers-mode)

;; No tabs
(setq tab-width 2
      indent-tabs-mode nil)

;; This makes sure that brace structures (), [], {}, etc.
;; are closed as soon as the opening character is typed.
(use-package autopair
    :config
    (autopair-global-mode)) ;; enable autopair in all buffers

;; no blinking cursor
 (blink-cursor-mode 0)

;; something like one of timpope's vim plugins (the name? I don't remember)
;; much better management of autosave temporary files
;; something like vim-easymotion would be super nice
