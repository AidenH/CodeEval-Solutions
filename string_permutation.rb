# Add function to fix error with repeating letters!

print "File name (including extension): "
file_name = gets.chomp

lines = IO.readlines(file_name)
lines.each { |a| a.chomp! }

puts "\n"
for a in 0..( lines.length - 1 )
	orig_string = lines[a].to_s

	final_array = []

	string_a = orig_string.scan /\w/
	permuted_string = string_a.permutation.to_a
	permuted_string.each { |a| final_array << a.join }
	final_array.sort!
	final_array.each { |a| print a == final_array.last ? "#{a}\n" : "#{a}, " }
end
