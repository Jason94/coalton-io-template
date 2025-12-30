(defpackage #:coalton-io-template/tests
  (:use #:coalton #:coalton-prelude #:coalton-testing)
  (:local-nicknames (#:app #:coalton-io-template))
  (:export #:run-tests))

(in-package #:coalton-io-template/tests)

(named-readtables:in-readtable coalton:coalton)

(fiasco:define-test-package #:coalton-io-template/tests-fiasco)
(coalton-fiasco-init #:coalton-io-template/tests-fiasco)

(define-test test-greeting ()
  (is (== "Hello, World!" (app:greeting))))

(cl:defun run-tests ()
  (fiasco:run-package-tests
   :packages '(#:coalton-io-template/tests-fiasco)
   :interactive cl:t))
