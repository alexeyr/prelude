;; My personal customizations

;; Re-enable arrow keys
(setq prelude-guru nil)

;; set a default font
;; borrowed from http://www.emacswiki.org/emacs/SetFonts
(defun font-candidate (&rest fonts)
  "Return the first available font."
  (--first (find-font (font-spec :family it)) fonts))

(setq desired-font (font-candidate "Consolas" "Droid Sans Mono Slashed" "DejaVu Sans Mono"))

(when desired-font
  (set-face-attribute 'default nil :family desired-font))

;; Restore last session on startup
(desktop-save-mode 1)

;; restore menu
(menu-bar-mode 1)
