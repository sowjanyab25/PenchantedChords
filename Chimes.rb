ns = (scale :e6, :minor_pentatonic)

use_random_seed 302733434

with_fx :distortion do
  use_synth :blade
  18.times do
    play ns.choose, attack: 1, release: 1, amp: 0.1
  end
end

sleep 1
use_synth :sine
69.times do
  play ns.choose, release: rand, amp: 0.7, pan: 0
  sleep [0.125, 0.25].choose
  play ns.choose, amp: 0.3, pan:[-1, 1].choose, release: 1
end
//Copyrights@SowjanyaBavisetty
with_fx :whammy do
  use_synth :dark_ambience
  50.times do
    play ns.choose, attack: 1, release: 3, amp: 0.2
    sleep 0.25
  end
end
