(defsystem "coalton-io-template"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ("coalton-io" "named-readtables")
  :components ((:module "src"
                :serial t
                :components ((:file "main"))))
  :description "Template starter repo for coalton-io."
  :in-order-to ((test-op (test-op "coalton-io-template/tests"))))

(defsystem "coalton-io-template/tests"
  :license ""
  :depends-on ("coalton-io-template"
               "coalton/testing"
               "fiasco")
  :components ((:module "tests"
                :serial t
                :components ((:file "package"))))
  :description "Tests for coalton-io-template"
  :perform (test-op (op c)
             (symbol-call '#:coalton-io-template/tests '#:run-tests)))
