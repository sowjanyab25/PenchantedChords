# Trans Sonic Pi snippet ????
with_fx :reverb, room: 1 do
  use_random_seed 23001055
  use_synth :square
  
  69.times do
    play (scale :e9, :minor_pentatonic).choose, release: rand
    sleep [0.25, 0.5].choose
  end
end