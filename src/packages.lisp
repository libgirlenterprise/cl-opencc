(in-package #:cl-user)
(defpackage #:cl-opencc-ffi
  (:use #:cl
        #:cffi))
(in-package #:cl-opencc-ffi)

(eval-when (:load-toplevel)
  (define-foreign-library libopencc
    (t (:default "libopencc")))

  (unless (foreign-library-loaded-p 'libopencc)
    (use-foreign-library libopencc)))
