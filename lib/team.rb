require './lib/deep_freezable'


class Team

	extend DeepFreezable
	#test側で定数を参照
	COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end