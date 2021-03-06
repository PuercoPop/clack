#|
  This file is a part of Clack package.
  URL: http://github.com/fukamachi/clack
  Copyright (c) 2011 Eitarow Fukamachi <e.arrows@gmail.com>

  Clack is freely distributable under the LLGPL License.
|#

#|
  Testing Clack.Middleware.Csrf.

  Author: Eitarow Fukamachi (e.arrows@gmail.com)
|#

(in-package :cl-user)
(defpackage t-clack-middleware-csrf-asd
  (:use :cl :asdf))
(in-package :t-clack-middleware-csrf-asd)

(defsystem t-clack-middleware-csrf
  :depends-on (:clack
               :clack-middleware-csrf
               :cl-test-more
               :drakma)
  :components
  ((:file "t/contrib/middleware/csrf"))
  :perform (load-op :after (op c) (asdf:clear-system c)))
