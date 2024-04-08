# Scary 

set_volume! 2


define :sh1loop do |r|
  with_fx :hpf, cutoff: 70 do
    in_thread do
      loop do
        with_fx :rlpf, res: 0.7, cutoff: 90 do /change cutoff to 70 to be less scary/
          samp = :glitch_perc4
          s = 0.2
          f = 0.9
          r = r
          sampdur = sample_duration(samp) * (f-s) / r.abs
          sample samp, start: s, finish: f,norm: 1, rate: r
          sleep sampdur
        end
      end
    end
  end
end

sh1loop 0.7
sh1loop -1
