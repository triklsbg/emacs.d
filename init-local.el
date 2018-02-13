;;; file: init-local
;;
;; personal settings for purcell/.emacs.d

;;; Code:
;; (setq user-full-name "Th. Rikl"
;;       user-mail-address "trikl@online.de")

(global-flycheck-mo)
;; Personal Key Bindings
;; Mit der Ende/Home-Taste ans Datei-Ende/Anfang (default: Zeilenende)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-unset-key (kbd "C-M-v")) ; scroll-other-window only whith <M-next> resp <M-prior>
(global-unset-key (kbd "M-{"))   ; Absatzweise vorwärts/rückwärts springen
(global-unset-key (kbd "M-}"))   ; mit < { } > ist abgeschafft!
(global-unset-key (kbd "M-x"))   ; bound to <menu> and helm-M-x
(global-unset-key (kbd "C-x f")) ; disable "set fill-column" later on it is set to find-file

(global-set-key (kbd "<f11>") 'next-error)
(global-set-key (kbd "<S-f11>") 'previous-error)
                                        ;
(define-key help-map "s" 'info-lookup-symbol)
(define-key help-map "S" 'describe-syntax)

;; (use-package helpful
;;              :ensure t
;;              :bind (     ("C-c d v" . helpful-variable)
;;                          ("C-c d d" . helpful-at-point )
;;                          ("C-c d f" . helpful-callable ) ; functions and macros
;;                          ("C-c d F" . helpful-function ) ; only functions
;;                          ("C-c d c" . helpful-command )  ; interactive functions
;;                          ("C-c d k" . helpful-key )
;;                          ;; ([remap describe-variable] . helpful-variable)
;;                          ))
;; helpful does not cooperate nicely with helm so do not 'remap' it
;; to 'describe-...' usually called with C-h f,v,k etc.
;;


(provide 'init-local)
;;; init-local ends here
