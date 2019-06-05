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
  [ "Hello world!"
    "You rock today!"
    "Because fuck you!, that's why!."
    "\"Royale with cheese\" - Pulp Fiction, 1994"
    ])

 ;; The awesome emacs dashboard
(use-package dashboard
  :config
  ;; Set the title
  (setq dashboard-banner-logo-title
    (aref axltxl/emacs-dashboard-titles
      (random (- (length axltxl/emacs-dashboard-titles) 1))))

  ;; Set the banner images
  (setq dashboard-startup-banner axltxl/splash-image)

  ;; Content is not centered by default.
  (setq dashboard-center-content t)

  ;; Start it up
  (dashboard-setup-startup-hook))
