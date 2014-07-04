(require 'cask "~/.cask/cask.el")
(cask-initialize)

(let ((dir (expand-file-name "~/.emacs.d/site-lisp")))
  (if (member dir load-path) nil
    (setq load-path (cons dir load-path))
    (let ((default-directory dir))
      (load (expand-file-name "subdirs.el") t t t))))
(let ((dir (expand-file-name "~/.emacs.d/auto-install")))
  (if (member dir load-path) nil
    (setq load-path (cons dir load-path))
    (let ((default-directory dir))
      (load (expand-file-name "subdirs.el") t t t))))

					;elispと設定ファイルのディレクトリをload-pathに追加
					;(setq load-path (cons "~/.lisp" load-path))
(setq load-path
      (cons
       (expand-file-name "~/.lisp")
       (cons
        (expand-file-name "~/.emacs.d/auto-install/")
        (cons
         (expand-file-name "~/.emacs.d/site-lisp/")
         (cons
          (expand-file-name "~/.emacs.d/conf/") load-path)))))
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)             ; 互換性確保

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits") ; 設定ファイルがあるディレクトリを指定
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-search-threshold 1000)
 '(custom-enabled-themes (quote (ample-zen)))
 '(custom-safe-themes (quote ("2b5aa66b7d5be41b18cc67f3286ae664134b95ccc4a86c9339c886dfd736132d" "6cfe5b2f818c7b52723f3e121d1157cf9d95ed8923dbc1b47f392da80ef7495d" "e9a1226ffed627ec58294d77c62aa9561ec5f42309a1f7a2423c6227e34e3581" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "211bb9b24001d066a646809727efb9c9a2665c270c753aa125bace5e899cb523" "7b615ef97b02118846cbec0df7b9fe82e7165e32229667400819f3879f181556" "fea480346576495642473d0ac09727faff39f2bf5602c91eab79b38875228c4a" "6cf0e8d082a890e94e4423fc9e222beefdbacee6210602524b7c84d207a5dfb5" "7567002f91d951ccf212cbb208274e081436dfccc836649085ee7300f25a5059" "ccac39caaec60f7d9827b79243171bf89a8e71b0d69ef2e4ea62053417dc1f6c" "d0654aebee372ea638775f4f9f64b3e80ea0462dfd4388637b798142ba5020d0" default)))
 '(display-time-mode t)
 '(foreign-regexp/regexp-type (quote perl))
 '(reb-re-syntax (quote foreign-regexp))
 '(safe-local-variable-values (quote ((clmemo-mode . t))))
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(yas-prompt-functions (quote (my-yas/prompt))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
