# Shroomed

live_loop :odd do
  with_fx :flanger do
    #with_fx :lpf do
    with_fx :echo, decay: 0.1 , phase: 0.001 do
      with_fx :gverb , tail_level: 0.1 , damp: 0.2, room: 10 do
        with_fx :bitcrusher , sample_rate: 10000 do
          with_fx :reverb , pre_amp: 6, damp: 0.8, room: 0.6 , phase:4 do
            sample :bd_boom , rate: 1, amp: 1
          end
        end
      end
      #end
    end
  end
  sleep 4
end
live_loop :weird do
  with_fx :echo, phase: 0.1 do
    with_fx :gverb , tail_level: 0.8 , damp: 0.7, room: 10 do
      sample :guit_e_fifths, rate: -0.5, amp: 1
      sleep 4
    end
  end
end

live_loop :ticker do
  with_fx :echo , pre_amp: rrand(1,6), distort: 4.0, decay: 4 , phase: 0.5 do
    with_fx :ring_mod , freq: rrand(400,500) do
      sample :drum_cymbal_closed, rate: 0.5, amp: 0.05
      sleep choose([0.25,0.125])
    end
  end
end