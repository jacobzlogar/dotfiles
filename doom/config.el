;; general stuff
(setq doom-font (font-spec :family "Fira Code Retina" :size 16))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; lsp config
;; (setq lsp-signature-render-documentation nil)
(setq lsp-ui-doc-enable nil)

(after! lsp-ui-sideline-mode-hook
  (setq lsp-ui-sideline-toggle-symbols-info t))
(after! lsp-ui
  (setq lsp-headerline-breadcrumb-enable t))

;; (setq lsp-ui-doc-enable nil)
(setq lsp-ui-sideline-toggle-symbols-info t)

;; maps
(map! :leader
      "d d" #'project-dired
      "t t" #'lsp-workspace-restart
      "o N" #'magit-open-repo
      "c [" #'flycheck-list-errors)

;; open git links in browser
(defun parse-url (url)
  "convert a git remote location as a HTTP URL"
  (if (string-match "^http" url)
      url
    (replace-regexp-in-string "\\(.*\\)@\\(.*\\):\\(.*\\)\\(\\.git?\\)"
                              "https://\\2/\\3"
                              url)))
(defun magit-open-repo ()
  "open remote repo URL"
  (interactive)
  (let ((url (magit-get "remote" "origin" "url")))
    (progn
      (browse-url (parse-url url))
      (message "opening repo %s" url))))


(add-hook 'magit-mode-hook
          (lambda ()
            (local-set-key (kbd "o") 'magit-open-repo)))
