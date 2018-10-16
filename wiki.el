(defvar top-level-headings '(math
                             (applied math)
                             statistics
                             
                             ))


;; (defun _region-to-file (beg end)
;;          (interactive "r")
;;          (let ((region (region-to-string beg end)))
;;            (find-file-other-window region)))




(defun region-to-wiki (b e)
      (interactive "r") 
  (let ((beg b)
        (end e)
        (filename (region-to-string b e)))
    (progn
      (kill-region beg end)
      (progn
        (insert "[[file:./")
        (yank)
        (insert "][")
        (yank)
        (insert "]]"))
      (find-file-other-window filename)
      (yas-expand-snippet (yas-lookup-snippet "header-org" 'org-mode))
      (lispy-yank)
      (auto-fill-mode))))


(define-minor-mode wiki-mode
  "Make editing bear notes smoother."
  :lighter " wiki"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-c b r") 'region-to-wiki)
            map)
  (make-local-variable 'foo-count))


(defun wiki-mode-init ()
  "Initialize the current buffer for wiki'ing."
  (set-input-method 'TeX))

(add-hook 'wiki-mode-hook 'wiki-mode-init)


(provide 'wiki.el)
