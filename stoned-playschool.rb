# Stoned Play School

use_bpm 10

live_loop :my_loop do
  use_synth :tb303
  with_fx :echo, phase: ([0.05,1,0.1,0.07]).choose do
    with_fx :wobble , wave: 1, cutoff_max: 100, res: 0.2 do
      with_fx :flanger do
        with_fx :lpf do
          sample :drum_heavy_kick, rate: rrand(0.01,10), amp: 2.5
        end
      end
    end
  end
  
  play choose(chord(:c, :major)), release: 0.5, cutoff: rrand(60, 90), amp: 1
  sleep ([0.25]).choose
end

live_loop :funker do
  use_synth :dsaw
  use_synth_defaults amp: 1
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
  use_synth :piano
  use_synth_defaults amp: 3
  play :c5
  sleep 1.0/12
  play :d5
  sleep 1.0/12
  play :e5
  sleep 1.0/12
  play :f5
  sleep  1 + 9.0 /12
  play :g5
  sleep  1 + 9.0 /12
end
