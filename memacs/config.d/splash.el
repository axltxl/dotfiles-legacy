;;;;;;;;;;;;;;;;;;
;; Splash
;;;;;;;;;;;;;;;;;;

;; Switch to scratch directly
;; (temporary)
(setq inhibit-splash-screen t)

(random t) ; seed random number

;; Select a randomimage from splash folder
(setq axltxl/emacs-splash-dir
  (concat user-emacs-directory "splash"))
(setq axltxl/splash-image
  (format "%s/splash%s.png" axltxl/emacs-splash-dir
      (random (- (length (directory-files axltxl/emacs-splash-dir nil "\.png$")) 1))))

;; A random dashboard title goes as well
(setq axltxl/emacs-dashboard-titles
  [ "You rock today!"
    "\"Royale with cheese\" - Pulp Fiction, 1994."
    "\"Only dead fish go with the flow\" - Andy Hunt. Pragmatic Thinking and Learning."])

;; The awesome emacs dashboard
;; https://github.com/emacs-dashboard/emacs-dashboard
(use-package dashboard
  :after general ; this one has key bindings
  :demand t
  :config
  ;; Set the title
  (setq dashboard-banner-logo-title
    (aref axltxl/emacs-dashboard-titles
      (random (- (length axltxl/emacs-dashboard-titles) 1))))

  ;; Set the banner images
  (setq dashboard-startup-banner axltxl/splash-image)

  ;; Content is not centered by default.
  (setq dashboard-center-content t)

  ;; Set up agenda items from org-mode
  (add-to-list 'dashboard-items '(agenda) t)
  (setq show-week-agenda-p t)

  ;; Widgets
  (setq dashboard-set-file-icons t)
  (setq dashboard-items '((recents  . 5)
                          (projects . 5)
                          (agenda . 5)))

  ;; show info about the packages loaded and the init time
  (setq dashboard-set-init-info t)

  ;; No footer
  (setq dashboard-set-footer nil)

  ;; Start it up
  (dashboard-setup-startup-hook))
