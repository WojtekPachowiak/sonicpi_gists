

define :menuguzik_lg do
  with_fx :echo, phase: 0.1, decay: 0.5 do
    with_fx :lpf do
      with_fx :compressor, mix: 1 do
        sample :bass_trance_c, finish: 0.1, rate: 0.3, norm: 1
      end
    end
  end
end

define :menuguzik_sm do
  with_fx :lpf do
    with_fx :compressor, mix: 1 do
      sample :ambi_dark_woosh, start: 0.2, finish: 0.6, rate: -1.5, norm: 1
    end
  end
end



live_loop :da do
  with_fx :nrlpf, cutoff: 60 do
    with_fx :slicer,invert_wave: 0, phase: 0.03, mix: 1 do
      menuguzik_lg
      sleep 0.2
      menuguzik_sm
      sleep 1.6
    end
  end
end