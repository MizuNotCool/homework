from trafficLight import TrafficLight
import random
import numpy as np
import matplotlib.pyplot as plt

def calculateWaitTime(tl,car):
  if car <= tl.greenTime:
    return 0
  else:
    return tl.totalTime - car

globalAverages = []

for j in range(1,100,1):
  gT = j*60/100
  tl = TrafficLight(gT,60-gT)
  
  averages = []
  for x in range(20):
    
    waitTimes = []
    for _ in range(20):
      car = random.randint(0,60)
      w = calculateWaitTime(tl,car)
      waitTimes.append(w)
      
    averages.append(sum(waitTimes)/float(len(waitTimes)))

  globalAverages.append(sum(averages)/float(len(averages)))

x = [y for y in range(1,100,1)]

plt.scatter(x,globalAverages)
plt.suptitle("Average waiting time for single car")
plt.xlabel("% of period traffic light is green", fontsize=12)
plt.ylabel('Average waiting time (seconds)', fontsize=12)
plt.xlim([0,100])
