lines = []
ARGF.each_line { |a| a.chomp!; lines << a}

for a in 0..( lines.length - 1 )
	orig_string = lines[a].to_s

	final_array = []

	string_a = orig_string.scan /\w/
	permuted_string = string_a.permutation.to_a
	permuted_string.each { |a| final_array << a.join }
	final_array.sort!
	final_array.each { |a| print a == final_array.last ? "#{a}\n" : "#{a}," }
end
