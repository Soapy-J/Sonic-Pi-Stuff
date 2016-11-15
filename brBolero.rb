# Borley Rectory Bolero
# Jamie McAllister

# Rings of Power
my_seq = (ring :A1, :E2, :A1, :D2, :A1, :C2, :A1, :G2, :G2, :Gb2, :Gb2, :F2, :F2, :E2, :G2)
high_seq = (ring :F2, :Gb2, :G2, :F3)
alt_high_seq = (ring :C2, :A2, :D2, :E2)

# Just amplitude vars...
b = 0.01

# Modifiers
up = 0.05
down = -0.05
adjust = up

#Live Loops!

live_loop :drum do
  with_fx :krush, cutoff: rrand(60,100) do
    sample :ambi_drone, rate: choose([4,8,12,24,48]), amp: b * 0.8
    sleep choose([0.125,0.125,0.25,0.5,0.25,0.25,1])
  end

end

live_loop :volume do
  if b > 0.5 then adjust = down end
  if b < 0.05 then adjust = up end
  b = b + adjust
  sleep 1.0 / 0.75
  print b
end

live_loop :foo do
  use_synth :saw
  with_fx   :ixi_techno, pre_amp: 1.9 do
    play my_seq.tick, amp: 0.4
    with_fx :reverb, room: 0.4, amp: 0.5  do
      sample :bd_fat, amp: 1
    end
  end
  sleep 1
end

live_loop :bar do
  use_synth :sine
  with_fx :distortion , mix: 0.2 do
    play my_seq.tick, amp: 3, release: 0.125
    sample :bd_boom, amp: 0.4
    sleep 1.0 / 6.0
  end
end

live_loop :high_beep do
  use_synth :piano
  if (adjust == up) then play high_seq.tick, amp: b end
  if (adjust == down) then
    with_fx :echo do
      play alt_high_seq.tick, amp: b
    end
  end
  sleep 1.0 / 12.0
end