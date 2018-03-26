(defsystem "cl-opencc"
  :version "0.1"
  :license "Apache License, Version 2.0"
  :depends-on ("cffi")
  :components ((:module "src"
                :components
                ((:file "packages")
                 (:file "cl-opencc-cffi" :depends-on ("packages"))
                 (:file "wrapper" :depends-on ("cl-opencc-cffi")))))
  :description "Common Lisp bindings for opencc"
  :in-order-to ((test-op (test-op "cl-opencc/test"))))

(defsystem "cl-opencc/test"
  :depends-on ("cl-opencc"
               "prove")
  :components ((:module "t"
                :components
                ((:test-file "cl-opencc"))))
  :description "Test system for cl-opencc"

  :defsystem-depends-on ("prove-asdf")
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
