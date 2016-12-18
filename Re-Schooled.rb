# Entirely re-schooled
# I Quite like this...
# Jamie McAllister 18/12/2016

use_bpm 10

live_loop :beat do
  with_fx :echo, phase: ([0.25,0.125,0.0625]).choose do
    sample ([:bd_boom]).choose, amp: 8
    sleep 0.25
    sample ([:drum_cymbal_soft]).choose, amp: rrand(1,4)
    sleep 0.25
  end
end

live_loop :my_loop do
  use_synth :tb303
  with_fx :echo, phase: 0.25 do
    with_fx :slicer, phase: 0.0625 do
      play choose([chord(:c4, :major),chord(:e4, :minor)]), release: 3, cutoff: rrand(60, 90), amp: 1
    end
  end
  sleep ([0.125,0.25]).choose
end

live_loop :funker do
  use_synth :dsaw
  use_synth_defaults amp: 2
  with_fx :distortion do
    with_fx :reverb do
      play :c2
      sleep 1
      play :f2
      sleep 1
      play :g2
      sleep 1
      play :f2
      sleep 1
    end
  end
end


live_loop :tingaling do
  with_fx :reverb do
    with_fx  :echo , phase: ([0.25,0.125,0.0625]).choose do
      use_synth :piano
      use_synth_defaults amp: 7
      play ([:c5,:b5]).choose, amp: 10
      sleep ([1.0/12,1.0/24,1.0/6]).choose
      play ([:d5,:d6,:e4]).choose
      sleep ([1.0/12,1.0/24,1.0/6]).choose
      play ([:d5,:d6,:e4]).choose
      sleep ([1.0/12,1.0/24,1.0/6]).choose
      play ([:d5,:e5,:e6]).choose
      sleep ([1.0/12,1.0/24,1.0/6]).choose
      play ([:f5,:f6,:f4]).choose
      sleep  1 + 9.0 /12
      play ([:g5,:g6,:g4,:b4]).choose
      sleep  1 + 9.0 /12
    end
  end
end
