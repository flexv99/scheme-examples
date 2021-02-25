(use-modules (ice-9 rdelim))

(define (read-line filename)
  (let ((port (open-input-file filename)))
    (display (read-line port)) (newline) (close-port port)))
