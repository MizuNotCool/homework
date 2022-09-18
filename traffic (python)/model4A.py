from trafficLight import TrafficLight
from car import Car
import numpy as np
import matplotlib.pyplot as plt
import statistics

grProp = 0.5
grTime = grProp*60
rdTime = 60-grTime

arriveRates = {'L':8, 'M':12, 'H':20}

passRates = {'L':1, 'M':0.9*1, 'H':0.9*0.8*1}

blockingProb = {'L':0.05, 'M':0.2, 'H':0.45}

bloockingTime = {'L':0.05, 'M':0.2, 'H':0.5}

def calcPassTime(number, normalGreenTime, actualGreenTime):
  allWaitFor = normalGreenTime - actualGreenTime
  if number > 0:
    timeperCar = actualGreenTime/float(number)
  else:
    timeperCar = 0
  times = []
  for i in range(1,number+1,1):
    times.append(timeperCar*i+allWaitFor)
  return times

def runTraffic(queue, passedCars, tl, trafficType):
  p = np.random.uniform()
  if p < blockingProb[trafficType]:
    greenTime = (tl.greenTime - bloockingTime[trafficType]*tl.greenTime)
  else:
    greenTime = tl.greenTime

  passableCars = int(greenTime*tl.perSecond)
  
  if len(queue) <= passableCars:
    top = len(queue)
  else:
    top = passableCars

  totalTime = 0
  times = calcPassTime(top,tl.greenTime,greenTime)
  for j in range(top):
    car = queue[j]
    car.updateWaitTime(times[j])
    totalTime += car.waitTime
    passedCars.append(car)

  avg = 0
  if top > 0:
    avg = totalTime/float(top)

  for j in range(top,len(queue),1):
    car = queue[j]
    car.updateWaitTime(tl.totalTime)

  del queue[0:passableCars]
  return queue, passedCars, top, avg

yValsA = []
yValsB = []
yValsC = []
yValsD = []

for z in range(1000):

  tl = TrafficLight(grTime,rdTime,passRates['L'])
  carQueue = []
  passedCars = []

  numWaitingCars = []
  numPassedCars = []
  avgWaitTime = []

  for i in range(5):
    for _ in range(np.random.poisson(arriveRates['L'])):
      carQueue.append(Car())

    carQueue, passedCars, numCars, avgTime = runTraffic(carQueue,passedCars,tl,'L')
    numWaitingCars.append(len(carQueue))
    numPassedCars.append(numCars)
    avgWaitTime.append(avgTime)

  for i in range(5,20,1):
    tl.updateLight(40,20,passRates['H'])
    for _ in range(np.random.poisson(arriveRates['H'])):
      carQueue.append(Car())

    carQueue, passedCars, numCars, avgTime = runTraffic(carQueue,passedCars,tl,'H')
    numWaitingCars.append(len(carQueue))
    numPassedCars.append(numCars)
    avgWaitTime.append(avgTime)

  for i in range(20,40,1):
    tl.updateLight(30,30,passRates['M'])
    for _ in range(np.random.poisson(arriveRates['M'])):
      carQueue.append(Car())

    carQueue, passedCars, numCars, avgTime = runTraffic(carQueue,passedCars,tl,'M')
    numWaitingCars.append(len(carQueue))
    numPassedCars.append(numCars)
    avgWaitTime.append(avgTime)

  for i in range(40,55,1):
    tl.updateLight(40,20,passRates['H'])
    for _ in range(np.random.poisson(arriveRates['H'])):
      carQueue.append(Car())

    carQueue, passedCars, numCars, avgTime = runTraffic(carQueue,passedCars,tl,'H')
    numWaitingCars.append(len(carQueue))
    numPassedCars.append(numCars)
    avgWaitTime.append(avgTime)

  for i in range(55,60,1):
    tl.updateLight(30,30,passRates['L'])
    for _ in range(np.random.poisson(arriveRates['L'])):
      carQueue.append(Car())

    carQueue, passedCars, numCars, avgTime = runTraffic(carQueue,passedCars,tl,'L')
    numWaitingCars.append(len(carQueue))
    numPassedCars.append(numCars)
    avgWaitTime.append(avgTime)

  yValsA.append(numWaitingCars)
  yValsB.append(numPassedCars)
  yValsC.append(avgWaitTime)
  yValsD.append([car.waitTime for car in passedCars])

x = [i+1 for i in range(60)]

plt.plot(x,[sum(e)/len(e) for e in zip(*yValsA)],'-o',label="Ukuran antrian")
plt.plot(x,[sum(e)/len(e) for e in zip(*yValsB)],'-o',label="Mobil yang sudah jalan")
plt.legend(fontsize=9,loc=0)
plt.xlabel('Menit', fontsize=12)
plt.ylabel('Jumlah mobil', fontsize=12)
plt.suptitle("Jumlah mobil yang menunggu & lewat per interval")
plt.savefig("images/model4_numCars.png")

plt.clf()

plt.plot(x,[sum(e)/len(e) for e in zip(*yValsC)],'-o',label="Rata-rata dari waktu tunggu lebih dari 1000 tes")
plt.plot(x,[max(e) for e in zip(*yValsC)],'-o',label="Rata-rata maksimal waktu tunggu lebih dari 1000 tes")
plt.plot(x,[statistics.median(e) for e in zip(*yValsC)],'-o',label="Median rata-rata waktu tunggu lebih dari 1000 tes")
plt.legend(fontsize=9,loc=0)
plt.xlabel('Menit', fontsize=12)
plt.ylabel('Detik', fontsize=12)
plt.suptitle("Rata-rata waktu tunggu per interval")
plt.savefig("images/model4_avgTime.png")

plt.clf()

allWaitTimes = []
for r in yValsD:
  for t in r:
    allWaitTimes.append(t)

plt.hist(allWaitTimes,bins=40,normed=True,alpha=0.5,color='g')
plt.suptitle("Pembagian waktu tunggu mobil")
plt.xlabel('Waktu Tunggu Mobil (detik)', fontsize=12)
plt.ylabel('%', fontsize=12)
plt.savefig("images/model4_hist.png")

plt.clf()

plt.hist(allWaitTimes,bins=40,normed=True,alpha=0.5,color='r',cumulative=True)
plt.suptitle("Pembagian waktu tunggu mobil")
plt.xlabel('Waktu Tunggu Mobil (detik)', fontsize=12)
plt.ylabel('Cumulative %', fontsize=12)
plt.savefig("images/model4_hist_cum.png")
