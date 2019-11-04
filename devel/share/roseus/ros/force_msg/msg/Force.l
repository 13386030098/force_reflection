;; Auto-generated. Do not edit!


(when (boundp 'force_msg::Force)
  (if (not (find-package "FORCE_MSG"))
    (make-package "FORCE_MSG"))
  (shadow 'Force (find-package "FORCE_MSG")))
(unless (find-package "FORCE_MSG::FORCE")
  (make-package "FORCE_MSG::FORCE"))

(in-package "ROS")
;;//! \htmlinclude Force.msg.html


(defclass force_msg::Force
  :super ros::object
  :slots (_force_x _force_y _force_z ))

(defmethod force_msg::Force
  (:init
   (&key
    ((:force_x __force_x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:force_y __force_y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:force_z __force_z) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _force_x __force_x)
   (setq _force_y __force_y)
   (setq _force_z __force_z)
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
    ;; int32[] _force_x
    (* 4    (length _force_x)) 4
    ;; int32[] _force_y
    (* 4    (length _force_y)) 4
    ;; int32[] _force_z
    (* 4    (length _force_z)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _force_x
     (write-long (length _force_x) s)
     (dotimes (i (length _force_x))
       (write-long (elt _force_x i) s)
       )
     ;; int32[] _force_y
     (write-long (length _force_y) s)
     (dotimes (i (length _force_y))
       (write-long (elt _force_y i) s)
       )
     ;; int32[] _force_z
     (write-long (length _force_z) s)
     (dotimes (i (length _force_z))
       (write-long (elt _force_z i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _force_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force_x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _force_x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _force_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force_y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _force_y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _force_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force_z (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _force_z i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get force_msg::Force :md5sum-) "775e4325e2a6aa8d2d055511b3592b1c")
(setf (get force_msg::Force :datatype-) "force_msg/Force")
(setf (get force_msg::Force :definition-)
      "int32[] force_x
int32[] force_y
int32[] force_z


")



(provide :force_msg/Force "775e4325e2a6aa8d2d055511b3592b1c")


