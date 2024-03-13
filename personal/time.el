;; This contains some time/date functions
;; to help in reporting.

(defun iso-week-to-time(year week day)
  "Convert ISO year, week, day to elisp time value."
  (apply #'encode-time
         (append '(0 0 0)
                 (-select-by-indices
                  '(1 0 2)
                  (calendar-gregorian-from-absolute (calendar-iso-to-absolute
                                                     (list week day year)))))))

(defun iso-beginning-of-week(year week)
  "Convert ISO year, week to elisp time for first day (Monday) of week."
  (iso-week-to-time year week 1))

(defun iso-end-of-week(year week)
  "Convert ISO year, week to elisp time for last day (Sunday) of week."
  (iso-week-to-time year week 7))

