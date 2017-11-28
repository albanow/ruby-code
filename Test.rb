require 'time'
var = "144"
var_2 = "145"
var_3 =  "148"

var.insert(var.length-2, ':')
var_2.insert(var_2.length-2, ':')
var_3.insert(var_3.length-2, ':')

t = Time.parse var
t_2 = Time.parse var_2
t_3 = Time.parse var_3

diff_1 =  (t_3 - t_2) / 60
diff_2 =  (t_3 - t) / 60
diff_3 =  (t_2 - t) / 60

puts "Time: '#{t}'"
puts "Time 2: '#{t_2}'"
puts "Time 3: '#{t_3}'"

puts "Diff t3-t2: '#{(t_3 - t_2)/60}'"
puts "Diff t3-t1: '#{(t_3 - t)/60}'"
puts "Diff t_2-t_1: '#{(t_2 - t)/60}'"

if diff_1 >= 0 and diff_1 <= 3
	cond_1 = true
else
	cond_1 = false
end

if diff_2 >= 0 and diff_2 <= 3
	cond_2 = true
else
	cond_2 = false
end

if diff_3 >= 0 and diff_3 <= 3
	cond_3 = true
else
	cond_3 = false
end

if cond_1 and cond_2 and cond_3
	puts "ALL GOOD"
else
	puts "SOMETHING REALLY BAD"
end
