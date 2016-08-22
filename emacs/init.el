;;; init.el -- My Emacs configuration
;-*-Emacs-Lisp-*-

;;; Commentary:
;;
;; I have nothing substantial to say here.
;;
;;; Code:

(tool-bar-mode -1)
(show-paren-mode 1)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Also add all directories within "lisp"
;; I use this for packages I'm actively working on, mostly.
(let ((files (directory-files-and-attributes "~/.emacs.d/lisp" t)))
  (dolist (file files)
    (let ((filename (car file))
          (dir (nth 1 file)))
      (when (and dir
                 (not (string-suffix-p "." filename)))
(add-to-list 'load-path (car file))))))

(require 'init-utils)
(require 'init-elpa)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
  

(use-package gruvbox-theme)
(load-theme 'gruvbox t)

(eval-when-compile
    (require 'use-package))

;; Interface configurations

(use-package linum-relative
    :ensure t
    :config
    (linum-mode)
    (linum-relative-global-mode)
    (setq linum-relative-current-symbol "")
  )

(require 'init-evil)
(require 'init-powerline)

;; Various programming language

(require 'init-haskell)

;; Other packages

(use-package magit
  :ensure t
  :defer t
  :config
  (setq magit-branch-arguments nil)
  (setq magit-push-always-verify nil)
  (setq magit-last-seen-setup-instructions "1.4.0")
(magit-define-popup-switch 'magit-log-popup ?f "first parent" "--first-parent"))

