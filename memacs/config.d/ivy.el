;; ivy + (counsel and swiper)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package counsel
  :demand t
  :after (general projectile)

  ;; Configuration
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-height 10)

  ;; integration with projectile
  (setq projectile-completion-system 'ivy)

  ;; start it up
  (ivy-mode 1)

  ;; Key bindings for this layer
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;
  :general
  (:keymaps 'ivy-mode-map
    "M-j" 'ivy-next-line
    "M-k" 'ivy-previous-line
    "M-l" 'ivy-alt-done
    "M-h" 'ivy-backward-delete-char))

;; M-x
(axltxl/define-key "SPC" 'counsel-M-x)
