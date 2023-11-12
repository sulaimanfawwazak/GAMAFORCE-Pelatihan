;; Auto-generated. Do not edit!


(when (boundp 'gmfc::coordinate)
  (if (not (find-package "GMFC"))
    (make-package "GMFC"))
  (shadow 'coordinate (find-package "GMFC")))
(unless (find-package "GMFC::COORDINATE")
  (make-package "GMFC::COORDINATE"))

(in-package "ROS")
;;//! \htmlinclude coordinate.msg.html


(defclass gmfc::coordinate
  :super ros::object
  :slots (_message _latitude _longitude ))

(defmethod gmfc::coordinate
  (:init
   (&key
    ((:message __message) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gmfc::coordinate :md5sum-) "36ac278e1f13c9951d4d6498c308eba5")
(setf (get gmfc::coordinate :datatype-) "gmfc/coordinate")
(setf (get gmfc::coordinate :definition-)
      "string message
float32 latitude
float32 longitude

")



(provide :gmfc/coordinate "36ac278e1f13c9951d4d6498c308eba5")


