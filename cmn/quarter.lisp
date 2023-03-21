;;; quarter tone symbols -- non-standard!
;;;
;;; I think the 1/4 tone symbols listed in "Music Notation" by G Read are all defective.
;;; One entire set depends on drop-outs to distinguish between the 1/4 sign and the
;;; normal one (i.e. the flat with part of the stem missing) -- this is not only
;;; unreadable at a distance, it's asking for trouble when anyone tries to Xerox a part.
;;; The other sets are internally inconsistent, ugly, impossible to remember, and unreadable.  
;;; So, ta da!, here's my entry -- I claim it's the best.

(in-package :cmn)

;;; quarter up always has up arrow on the right, quarter down has down arrow on the left.
;;;
;;; sharp-up sharp-down flat-up flat-down natural-up natural-down

;;; other (semi-standard) glyphs added 02-Feb-01 (see below)


;;; ---------------- Sharp-up/down ----------------

(defun draw-sharp-up (score &optional style)
  (moveto score 0.140 0.380)
  (lineto score 0.164 0.380)
  (lineto score 0.164 0.202)
  (lineto score 0.208 0.222)
  (lineto score 0.208 0.114)
  (lineto score 0.164 0.096)
  (lineto score 0.164 -0.050)
  (lineto score 0.208 -0.032)
  (lineto score 0.208 -0.136)
  (lineto score 0.164 -0.150)
  (lineto score 0.164 -0.334)
  (lineto score 0.140 -0.334)
  (lineto score 0.140 -0.164)
  (lineto score 0.070 -0.194)
  (lineto score 0.070 -0.376)
  (lineto score 0.040 -0.376)
  (lineto score 0.040 -0.206)
  (lineto score 0.000 -0.222)
  (lineto score 0.000 -0.114)
  (lineto score 0.040 -0.100)
  (lineto score 0.040 0.048)
  (lineto score 0.000 0.032)
  (lineto score 0.000 0.136)
  (lineto score 0.040 0.150)
  (lineto score 0.040 0.514)
  (lineto score -0.060 0.406)
  (lineto score 0.056 0.694)
  (lineto score 0.170 0.406)
  (lineto score 0.070 0.514)
  (lineto score 0.070 0.164)
  (lineto score 0.140 0.192)
  (lineto score 0.140 0.378)
  (moveto score 0.070 -0.086)
  (lineto score 0.140 -0.056)
  (lineto score 0.140 0.086)
  (lineto score 0.070 0.056)
  (lineto score 0.070 -0.086)
  (if (not style) (fill-in score) (draw score style)))

