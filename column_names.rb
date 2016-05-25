lines = []
ARGF.each_line { |a| a.chomp; a = a.to_i; lines << a }

for a in 0..lines.length-1
  if lines[a].between?(0, 26)
    c = 0
    for x in "A".."Z"
      c += 1
      if c == lines[a]
        puts "#{x}"
        break
      else
        next
      end
    end

  elsif lines[a].between?(27, 702)
    c = 26
    for y in "A".."Z"
      for x in "A".."Z"
        c += 1
        break if c == lines[a]
      end
      if c == lines[a]
        puts "#{y}#{x}"
        break
      else
        next
      end
    end

  elsif lines[a].between?(703, 18278)
    c = 702
    for z in "A".."Z"
      for y in "A".."Z"
        for x in "A".."Z"
          c += 1
          break if c == lines[a]
        end
        break if c == lines[a]
      end
      if c == lines[a]
        puts "#{z}#{y}#{x}"
        break
      else
        next
      end
    end
  end
end
