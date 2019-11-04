;; Auto-generated. Do not edit!


(when (boundp 'davinci_msg::Force)
  (if (not (find-package "DAVINCI_MSG"))
    (make-package "DAVINCI_MSG"))
  (shadow 'Force (find-package "DAVINCI_MSG")))
(unless (find-package "DAVINCI_MSG::FORCE")
  (make-package "DAVINCI_MSG::FORCE"))

(in-package "ROS")
;;//! \htmlinclude Force.msg.html


(defclass davinci_msg::Force
  :super ros::object
  :slots (_force_x _force_y _force_z ))

(defmethod davinci_msg::Force
  (:init
   (&key
    ((:force_x __force_x) 0.0)
    ((:force_y __force_y) 0.0)
    ((:force_z __force_z) 0.0)
    )
   (send-super :init)
   (setq _force_x (float __force_x))
   (setq _force_y (float __force_y))
   (setq _force_z (float __force_z))
   self)
  (:force_x
   (&optional __force_x)
   (if __force_x (setq _force_x __force_x)) _force_x)
  (:force_y
   (&optional __force_y)
   (if __force_y (setq _force_y __force_y)) _force_y)
  (:force_z
   (&optional __force_z)
   (if __force_z (setq _force_z __force_z)) _force_z)
  (:serialization-length
   ()
   (+
    ;; float64 _force_x
    8
    ;; float64 _force_y
    8
    ;; float64 _force_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _force_x
       (sys::poke _force_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _force_y
       (sys::poke _force_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _force_z
       (sys::poke _force_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _force_x
     (setq _force_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _force_y
     (setq _force_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _force_z
     (setq _force_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get davinci_msg::Force :md5sum-) "a3834bb22b09698ded602f23cb069ae6")
(setf (get davinci_msg::Force :datatype-) "davinci_msg/Force")
(setf (get davinci_msg::Force :definition-)
      "float64 force_x
float64 force_y
float64 force_z


")



(provide :davinci_msg/Force "a3834bb22b09698ded602f23cb069ae6")


