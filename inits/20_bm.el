(require 'bm)
(setq-default bm-buffer-persistence nil)
(setq bm-restore-repository-on-load t)
(add-hook 'find-file-hooks 'bm-buffer-restore)
(add-hook 'kill-buffer-save 'bm-buffer-save)
(add-hook 'after-save-hook 'bm-buffer-save)
(add-hook 'after-revert-hook 'bm-buffer-restore)
(add-hook 'vc-before-checkin-hook 'bm-buffer-save)
(global-set-key (kbd "M-SPC") 'bm-toggle)
(global-set-key (kbd "M-[") 'bm-previous)
(global-set-key (kbd "M-]") 'bm-next)
