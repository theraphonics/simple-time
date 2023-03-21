;;; Traditional western music notation (CMN=Common Music Notation)


#+excl (when (eq excl:*current-case-mode* :case-sensitive-upper)
	 (warn "you've chosen the one case (sensitive-upper) that is incompatible with cmn -- changing to insensitive-upper")
	 (excl:set-case-mode :case-insensitive-upper))

#+excl (defpackage :cmn (:use :common-lisp :clos) (:shadow rest) (:import-from :excl ratiop exit))
#+excl (in-package :cmn)


#+gcl (in-package :cmn :use '(:lisp :pcl :loop))
#+gcl (shadow 'system)
#+gcl (shadow 'make-system)
#+gcl (shadow 'double)


;; #+lispworks (defpackage :cmn (:use :common-lisp :clos) (:shadow rest) (:import-from :cl-user quit))
#+lispworks (defpackage :cmn (:use :common-lisp :clos) (:shadow rest eighth) (:import-from :cl-user quit))
#+lispworks (in-package :cmn)

	      
#+clisp 
  (progn
    (defpackage :cmn 
      #-ansi-cl (:use :loop :lisp :clos)
      #+ansi-cl (:use :loop :lisp :clos)
      #-ansi-cl (:import-from :lisp bye shell)
      #+ansi-cl (:import-from :ext bye shell)
      #+(and ansi-cl syscalls) (:shadow posix:y0 posix:y1)
      (:shadow "REST")
      (:shadow "FINALIZE"))
    (in-package :cmn)
    )

#+clisp (if (and (find-package "EXT")
		 (find-symbol "WITHOUT-PACKAGE-LOCK" (find-package "EXT")))
	    (pushnew :have-without-package-lock *features*))
#+clisp (if (and (find-package "EXT")
		 (find-symbol "QUIT" (find-package "EXT")))
	    (pushnew :have-quit *features*))

#+xcl 
  (progn
    (defpackage :cmn
      (:use :common-lisp)
      (:shadow common-lisp:rest common-lisp:eighth))
    (in-package :cmn))

#+cmu
  (progn
    (defpackage :cmn
      (:use :loop :pcl :lisp)
      (:shadow common-lisp:rest)
      (:shadow lisp:glyph)
      (:import-from :extensions quit)
      (:shadowing-import-from "PCL" "BUILT-IN-CLASS" "CLASS-NAME" "CLASS-OF" "FIND-CLASS" "STANDARD-CLASS"))
    (in-package :cmn))


#+sbcl
  (progn
    (defpackage :cmn
      (:use :common-lisp)
      (:import-from :sb-ext quit)      
      (:shadow common-lisp:rest common-lisp:eighth))
    (in-package :cmn))


#+(and mcl (not openmcl))
  (progn
    (defpackage :cmn 
      (:use :common-lisp)
      (:shadow common-lisp:rest CCL:COPY CCL:CANCEL))
    (in-package :cmn)
    )


#+openmcl
  (progn
    (defpackage :cmn 
      (:use :common-lisp) 
      (:import-from :ccl quit)
      (:shadow common-lisp:rest))
    (in-package :cmn)
    )

#+ecl
  (progn
    (defpackage :cmn 
      (:use :common-lisp)
      (:shadow common-lisp:rest common-lisp:eighth))
    (in-package :cmn))


#-(or clisp cltl2) (shadow 'rest)


(pushnew :cmn *features*)

(defvar *cmn-binary-directory* "./")
(defvar *cmn-source-directory* "./")

(defvar *cmn-version* "Common Music Notation 25-Oct-10")
(defvar *cmn-news* 
  "
26-Oct-10: French version of cmn.html thanks to Rene Bastian!
31-Jan-09: Kjetil Matheussen made changes to port CMN to ABCL.
25-Mar-08: xcl changes.
9-May:     new-staff-name slot for note and rest for changing staff name (Michael Edwards)
3-Apr:     measure number bugfix (Michael Edwards)
15-Oct:    thickness message now affects bars locally.  Added *double-barline-thickness*.
")


