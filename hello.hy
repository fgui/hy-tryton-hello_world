(import [trytond.pool [PoolMeta]])
(import [trytond.model [fields]])
(setv --all-- ["Hello"])

(defclass Hello [:metaclass PoolMeta]
  "Hello World with surname"
  [--name-- "hello"
   surname (.Char fields "Surname")]

  (defn get-greeting [self name]
    (setv su (super Hello self))
    (setv res (.get_greeting su name))
    (if self.surname
      (+ res " " self.surname)
      res)))
