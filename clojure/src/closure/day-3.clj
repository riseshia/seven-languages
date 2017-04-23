(ref "Attack of the Clones")
(def movie (ref "Star Wars"))
movie ;; return ref
(deref movie) ;; return value in ref
@movie ;; alias

;; ref is editable in transaction
(dosync (alter movie str ": The Empire Strikes Back"))
(dosync (ref-set movie "Star Wars: The Empire Strikes Back"))

;; atom is editable
(atom "Split at your own risk")
(def danger (atom "Split at your own risk.")) ;; set string
(reset! danger "Split with impunity") ;; edit string
danger
@danger

(def top-sellers (atom []))
(swap! top-sellers conj {:title "Seven Languages", :author "Tate"})
(swap! top-sellers conj {:title "Programming Clojure", :author "Halloway"})

;; With agent
(defn twice [x] (* 2 x))
(def tribbles (agent 1))
(send tribbles twice)
@tribbles ;; 2

(defn slow-twice [x]
  (do
    (Thread/sleep 5000)
    (* 2 x)))

(send tribbles slow-twices)
@tribbles ;; after 5 sec

;; Future in closure
(def finer-things (future (Thread/sleep 5000) "take time"))
@finer-things
