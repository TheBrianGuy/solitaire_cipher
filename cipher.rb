message = "This is a test of the cipher!"
m_conv_upcase = message.split.join.scan(/[a-zA-Z]{1,5}/)

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
