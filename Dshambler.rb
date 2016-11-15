# Dimensional Shambling
# Jamie McAllister 2016/11/15


use_random_seed (76)

live_loop :eternal do
  low = [10,20,30,40,50]
  under = [10,11,12,13,14,15,16,17,18,19,20]
  high = [200,100,400]
  odd = [rrand(1,30),rrand(1,20), rrand(10,13)]
  Shamble = choose([under,low,odd])
  with_fx :reverb do
    with_fx :echo , phase: rrand(0.001,2) do
      with_fx :ring_mod , freq: rrand(85,108) do
        with_fx :flanger, delay: rrand(1,20)  do
          use_synth :tb303
          play_chord Shamble, attack: rrand(0.1,4), amp: rrand(1,3) , cutoff: rrand(80,95), sustain: rrand(0.1,6)
          #sleep choose([0.5,0.125,1,2])
          sleep rrand(0.01,10)
        end
      end
    end
  end
end


