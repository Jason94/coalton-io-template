(cl:in-package :cl-user)

(defpackage #:coalton-io-template
  (:use
   #:coalton
   #:coalton-prelude
   #:io/simple-io)
  (:local-nicknames
   (#:term #:io/term))
  (:export #:greeting #:main #:run))

(in-package #:coalton-io-template)

(named-readtables:in-readtable coalton:coalton)

(coalton-toplevel
  (declare greeting (Unit -> String))
  (define (greeting)
    "Hello, World!")

  (declare main (IO Unit))
  (define main
    (do
     (term:write-line (greeting)))))

(cl:defun run ()
  "Run the template program."
  (run-io! main))