(defvar sharp-up-bounds '(-0.056 -0.376 0.208 0.694))

(define-accidental sharp-up #'draw-sharp-up sharp-up-bounds)

(defun draw-sharp-down (score &optional style)
  (moveto score 0.140 0.378)
  (lineto score 0.166 0.378)
  (lineto score 0.166 0.202)
  (lineto score 0.208 0.222)
  (lineto score 0.208 0.114)
  (lineto score 0.166 0.096)
  (lineto score 0.166 -0.050)
  (lineto score 0.208 -0.032)
  (lineto score 0.208 -0.136)
  (lineto score 0.166 -0.152)
  (lineto score 0.166 -0.512)
  (lineto score 0.266 -0.404)
  (lineto score 0.152 -0.694)
  (lineto score 0.040 -0.404)
  (lineto score 0.140 -0.512)
  (lineto score 0.140 -0.164)
  (lineto score 0.070 -0.194)
  (lineto score 0.070 -0.378)
  (lineto score 0.042 -0.378)
  (lineto score 0.042 -0.206)
  (lineto score 0.000 -0.222)
  (lineto score 0.000 -0.114)
  (lineto score 0.042 -0.100)
  (lineto score 0.042 0.048)
  (lineto score 0.000 0.032)
  (lineto score 0.000 0.136)
  (lineto score 0.042 0.152)
  (lineto score 0.042 0.336)
  (lineto score 0.070 0.336)
  (lineto score 0.070 0.164)
  (lineto score 0.140 0.192)
  (lineto score 0.140 0.378)
  (moveto score 0.070 -0.086)
  (lineto score 0.140 -0.058)
  (lineto score 0.140 0.086)
  (lineto score 0.070 0.058)
  (lineto score 0.070 -0.086)
  (if (not style) (fill-in score) (draw score style)))

(defvar sharp-down-bounds '(0.000 -0.694 0.268 0.378))

(define-accidental sharp-down #'draw-sharp-down sharp-down-bounds)

(defun draw-flat-up (score &optional style)
  (moveto score 0.002 0.512)
  (lineto score 0.002 -0.194)
  (curveto score 0.014 -0.186 0.070 -0.130 0.092 -0.114)
  (curveto score 0.142 -0.086 0.246 -0.024 0.216 0.082)
  (curveto score 0.166 0.222 0.028 0.086 0.028 0.086)
  (lineto score 0.028 0.512)
  (lineto score 0.128 0.404)
  (lineto score 0.016 0.694)
  (lineto score -0.098 0.404)
  (lineto score 0.002 0.512)
  (moveto score 0.028 0.036)
  (lineto score 0.028 -0.136)
  (curveto score 0.034 -0.140 0.208 0.028 0.122 0.090)
  (curveto score 0.114 0.092 0.086 0.104 0.028 0.036)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(defvar flat-up-bounds '(-0.082 -0.194 0.220 0.694))

(define-accidental flat-up #'draw-flat-up flat-up-bounds)

(defun draw-flat-down (score &optional style)
  (moveto score 0.002 0.482)
  (lineto score 0.002 -0.308)
  (lineto score -0.100 -0.208)
  (lineto score 0.016 -0.442)
  (lineto score 0.130 -0.208)
  (lineto score 0.030 -0.308)
  (lineto score 0.030 -0.186)
  (curveto score 0.014 -0.186 0.070 -0.130 0.092 -0.114)
  (curveto score 0.142 -0.086 0.246 -0.024 0.216 0.082)
  (curveto score 0.166 0.222 0.028 0.086 0.028 0.086)
  (lineto score 0.028 0.482)
  (lineto score 0.002 0.482)
  (moveto score 0.028 0.036)
  (lineto score 0.028 -0.136)
  (curveto score 0.034 -0.140 0.208 0.028 0.122 0.090)
  (curveto score 0.114 0.092 0.086 0.104 0.028 0.036)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(defvar flat-down-bounds '(-0.100 -0.442 0.220 0.482))

(define-accidental flat-down #'draw-flat-down flat-down-bounds)

(defun draw-natural-up (score &optional style)
  (moveto score 0.000 -0.180)
  (lineto score 0.142 -0.142)
  (lineto score 0.142 -0.346)
  (lineto score 0.170 -0.346)
  (lineto score 0.170 0.174)
  (lineto score 0.028 0.136)
  (lineto score 0.028 0.402)
  (lineto score 0.128 0.296)
  (lineto score 0.016 0.582)
  (lineto score -0.100 0.296)
  (lineto score 0.000 0.402)
  (lineto score 0.000 -0.180)
  (moveto score 0.028 -0.074)
  (lineto score 0.028 0.048)
  (lineto score 0.142 0.078)
  (lineto score 0.142 -0.046)
  (lineto score 0.028 -0.074)
  (if (not style) (fill-in score) (draw score style)))

(defvar natural-up-bounds '(-0.100 -0.346 0.170 0.582))

(define-accidental natural-up #'draw-natural-up natural-up-bounds)

(defun draw-natural-down (score &optional style)
  (moveto score 0.000 -0.180)
  (lineto score 0.142 -0.142)
  (lineto score 0.142 -0.402)
  (lineto score 0.040 -0.296)
  (lineto score 0.156 -0.582)
  (lineto score 0.270 -0.296)
  (lineto score 0.170 -0.402)
  (lineto score 0.170 0.174)
  (lineto score 0.028 0.136)
  (lineto score 0.028 0.346)
  (lineto score 0.000 0.346)
  (lineto score 0.000 -0.180)
  (moveto score 0.028 -0.074)
  (lineto score 0.028 0.048)
  (lineto score 0.142 0.078)
  (lineto score 0.142 -0.046)
  (lineto score 0.028 -0.074)
  (if (not style) (fill-in score) (draw score style)))

(defvar natural-down-bounds '(0.000 -0.582 0.270 0.346))

(define-accidental natural-down #'draw-natural-down natural-down-bounds)

;;; (cmn staff treble c4 sharp-up)
;;; (cmn staff treble (chord (notes (c4 sharp-up) (g4 flat-down))))

;;; ------------------------------------------------------------

;;; these added for Michael Edwards

(defun draw-flat-with-dropout (score &optional style)
  ;; this is the first glyph in the 4th column of Read p 145
  ;; it looks identical to the 3rd and 5th glyphs
  (comment score "flat-with-dropout")
  (moveto score 0.027 0.086)
  (lineto score 0.027 0.483)
  (lineto score 0.000 0.483)
  (lineto score 0.000 0.004)
  (lineto score 0.026 0.035)
  (moveto score 0.028 -0.135)
  (lineto score 0.016 -0.139)
  (lineto score 0.016 -0.185)
  (curveto score 0.012 -0.186 0.070 -0.139 0.097 -0.119)
  (curveto score 0.141 -0.086 0.244 -0.024 0.215 0.082)
  (curveto score 0.165 0.204 0.027 0.087 0.027 0.086)
  (moveto score 0.027 -0.137)
  (curveto score 0.032 -0.140 0.206 0.029 0.120 0.090)
  (curveto score 0.112 0.093 0.085 0.105 0.027 0.037)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(defvar flat-with-dropout-bounds '(0.000 -0.193 0.222 0.483))

(define-accidental flat-with-dropout #'draw-flat-with-dropout flat-with-dropout-bounds)

(defun draw-flat-with-flag (score &optional style)
  ;; this is the 4th in the 1st column
  (comment score "flat-with-flag")
  (moveto score 0.028 0.086)
  (lineto score 0.028 0.352)
  (curveto score 0.051 0.573 -0.107 0.684 -0.230 0.390)
  (lineto score -0.200 0.376)
  (curveto score -0.094 0.604 0.006 0.497 -0.010 0.352)
  (lineto score 0.000 -0.193)
  (curveto score 0.013 -0.185 0.070 -0.139 0.098 -0.119)
  (curveto score 0.141 -0.085 0.244 -0.024 0.215 0.083)
  (curveto score 0.165 0.204 0.028 0.087 0.028 0.086)
  (moveto score 0.028 0.037)
  (lineto score 0.028 -0.136)
  (curveto score 0.033 -0.140 0.206 0.029 0.120 0.090)
  (curveto score 0.113 0.092 0.085 0.105 0.028 0.037)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(defvar flat-with-flag-bounds '(0.0 -0.193 0.220 0.568))

(define-accidental flat-with-flag #'draw-flat-with-flag flat-with-flag-bounds)

(defun draw-flat-reversed (score &optional style)
  (comment score "flat reversed")
  (moveto score 0.195 0.086)
  (lineto score 0.195 0.483)
  (lineto score 0.222 0.483)
  (lineto score 0.222 -0.193)
  (curveto score 0.210 -0.186 0.152 -0.139 0.125 -0.119)
  (curveto score 0.081 -0.086 -0.022 -0.024 0.007 0.082)
  (curveto score 0.057 0.204 0.195 0.087 0.195 0.086)
  (moveto score 0.195 0.037)
  (lineto score 0.195 -0.137)
  (curveto score 0.190 -0.140 0.016 0.029 0.102 0.090)
  (curveto score 0.110 0.093 0.137 0.105 0.195 0.037)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(define-accidental flat-reversed #'draw-flat-reversed flat-bounds)


(defun draw-sharp-horizontal-marks (score &optional style)
  (moveto score 0.210 -0.032)
  (lineto score 0.210 -0.136)
  (lineto score 0.000 -0.222)
  (lineto score 0.000 -0.116)
  (lineto score 0.210 -0.032)
  (if (not style) (fill-in score :even-odd t) (draw score style))
  (moveto score 0.000 0.032)
  (lineto score 0.000 0.138)
  (lineto score 0.210 0.222)
  (lineto score 0.210 0.116)
  (lineto score 0.000 0.032)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(defun draw-sharp-with-right-vertical (score &optional style)
  (draw-sharp-horizontal-marks score style)
  (moveto score 0.140 0.380)
  (lineto score 0.168 0.380)
  (lineto score 0.168 -.338)
  (lineto score 0.140 -.338)
  (lineto score 0.140 0.380)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(defun draw-sharp-with-left-vertical (score &optional style)
  (draw-sharp-horizontal-marks score style)
  (moveto score 0.044 .338)
  (lineto score 0.072 .338)
  (lineto score 0.072 -.380)
  (lineto score 0.044 -.380)
  (lineto score 0.044 .338)
  (if (not style) (fill-in score :even-odd t) (draw score style)))
	  
(defun draw-sharp-with-centered-vertical (score &optional style)
  (draw-sharp-horizontal-marks score style)
  (moveto score 0.094 .360)
  (lineto score 0.112 .360)
  (lineto score 0.112 -.360)
  (lineto score 0.094 -.360)
  (lineto score 0.094 .360)
  (if (not style) (fill-in score :even-odd t) (draw score style)))

(define-accidental sharp-with-right-vertical #'draw-sharp-with-right-vertical sharp-bounds)
(define-accidental sharp-with-left-vertical #'draw-sharp-with-left-vertical sharp-bounds)
(define-accidental sharp-with-centered-vertical #'draw-sharp-with-centered-vertical sharp-bounds)

;;; ------------------------------------------------------------


;;; need these lists for chord accidental spacing (cmn2.lisp accident-chord)
(setf flats (append flats (list flat-up flat-down flat-with-dropout flat-with-flag flat-reversed)))
(setf sharps (append sharps (list sharp-up sharp-down sharp-with-right-vertical sharp-with-left-vertical sharp-with-centered-vertical)))
(setf naturals (append naturals (list natural-up natural-down)))
