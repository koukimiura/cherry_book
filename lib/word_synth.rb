
# require 'logger'


class WordSynth

	def initialize
		@effects = []
	end

	def add_effect(effect) #Effectrs.newのインスタンスが渡される
		#test_play_with_many_effectsメソッドをするために配列化と繰り返し

		@effects << effect


	end

	def play(original_words)
		# 配列が0個でも injectメソッドは引数の値（ここではoriginal_words)をそのまま返してくれる.
		@effects.inject(original_words) do |words, effect|

			#結果的に Effects.call('Ruby is fun!') #1回目はplayメソッドの引数がinjectの引数に入るが2回目以降はブロック処理の戻り値がinjectの引数に入る
			effect.call(words)
		end
	end
end