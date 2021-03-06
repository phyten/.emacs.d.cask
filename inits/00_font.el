;; font

;; font設定

;; 以下が Mac 用のフォント設定
(when (memq window-system '(mac ns))
  (global-set-key [s-mouse-1] 'browse-url-at-mouse)
  (let* ((size 14)
	 (jpfont "Hiragino Maru Gothic ProN")
	 (asciifont "Monaco")
	 (h (* size 10)))
    (set-face-attribute 'default nil :family asciifont :height h)
    (set-fontset-font t 'katakana-jisx0201 jpfont)
    (set-fontset-font t 'japanese-jisx0208 jpfont)
    (set-fontset-font t 'japanese-jisx0212 jpfont)
    (set-fontset-font t 'japanese-jisx0213-1 jpfont)
    (set-fontset-font t 'japanese-jisx0213-2 jpfont)
    (set-fontset-font t '(#x0080 . #x024F) asciifont))
  (setq face-font-rescale-alist
	'(("^-apple-hiragino.*" . 1.2)
	  (".*-Hiragino Maru Gothic ProN-.*" . 1.2)
	  (".*osaka-bold.*" . 1.2)
	  (".*osaka-medium.*" . 1.2)
	  (".*courier-bold-.*-mac-roman" . 1.0)
	  (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
	  (".*monaco-bold-.*-mac-roman" . 0.9)
	  ("-cdac$" . 1.3)))
  ;; C-x 5 2 で新しいフレームを作ったときに同じフォントを使う
  (setq frame-inherited-parameters '(font tool-bar-lines)))

;; (if (eq window-system 'ns)
;;     (progn
;;       (set-face-attribute 'default nil
;;                           :family "monaco"
;;                           :height 150)
;;       (set-fontset-font nil
;;                         'japanese-jisx0208
;;                         (font-spec :family "Hiragino_Maru_Gothic_ProN"))

;;       ;; (set-fontset-font nil
;;       ;; 		   '(#x3040 . #x30ff)
;;       ;; 		   (font-spec :family "NfMotoyaCedar")
;;       ;;  )

;;       (setq face-font-rescale-alist
;;             '((".*monaco.*" . 1.0)
;;               (".*Hiragino_Maru_Gothic_ProN.*" . 1.2)
;;               ("-cdac$" . 1.2)))
;;       ))


;; フォント設定
;; (when (and window-system (= emacs-major-version 23))
;;   (create-fontset-from-ascii-font
;;    "-apple-monaco-medium-normal-normal-*-15-*" nil "hirakaku15")

;;   (set-default-font "fontset-hirakaku15")
;;   (add-to-list 'default-frame-alist '(font . "fontset-hirakaku15"))

;;   (set-fontset-font
;;    "fontset-hirakaku15"
;;    'japanese-jisx0208
;;    "-apple-hiragino_kaku_gothic_pro-medium-normal-normal-*-16-*-iso10646-1")

;;   (set-fontset-font
;;    "fontset-hirakaku15"
;;    'jisx0201
;;    "-apple-hiragino_kaku_gothic_pro-medium-normal-normal-*-16-*-iso10646-1")

;;   (set-fontset-font
;;    "fontset-hirakaku15"
;;    'japanese-jisx0215
;;    "-apple-hiragino_kaku_gothic_pro-medium-normal-normal-*-16-*-iso10646-1")

;;   (set-fontset-font
;;    "fontset-hirakaku15"
;;    'katakana-jisx0201
;;    "-apple-hiragino_kaku_gothic_pro-medium-normal-normal-*-16-*-iso10646-1"))


;; ;; font設定、Rictyを使用する)
;; (set-default-font "Ricty-18")
;; (add-to-list 'default-frame-alist '(font . "Ricty-18"))
;; ;; 日本語をヒラギノ角ゴProNにする
;; (set-fontset-font "fontset-default"
;;                   'japanese-jisx0208
;;                   '("Hiragino Maru Gothic ProN"))

;; (setq my-font "-*-*-medium-r-normal--14-*-*-*-*-*-fontset-hiramaru")
;; (setq fixed-width-use-QuickDraw-for-ascii t)
;; (setq mac-allow-anti-aliasing t)
;; (if (= emacs-major-version 22)
;;     (require 'carbon-font))
;; (set-default-font my-font)
;; (add-to-list 'default-frame-alist `(font . ,my-font))
;; (when (= emacs-major-version 23)
;;   (set-fontset-font
;;    (frame-parameter nil 'font)
;;    'japanese-jisx0208
;;    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;   (setq face-font-rescale-alist
;; 	'(("^-apple-hiragino.*" . 1.2)
;; 	  (".*osaka-bold.*" . 1.2)
;; 	  (".*osaka-medium.*" . 1.2)
;; 	  (".*courier-bold-.*-mac-roman" . 1.0)
;; 	  (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;; 	  (".*monaco-bold-.*-mac-roman" . 0.9)
;; 	  ("-cdac$" . 1.3))))

