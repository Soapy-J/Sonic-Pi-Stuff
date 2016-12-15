# Procsess
# 15/12/2016
# Jamie McAllister


t = 0
x = 0

live_loop :foo do
  if (x > 24) then
    x = 0
    sample :ambi_choir, rate: [0.25,0.1251,1,-1].choose, amp: 2
  end
  if (x > 20) then
    bobo
  end
  sample ([:drum_heavy_kick,:bd_haus]).choose, rate: ([1,2]).choose
  if (t > ([1,3,5,7]).choose ) then
    piss
    t = 0
  end
  s = ([0.25,0.125]).choose
  t = t + s
  sleep s
  sample :drum_cymbal_closed, rate: ([1,x+0.1]).choose
  s = ([0.25,0.125]).choose
  t = t + s * 2
  sleep s
  if (t > ([1,3,5]).choose ) then
    dog
    t = 0
    sample :ambi_drone, rate: rrand(-2,2)
  end
  sample :drum_heavy_kick, rate: ([0.5,0.25]).choose
  sleep ([0.25,0.125]).choose
  sample :drum_snare_soft,  rate: ([0.5,0.25]).choose
  s = ([0.25,0.125]).choose
  t = t + s
  sleep s
end

define :piss do
  sample :guit_e_slide, pitch: x
  x = x + 2
  sleep ([0.5,0.25,0.125]).choose
  t = 0
end

define :bobo do
  sample :guit_em9, rate: ([1,1.5,2,4,0.5]).choose
end

define :dog do
  sample :guit_harmonics, pitch: x
  x = x + 2
  sleep ([0.5,0.25,0.125]).choose
  t = 0
end



