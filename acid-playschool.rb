# Acid Play School 

use_bpm 60

live_loop :my_loop do
  use_synth :tb303

  sample :drum_bass_hard, rate: rrand(0.5,2), amp: 0.6
  play choose(chord(:c2, :minor7)), release: 0.2, cutoff: rrand(60, 130), amp: 0.3
  play choose(chord(:f2, :i7)), release: 0.2, cutoff: rrand(60, 130), amp: rrand(0.01,0.7)
  play choose(chord(:g2, :major)), release: 0.2, cutoff: rrand(60, 130), amp: rrand(0.01,0.7)
  sleep 0.25
end

live_loop :funker do
  use_synth :sine
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
  use_synth_defaults amp: 0.7
  play :c5
  sleep 1.0/12
  play :d5
  sleep 1.0/12
  play :e5
  sleep 1.0/12
  play :f5
  sleep  1 + 9.0 /12
end

live_loop :tingal0ng do
  use_synth :piano
  use_synth_defaults amp: 0.7

  sleep 1
  play :e4
  sleep 1.0/16
  play :d4
  sleep 1.0/16
  play :c4
  sleep 1.0/16
  play :f4
  sleep 1.0/16
  play :c5
  sleep 1
end