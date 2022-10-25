use_bpm 107

sample :drum_roll

sleep 11.5
live_loop :drums do
  sample :drum_heavy_kick, beat_stretch: 8
  sleep 1
  sample :sn_dolf
  sleep 1
end

live_loop :sample do
  sync :drums
  sample :ambi_choir, beat_stretch: 8
  sleep 8
end

puts sample_duration(:ambi_choir, beat_stretch: 8)

live_loop :bass do
  sync :drums
  sample :perc_swoosh
  sample :bass_trance_c
  sample :bd_zome, amp: 3
  play chord(:f2, :major7).choose, sustain: 7, amp: 0.5
  sleep 8
end
