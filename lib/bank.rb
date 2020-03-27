require './lib/deep_freezable'

class Bank
	extend DeepFreezable
	#test側で定数を参照
	CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end
