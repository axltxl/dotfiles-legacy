;;;;;;;;;;;;;;;;;;
;; Org mode
;;;;;;;;;;;;;;;;;;

;; Basic constants go first
(defconst axltxl/org-home "~/org/")
(defconst axltxl/org-todos-dir (concat axltxl/org-home "TODOs/"))
(defconst axltxl/org-journal-dir
  (concat axltxl/org-home "journal/"))

;; org-capture templates directory
(defconst org-tpl-dir (concat axltxl/org-home "templates/"))
(defconst org-tpl-private-dir (concat org-tpl-dir "private/"))

;; org-capture TODO templates locations
(defconst org-tpl-tasks-dir (concat org-tpl-dir "tasks/"))
(defconst org-tpl-tasks-private-dir (concat org-tpl-private-dir "tasks/"))

;; org-capture templates locations for org-journal
(defconst org-tpl-journal-dir (concat org-tpl-dir "journal/"))
(defconst org-tpl-journal-private-dir (concat org-tpl-private-dir "journal/"))

;; Org Mode
;;;;;;;;;;;
(use-package org
  :demand t
  :config

  ;; todo lists keywords
  (setq org-todo-keywords
      '((sequence "TODO" "|" "DONE" "CANCELLED"))))

;; utf-8 fancy org bullets
;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package org-bullets
  :after org
  :init
  ;; Custom bullets
  (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))

  :config
  ;; Turn it on on org-mode
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; org-journal
;;;;;;;;;;;;;;
(use-package org-journal
  :after org
  :init
  (setq
    org-journal-dir axltxl/org-journal-dir
    org-journal-file-format "%Y%m%d"
    org-journal-date-prefix "#+TITLE: "
    org-journal-date-format "%Y-%m-%d"
    org-journal-time-prefix "* "
    org-journal-time-format "%H:%M:%S => "
  ))

;; Prefixed Key Bindings for org-agenda
(axltxl/define-key "oja" 'org-journal-new-entry)

;; org-agenda
;;;;;;;;;;;;;
(use-package org-agenda
  :after org
  :ensure nil ; This is vanilla org-mode

  ;; Prefixed Key Bindings
  :bind (
    :map org-agenda-mode-map
    ("j" . org-agenda-next-line)
    ("k" . org-agenda-previous-line))

  :config
  ;; Initial agenda files
  (setq org-agenda-files `(,(concat axltxl/org-todos-dir "tasks.org"))))

;; Prefixed Key Bindings for org-agenda
(axltxl/define-key "oaa" 'org-agenda)

;; org-capture
;;;;;;;;;;;;;;
(use-package org-capture
  :after org
  :ensure nil
  :config
    ;; Automatically align all tags before finalizing capture
    ;; https://www.reddit.com/r/emacs/comments/93990v/automatically_add_tag_to_capture_in_org_mode/
    (add-hook 'org-capture-before-finalize-hook #'org-align-all-tags)

    ;; org-capture templates
    ;; https://orgmode.org/manual/Capture-templates.html#Capture-templates
    (setq org-capture-templates
      ;; Journal entries
      `(
      ("j" "journal/entry" entry
        (function org-journal-find-location)
        (file ,(concat org-tpl-journal-dir "generic.org")))

      ("a" "journal/action" entry
        (function org-journal-find-location)
        (file ,(concat org-tpl-journal-dir "actions/generic.org")))

      ("e" "journal/event" entry
        (function org-journal-find-location)
        (file ,(concat org-tpl-journal-dir "events/generic.org")))

      ("t" "task" entry
        (file ,(concat axltxl/org-todos-dir "tasks.org"))
        (file ,(concat org-tpl-tasks-dir "generic.org")))

      ("G" "journal/entry/github" entry
        (function org-journal-find-location)
        (file ,(concat org-tpl-journal-private-dir "events/github.org")))

      ("A" "task/action" entry
        (file ,(concat axltxl/org-todos-dir "tasks.org"))
        (file ,(concat org-tpl-tasks-dir "actions/generic.org")))

      ("g" "task/action/github" entry
        (file ,(concat axltxl/org-todos-dir "tasks.org"))
        (file ,(concat org-tpl-journal-private-dir "events/github.org"))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-capture + org-journal
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun org-journal-find-location ()
  ;; Open today's journal, but specify a non-nil prefix argument in order to
  ;; inhibit inserting the heading; org-capture will insert the heading.
  (org-journal-new-entry t)
  ;; Position point on the journal's top-level heading so that org-capture
  ;; will add the new entry as a child entry.
  (goto-char (point-min)))

;;;; Prefixed Key Bindings for org-capture
(axltxl/define-key "oc" 'org-capture)

;; org-projectile
;;;;;;;;;;;;;;;;;

(use-package org-projectile
  :after (org projectile)
  :config
  ;; All project TODOs in one single file
  (setq org-projectile-projects-file (concat axltxl/org-home "projects.org"))

  ;; org-projectile + org-agenda
  (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))

;; org-projectile + org-capture
  (push (org-projectile-project-todo-entry) org-capture-templates))

;; go to TODOs file for project
(defun org-projectile/goto-todos ()
  (interactive)
  (org-projectile-goto-location-for-project (projectile-project-name)))

;; Key bindings for org-projectile
(axltxl/define-key "po" 'org-projectile/goto-todos)
