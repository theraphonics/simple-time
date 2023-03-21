;;; ASDF system definition file for CMN
;;; For information on ASDF see: http://www.cliki.net/asdf
;;;
;;; To load CMN from a non-standard install location:
;;;
;;; (require :asdf)
;;; (push "/path/to/cmn/" asdf:*central-registry*)
;;; (asdf:operate 'asdf:load-source-op :cmn)
;;;
;;; To download/install/load CMN from its archive:
;;;
;;; (require :asdf)
;;; (progn (push "/path/to/asdf-install/" asdf:*central-registry*)
;;;        (asdf:operate 'asdf:load-op 'asdf-install))
;;; (asdf-install:install 'cmn)
;;; (asdf:operate 'asdf:load-source-op 'cmn)

(defsystem "cmn"
  :description "Common Music Notation"
  :author "William Schottstaedt <bil (at) ccrma (dot) stanford (dot) edu>"
  :licence "MIT"
  ;;  :components ((:file "cmn-all" )) changed 22-Nov-21, patch from Guillaume Le Vaillant
  :serial t
  :components ((:file "cmn-init")
               (:file "cmn-utils")
               (:file "cmn-objects")
               (:file "cmn0")
               (:file "cmn-grfx")
               (:file "cmn-glyphs")
               (:file "cmn1")
               (:file "cmn2")
               (:file "cmn3")
               (:file "cmn4")
               (:file "rqq")
               (:file "wedge")
               (:file "accent")
               (:file "pedal")
               (:file "percussion")
               (:file "ring")
               (:file "rests")
               (:file "lyrics")
               (:file "transpose")
               (:file "pmn")
               (:file "quarter")))


