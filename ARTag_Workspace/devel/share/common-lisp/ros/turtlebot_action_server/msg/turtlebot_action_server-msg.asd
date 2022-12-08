
(cl:in-package :asdf)

(defsystem "turtlebot_action_server-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "burger_moveAction" :depends-on ("_package_burger_moveAction"))
    (:file "_package_burger_moveAction" :depends-on ("_package"))
    (:file "burger_moveActionFeedback" :depends-on ("_package_burger_moveActionFeedback"))
    (:file "_package_burger_moveActionFeedback" :depends-on ("_package"))
    (:file "burger_moveActionGoal" :depends-on ("_package_burger_moveActionGoal"))
    (:file "_package_burger_moveActionGoal" :depends-on ("_package"))
    (:file "burger_moveActionResult" :depends-on ("_package_burger_moveActionResult"))
    (:file "_package_burger_moveActionResult" :depends-on ("_package"))
    (:file "burger_moveFeedback" :depends-on ("_package_burger_moveFeedback"))
    (:file "_package_burger_moveFeedback" :depends-on ("_package"))
    (:file "burger_moveGoal" :depends-on ("_package_burger_moveGoal"))
    (:file "_package_burger_moveGoal" :depends-on ("_package"))
    (:file "burger_moveResult" :depends-on ("_package_burger_moveResult"))
    (:file "_package_burger_moveResult" :depends-on ("_package"))
  ))