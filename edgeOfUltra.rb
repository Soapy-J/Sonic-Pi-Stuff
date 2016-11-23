# The Edge of Ultra
# Jamie McAllister 22/11/2016

live_loop :dog do
  boom
  if (rand(1) < 0.3) then
    bar
  end
  if (rand(1) < 0.5) then
    foo2
    boom
    bar
  end
  boom
end


define :boom do
  use_synth :beep
  play choose([:g2,:g8,:fs8,:g0]), amp: 0.1
  sleep 0.2
  play :c3, amp: 0.1
  sleep 0.1
  play :c3, amp: 0.1
  sleep 0.1
  play :f2, amp: 0.1
  sleep 0.1
  play :g0, amp: 0.1
  sleep 0.1
  with_fx :echo do
    sample :bd_boom, amp: 2, rate: -1
  end
end


define :bar do
  sample :perc_bell, amp: 0.65, rate: rand(3) * -1
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.65
  sleep 0.25
  boom
  sample :vinyl_scratch, rate: -0.1,  amp: 0.65
  sleep 0.5
  sample :sn_dolf, rate: -5, amp: 0.2
  sleep 0.25
end

define :foo do
  use_synth :beep
  play :g2
  sleep 0.25
  bar
end

define :foo2 do
  use_synth :beep
  play :fs6, amp: 0.1
  sleep 0.25
  sample :ambi_haunted_hum, rate: -10 * rand(1), amp: 0.5
end
