use_debug false

live_loop :low do |idx|
  #  idx = 0
  synth :zawa, wave: 1, invert_wave: 1, phase: 0.25, release: 5, note: :e1, cutoff: (range 60, 120, 10)[idx]
  sleep 4
  idx += 1
end

live_loop :lands, auto_cue: false do |idx|
  use_synth :dsaw
  use_random_seed 66679
  with_fx :reverb, room: 1  do
    16.times do
      ns = (scale :e2, :minor_pentatonic, num_octaves: 3)
      play ns.choose, detune: 12, release: 0.1, amp: 2, amp: rand + 0.5, cutoff: rrand(70, 120)
      sleep 0.125
    end
  end
end

live_loop :bikes do |idx|
  sleep 0.25
  sample :guit_em9, rate: -1
  sleep 7.75
end

live_loop :time, auto_cue: false do |idx|
  sample :bd_haus, amp: 2.5
  sleep 0.5
end

