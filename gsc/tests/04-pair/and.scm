(declare (extended-bindings))

(define x1 '())
(define x2 '(1))

(define (test2 x y)
  (println (and x y))
  (println (if (and x y) 11 22))
  (println (and (##not x) y))
  (println (if (and (##not x) y) 11 22))
  (println (and x (##not y)))
  (println (if (and x (##not y)) 11 22))
  (println (and (##not x) (##not y)))
  (println (if (and (##not x) (##not y)) 11 22))
  (println (##not (and x y)))
  (println (if (##not (and x y)) 11 22))
  (println (##not (and (##not x) y)))
  (println (if (##not (and (##not x) y)) 11 22))
  (println (##not (and x (##not y))))
  (println (if (##not (and x (##not y))) 11 22))
  (println (##not (and (##not x) (##not y))))
  (println (if (##not (and (##not x) (##not y))) 11 22)))

(define (test x)
  (test2 x x1)
  (test2 x x2))

(test x1)
(test x2)