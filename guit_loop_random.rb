guitsamp1 = "C:/Users/wojtek/Dropbox/sound/sound/black-metal-guitar-dissonant-3_136bpm_B_minor.wav"
guitsamp2 = "C:/Users/wojtek/Dropbox/sound/sound/hard-metal-guitar-full-rock-loop_192bpm_C#_minor.wav"
guitsamp3 = "C:/Users/wojtek/Dropbox/sound/sound/rock-roll-guitar-hard-loop_C_major.wav"


s = 2
samp = guitsamp1
live_loop :d do
  sdur = sample_duration(samp)
  nslices = 16
  r = 1
  s = rrand_i(1,16) if one_in(2)
  sample samp, slice: s, num_slices: nslices, rate: r
  sleep sdur / nslices /r
end