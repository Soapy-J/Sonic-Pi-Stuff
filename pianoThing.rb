# Piano thing
# The timed pattern played walks over itself. Pachuco Cadaver stylee

counter = 0
rest = 0
volume = 1
timer = 8.0
beatmaker = 2.0

live_loop :bassline do
  use_synth :piano
  use_synth_defaults amp: 1.0
  play_pattern_timed [:D2,:G2,:E2,:G2,:Db3,:G3,:A3,:E4,:D3], timer / 32
  if counter == 5 then stop end
end


live_loop :bass do
  with_fx :reverb, pre_amp: 1.8, damp: 0.8 , room: 0.99 do
    use_synth_defaults amp: volume
    use_synth :piano
    play :A1
    play :E3
    sleep timer / beatmaker
    use_synth :piano
    play :G1
    play :D3
    sleep timer / beatmaker
    counter = counter + 1
    print counter
    if counter == 2 then timer = timer / 2.0 end
    if counter == 3 then timer = timer / 1.0 and beatmaker = 4.0 end
    if counter == 5 then stop end
    sleep rest
  end
end