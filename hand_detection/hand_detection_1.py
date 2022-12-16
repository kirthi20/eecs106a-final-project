import cv2
import mediapipe as mp
import time
#import pyrealsense2 as rs

mode = False
maxHands = 1
modelC = 1
detectionCon = 0.5
trackCon = 0.5

mpHands = mp.solutions.hands
hands = mpHands.Hands(mode, maxHands, modelC, detectionCon, trackCon)
mpDraw = mp.solutions.drawing_utils

results = None
        
def findHands(img, draw = True):
    imgRGB = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    results = hands.process(imgRGB)

    if results.multi_hand_landmarks:
         print("-------------------hand detected-------------------")
         print("deliver flyer")
         print("exiting....")
         exit(0)
    else:
         print("no hand")        

    return img


def findPosition(img, handNo = 0, draw = True):
    listOfPoints = []
    if results and results.multi_hand_landmarks:
        myHand = results.multi_hand_landmarks[handNo]
        for id, lm in enumerate(myHand.landmark):
            h, w, c = img.shape
            cx, cy = int(lm.x * w), int(lm.y * h)
            if id%2 == 0:
                listOfPoints.append([id, cx, cy])
                if draw:
                    cv2.circle(img, (cx, cy), 3, (255, 0, 255), cv2.FILLED)
    return listOfPoints

def main():
    pTime = 0
    cTime = 0
    cap = cv2.VideoCapture(0)

    while True:
        success, img = cap.read()
        img = findHands(img)
        lmlist = findPosition(img)

        cTime = time.time()