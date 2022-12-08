
(cl:in-package :asdf)

(defsystem "burger_move_action-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Burger_moveAction" :depends-on ("_package_Burger_moveAction"))
    (:file "_package_Burger_moveAction" :depends-on ("_package"))
    (:file "Burger_moveActionFeedback" :depends-on ("_package_Burger_moveActionFeedback"))
    (:file "_package_Burger_moveActionFeedback" :depends-on ("_package"))
    (:file "Burger_moveActionGoal" :depends-on ("_package_Burger_moveActionGoal"))
    (:file "_package_Burger_moveActionGoal" :depends-on ("_package"))
    (:file "Burger_moveActionResult" :depends-on ("_package_Burger_moveActionResult"))
    (:file "_package_Burger_moveActionResult" :depends-on ("_package"))
    (:file "Burger_moveFeedback" :depends-on ("_package_Burger_moveFeedback"))
    (:file "_package_Burger_moveFeedback" :depends-on ("_package"))
    (:file "Burger_moveGoal" :depends-on ("_package_Burger_moveGoal"))
    (:file "_package_Burger_moveGoal" :depends-on ("_package"))
    (:file "Burger_moveResult" :depends-on ("_package_Burger_moveResult"))
    (:file "_package_Burger_moveResult" :depends-on ("_package"))
  ))