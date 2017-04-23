;; None tail recursive
(defn size [v]
  (if (empty? v)
    0
    (inc (size (rest v)))))
(size [1 2 3])

;; tail recursive version
(defn size [v]
  (loop [l v, c 0]
    (if (empty? l)
      c
      (recur (rest l) (inc c)))))
(size [1 2 3])

(every? number? [1 2 3 :four]) ;; false
(some nil? [1 2 nil]) ;; true
(not-every? odd? [1 3 5]) ;; false
(not-any? number? [:one :two :three]) ;; true

(def words ["luke" "chewie" "han" "lando"])
(filter (fn [word] (> (count word) 4)) words)

;; List comprehension
(def colors ["red" "blue"])
(def toys ["block" "car"])

(for [x colors] (str "I like " x))
(for [x colors, y toys] (str "I like " x " " y "s"))

(defn small-word? [w] (< (count w) 4))
(for [x colors, y toys, :when (small-word? y)] (str "I like " x " " y "s"))

(reduce + [1 2 3 4])

(take 20 (interleave (cycle (range 2) (range 3))))

(defn fib-pair [[a b]] [b (+ a b)])
(take 5 (map first (iterate fib-pair [1 1])))

(defn factorial [n] (apply * (take n (iterate int 1))))
(factorial 5)

;; unless
(defmacro unless [test body]
  (list 'if (list 'not test) body ))
(macroexpand '(unless condition body))
