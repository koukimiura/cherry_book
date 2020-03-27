module DeepFreezable
	def deep_freeze(array_or_hash)
		case array_or_hash

		when Array
			#配列の各要素をfreeze
			array_or_hash.each do |element|
				element.freeze
			end
			# 配列自信をfreeze (かつ,これがメソッドの戻り値)
			array_or_hash.freeze

		when Hash 

			#hashのkeyとvalueをfreeze
			array_or_hash.each do |key, value|
				key.freeze
				value.freeze
			end
			# hash自信をfreeze (かつ,これがメソッドの戻り値)
			array_or_hash.freeze
		end


	end

end