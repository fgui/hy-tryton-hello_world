(import [trytond.pool [PoolMeta]])
(import [trytond.model [fields]])
(def --all-- ["Hello"])

(defclass Hello []
  "Hello World with surname"
  [--name-- "hello"
   --metaclass-- PoolMeta
   surname (.Char fields "Surname")]

  (defn get-greeting [self name]
    (setv su (super Hello self))
    (setv res (.get_greeting su name))
    (if self.surname
      (+ res " " self.surname)
      res)))

