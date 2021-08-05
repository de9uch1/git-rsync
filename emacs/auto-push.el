;; -*- mode: emacs-lisp -*-

(defun git-rsync-push ()
  "Push the git repository via rsync."
  (interactive)
  (if (executable-find "git-rsync")
      (call-process-shell-command "git rsync push &")
    (message "git-rsync not found.")))

(defvar auto-git-rsync nil)

(defun toggle-auto-git-rsync ()
  "Toggle whether git-rsync is automatically called when a file is saved."
  (interactive)
  (if auto-git-rsync
      (progn
        (remove-hook 'after-save-hook #'git-rsync-push t)
        (setq auto-git-rsync nil)
        (message "auto-git-rsync is disabled."))
    (progn
      (add-hook 'after-save-hook #'git-rsync-push nil t)
      (setq auto-git-rsync t)
      (message "auto-git-rsync is enabled."))))
