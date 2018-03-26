(defpackage #:cl-opencc
  (:use #:cl))
(in-package #:cl-opencc)

(defmacro defconvert (name config docstring)
  `(export (defun ,name (string)
             ,docstring
             (let ((handle (cl-opencc-ffi:opencc-open ,config))
                   (length (* 4 (length string))))
               (prog1
                   (cffi:with-foreign-string (i string)
                                             (cl-opencc-ffi:opencc-convert-utf-8 handle i length))
                 (cl-opencc-ffi:opencc-close handle))))))

(defconvert hongKongToSimplified "hk2s.json" "Hong Kong to Simplified Chinese")
(defconvert simplifiedToHongKong "s2hk.json" "Simplified Chinese to Hong Kong")
(defconvert simplifiedToTraditional "s2t.json" "Simplified Chinese to Traditional Chinese")
(defconvert simplifiedToTaiwan "s2tw.json" "Simplified Chinese to Taiwan")
(defconvert simplifiedToTaiwanWithPhrases "s2twp.json" "Simplified Chinese to Taiwan with phrases")
(defconvert traditionalToHongKong "t2hk.json" "Traditional Chinese to Hong Kong")
(defconvert traditionalToSimplified "t2s.json" "Traditional Chinese to Simplified Chinese")
(defconvert traditionalToTaiwan	"t2tw.json" "Traditional Chinese to Taiwan")
(defconvert taiwanToSimplified	"tw2s.json" "Taiwan to Simplified Chinese")
(defconvert taiwanToSimplifiedWithPhrases "tw2sp" "Taiwan to Simplified Chinese with phrases")


