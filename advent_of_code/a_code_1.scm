(use-modules (ice-9 rdelim))

;; required calculation
(define (required-fuel mass)
  (- (floor (/ mass 3)) 2))


;; provided data that needs to be calculated
(define filepath "/home/flex/personal/04_programming/scheme-examples/advent_of_code/a_code_data/input_data_ass1.txt")
