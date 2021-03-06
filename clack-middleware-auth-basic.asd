#|
  This file is a part of Clack package.
  URL: http://github.com/fukamachi/clack
  Copyright (c) 2011 Eitarow Fukamachi <e.arrows@gmail.com>

  Clack is freely distributable under the LLGPL License.
|#

#|
  Clack.Middleware.Auth.Basic - Basic Authentication Middleware.

  Author: Eitarow Fukamachi (e.arrows@gmail.com)
|#

(in-package :cl-user)
(defpackage clack-middleware-auth-basic-asd
  (:use :cl :asdf))
(in-package :clack-middleware-auth-basic-asd)

(defsystem clack-middleware-auth-basic
  :version "12.03"
  :author "Eitarow Fukamachi"
  :license "LLGPL"
  :depends-on (:clack
               :cl-syntax
               :cl-syntax-annot
               :cl-base64
               :split-sequence
               :cl-ppcre
               :arnesi)
  :components ((:file "src/contrib/middleware/auth/basic"))
  :description "Basic Authentication Middleware.")
