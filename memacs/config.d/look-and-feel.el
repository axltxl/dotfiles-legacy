;;;;;;;;;;;;;;;;;;;;;;;;;
;; Look-And-Feel settings
;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set font
;; see: https://www.gnu.org/software/emacs/manual/html_node/emacs/Fonts.html
(add-to-list 'default-frame-alist
  '(font . "Inconsolata LGC-11:width=normal:weight=demibold"))

;; Theme settings
;;;;;;;;;;;;;;;;;

;; Light theme
(defconst axltxl/theme-light 'doom-solarized-light)

;; Dark theme (default)
(defconst axltxl/theme-dark  'doom-dracula)
(defconst axltxl/theme-default axltxl/theme-dark)

;; This will keep the current set theme from changing
;; across configuration reloads via axltxl/config-restart
;; command
(if (not (boundp 'axltxl/theme-current))
  (setq axltxl/theme-current axltxl/theme-default))

(defun axltxl/toggle-theme ()
  "Toggle current theme"
  (interactive)
  (if (eq axltxl/theme-current axltxl/theme-dark)
    (setq axltxl/theme-current axltxl/theme-light)
    (setq axltxl/theme-current axltxl/theme-dark))
  (load-theme axltxl/theme-current t))

;; Key binding for axltxl/toggle-theme
(axltxl/define-key "tt" 'axltxl/toggle-theme)

;; Set the real shit
(use-package doom-themes
    :demand t
    :config
    (load-theme axltxl/theme-current t))

;; Set the real modeline now :)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; doom-modeline specific config
(use-package doom-modeline
  :demand t
  :after doom-themes
  :config

  ;; How tall the mode-line should be. It's only respected in GUI.
  ;; If the actual char height is larger, it respects the actual height.
  (setq doom-modeline-height 32)

  ;; How wide the mode-line bar should be. It's only respected in GUI.
  (setq doom-modeline-bar-width 3)

  ;; Determines the style used by `doom-modeline-buffer-file-name'.
  ;;
  ;; Given ~/Projects/FOSS/emacs/lisp/comint.el
  ;;   truncate-upto-project => ~/P/F/emacs/lisp/comint.el
  ;;   truncate-from-project => ~/Projects/FOSS/emacs/l/comint.el
  ;;   truncate-with-project => emacs/l/comint.el
  ;;   truncate-except-project => ~/P/F/emacs/l/comint.el
  ;;   truncate-upto-root => ~/P/F/e/lisp/comint.el
  ;;   truncate-all => ~/P/F/e/l/comint.el
  ;;   relative-from-project => emacs/lisp/comint.el
  ;;   relative-to-project => lisp/comint.el
  ;;   file-name => comint.el
  ;;   buffer-name => comint.el<2> (uniquify buffer name)
  ;;
  ;; If you are expereicing the laggy issue, especially while editing remote files
  ;; with tramp, please try `file-name' style.
  ;; Please refer to https://github.com/bbatsov/projectile/issues/657.
  (setq doom-modeline-buffer-file-name-style 'truncate-except-project)

  ;; Whether display icons in mode-line or not.
  (setq doom-modeline-icon t)

  ;; Whether display the icon for major mode. It respects `doom-modeline-icon'.
  (setq doom-modeline-major-mode-icon t)

  ;; Whether display color icons for `major-mode'. It respects
  ;; `doom-modeline-icon' and `all-the-icons-color-icons'.
  (setq doom-modeline-major-mode-color-icon t)

  ;; Whether display icons for buffer states. It respects `doom-modeline-icon'.
  (setq doom-modeline-buffer-state-icon t)

  ;; Whether display buffer modification icon. It respects `doom-modeline-icon'
  ;; and `doom-modeline-buffer-state-icon'.
  (setq doom-modeline-buffer-modification-icon t)

  ;; Whether display minor modes in mode-line or not.
  (setq doom-modeline-minor-modes nil)

  ;; If non-nil, a word count will be added to the selection-info modeline segment.
  (setq doom-modeline-enable-word-count nil)

  ;; Whether display buffer encoding.
  (setq doom-modeline-buffer-encoding t)

  ;; Whether display indentation information.
  (setq doom-modeline-indent-info nil)

  ;; If non-nil, only display one number for checker information if applicable.
  (setq doom-modeline-checker-simple-format nil)

  ;; The maximum displayed length of the branch name of version control.
  (setq doom-modeline-vcs-max-length 12)

  ;; Whether display perspective name or not. Non-nil to display in mode-line.
  (setq doom-modeline-persp-name t)

  ;; Whether display `lsp' state or not. Non-nil to display in mode-line.
  (setq doom-modeline-lsp t)

  ;; Whether display github notifications or not. Requires `ghub` package.
  (setq doom-modeline-github nil)

  ;; The interval of checking github.
  (setq doom-modeline-github-interval (* 30 60))

  ;; Whether display environment version or not
  (setq doom-modeline-env-version t)
  ;; Or for individual languages
  (setq doom-modeline-env-enable-python t)
  (setq doom-modeline-env-enable-ruby t)
  (setq doom-modeline-env-enable-perl t)
  (setq doom-modeline-env-enable-go t)
  (setq doom-modeline-env-enable-elixir t)
  (setq doom-modeline-env-enable-rust t)

  ;; Change the executables to use for the language version string
  (setq doom-modeline-env-python-executable "python")
  (setq doom-modeline-env-ruby-executable "ruby")
  (setq doom-modeline-env-perl-executable "perl")
  (setq doom-modeline-env-go-executable "go")
  (setq doom-modeline-env-elixir-executable "iex")
  (setq doom-modeline-env-rust-executable "rustc")

  ;; Whether display mu4e notifications or not. Requires `mu4e-alert' package.
  (setq doom-modeline-mu4e nil)

  ;; Whether display irc notifications or not. Requires `circe' package.
  (setq doom-modeline-irc nil)

  ;; Function to stylize the irc buffer names.
  (setq doom-modeline-irc-stylize 'identity)

  ;; Let the awesomeness begin :)
  (doom-modeline-mode 1)
)
