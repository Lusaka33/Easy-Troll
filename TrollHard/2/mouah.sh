#!/usr/bin/env python
import subprocess
import random
from time import sleep

while True:
    getMouse = "./MouseTools -location"
    process = subprocess.Popen(getMouseCMD.split(), stdout=subprocess.PIPE)
    output = process.communicate()[0]

    mousePos = output.split("\n")
    newX = int(mousePos[0]) + random.radint(-250, 250)
    newY = int(mousePos[1]) + random.radint(-250, 250)

    setMouse = "./MouseTools -x {0} -y {1}".format(newX, newY)
    subprocess.Popen(setMouse.split(), stsout=subprocess.PIPE)
    sleep(100)

