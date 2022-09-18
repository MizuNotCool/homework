from trafficLight import TrafficLight
import numpy as np
import matplotlib.pyplot as plt


def calculateAverageWait(numcars,limit,redTime):
  if numcars <= limit:
    return numcars*0
  else:
    return ((numcars-limit)*redTime)+ calculateAverageWait(numcars-limit,limit,redTime)


rateVals = [x for x in range(2,40,2)]
passVals = [0.1,0.2,0.3,0.4,0.5]
grVals = [0.2,0.3,0.4,0.5,0.6,0.7]


gyVals = []

for g in grVals:
  tl = TrafficLight(g*60,(1-g)*60)
  limit = tl.perSecond * tl.greenTime

  yVals = []

  for x in rateVals:
    waitTimes = []
    for _ in range(20):
      numCars = np.random.poisson(x)
      if numCars == 0:
        waitTimes.append(0)
      else:
        waitTimes.append(calculateAverageWait(numCars,limit,tl.redTime)/float(numCars))

    yVals.append(sum(waitTimes)/float(len(waitTimes)))

  gyVals.append(yVals)


i=0
colors = ['b','r','g','c','m','k']
for y, c in zip(gyVals, colors):
  z = np.polyfit(rateVals, y, 1)
  p = np.poly1d(z)
  plt.plot(rateVals,y,'.',color=c)
  plt.plot(rateVals,p(rateVals),'-',color=c,label=("Proporsi Hijau = %s%%" % int(grVals[i]*100)))
  i+=1
plt.legend(fontsize=9, loc=0)
plt.xlabel('Car arrival rate per minute', fontsize=12)
plt.ylabel('Average waiting time (seconds)', fontsize=12)
plt.suptitle("Varying Car Arrival Rate & Green Time %")
plt.xlim([0,40])
plt.clf()


gyVals = []

for g in passVals:
  tl = TrafficLight(30,30,g)
  limit = tl.perSecond * tl.greenTime

  yVals = []

  for x in rateVals:
    waitTimes = []
    for _ in range(20):
      numCars = np.random.poisson(x)
      if numCars == 0:
        waitTimes.append(0)
      else:
        waitTimes.append(calculateAverageWait(numCars,limit,tl.redTime)/float(numCars))

    yVals.append(sum(waitTimes)/float(len(waitTimes)))

  gyVals.append(yVals)


i=0
colors = ['b','r','g','c','m','k']
for y, c in zip(gyVals, colors):
  z = np.polyfit(rateVals, y, 1)
  p = np.poly1d(z)
  plt.plot(rateVals,y,'.',color=c)
  plt.plot(rateVals,p(rateVals),'-',color=c,label=("Traffic Flow per Second = %s" % passVals[i]))
  i+=1
plt.legend(fontsize=9, loc=0)
plt.xlabel('Car arrival rate per minute', fontsize=12)
plt.ylabel('Average waiting time (seconds)', fontsize=12)
plt.suptitle("Varying Car Arrival Rate & Car Flow")
plt.xlim([0,40])
