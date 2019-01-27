import numpy.random as rnd
import matplotlib.pyplot as plt

def genScores(mu, sig, lmb, count):
  values1 = rnd.normal(lmb, sig, count)
  values2 = rnd.exponential(1/lmb, count)
  scores = [x for x in (values1 + values2) * 10]
  return scores

scores = genScores(0, 2.5, 0.2, 648)
mn = min(scores)
scores = [x - mn for x in scores]
mx = max(scores)
scores = [int(round((1-x/mx)*100)) for x in scores]
print(scores)
plt.hist(scores, bins=range(0, 105, 5))
plt.show()