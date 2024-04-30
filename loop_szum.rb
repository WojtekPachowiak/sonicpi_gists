loop do
  m = [1,-1].tick
    # try cutoof: 40,60,80
  sample :misc_cineboom, rate: -3*m, finish: 0.6, start: 0.24, cutoff: 80, attack: 0.2
  sleep 0.887
end