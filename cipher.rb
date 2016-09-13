message = "This is a test of the cipher!"
m_conv_upcase = message.upcase.split.join.scan(/[a-zA-Z]{1,5}/)

def filler(m_conv_upcase)
	m_conv_upcase.each do |i|
		if i.length < 5
			while i.length < 5
				i << 'X'
			end
		end
	end
end

m_conv_filler = filler(m_conv_upcase)
 p m_conv_filler

def convert_to_num(m_conv_filler)
	hash = Hash.new
	('A'..'Z').map do |i|
		hash[i] = i.ord - 64
	end

	array = Array.new
	array2 = Array.new

#	p m_conv_filler
	m_conv_filler.each do |i|
		i.scan(/./) do |x|
			array << hash[x]
		end	
	end
	array.each_slice(5) { |e| array2 << e }
	p	array2
end

converted_to_n = convert_to_num(m_conv_filler)
#	p m_conv_filler
# p converted_to_n 
