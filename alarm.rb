# Very Annoying Alarm Clock

use_bpm 100

drumvol = 5
tvol1 = 1

live_loop :off do
  with_fx :reverb do
    sample :bd_fat, amp: drumvol
    use_synth :mod_saw
    play :fs8, amp: tvol1
    sleep 0.5
    play :cs6, amp: tvol1
    sample :bd_fat, amp: drumvol
    sleep 0.5
    play :gs5, amp: tvol1
    sample :bd_fat, amp: drumvol
    sleep 1
  end
end

live_loop :cork do
  with_fx :ixi_techno , phase: 0.5 do
    use_synth :dsaw
    use_synth_defaults amp: 0.5
    play :fs3
    sleep 0.25
    play :gs2
    sleep 0.5
    play :cs5
  end
end