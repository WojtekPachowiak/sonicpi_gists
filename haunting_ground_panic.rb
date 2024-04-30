set_volume! 0.5


live_loop :bells_tiktok  do
  use_synth_defaults release: 0.4
  g1 =0.2
  g2= 0.65
  use_synth :beep
  
  with_fx :reverb, mix: 0.3, room: 0.4, damp: 1 do
    play :g6
    sleep g1
    play :c7
    sleep g2
    
    play :g6
    sleep g1
    play :gb6
    sleep g2
    
    play :g6
    sleep g1
    play :c7
    sleep g2
    
    play :g6
    sleep g1
    play :cs7
    sleep g2
  end
end


/
live_loop :heart_beat do

  with_fx :reverb, room: 0.7,damp: 1 do
    with_fx :distortion,mix: 1, distort: 0.6 do
      with_fx :compressor, slope_below: 2, slope_above: 0.1, relax_time: 0.1, threshold: 0.1 do
        use_synth :beep
        use_synth_defaults attack: 0, cutoff: 50
        play :a1, release: 0.7
        sleep 0.5
        play :a1, amp: 0.15,release: 0.05
        sleep 0.8
      end
    end
  end
end/

live_loop :portmanteu_synth do
  use_synth :saw
  
  slidetime = 8
  note = chord(:b4,:augmented)
  use_synth_defaults sustain: 60 * 60 * 2, note_slide: slidetime
  with_fx :compressor do
    with_fx :gverb do
      n = play note
      
      loop do
        control n, note: note -12
        sleep slidetime
        control n, note: note
        sleep slidetime
      end
    end
  end
end