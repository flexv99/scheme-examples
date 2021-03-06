(use-modules (ice-9 rdelim))

;; required calculation
(define (required-fuel mass)
  (- (floor (/ mass 3)) 2))

(define rocket-mass
  (lambda (file-name)
  (let ((source (open-input-file file-name)))
    (let kernel ((sum-so-far 0))
      (let ((nextval (read source)))
        (cond
          ((eof-object? nextval)
           (close-input-port source)
           sum-so-far)
          ((number? nextval)
           (kernel (+ (required-fuel nextval) sum-so-far)))
          (else
           (kernel sum-so-far))))))))



