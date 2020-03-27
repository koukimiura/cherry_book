class Ticket
	attr_reader :fare, :stamp_at

 def initialize(fare)
 	#外部アクセス、保存
 	@fare = fare

 end

 def stamp(name)
 	#駅名をインスタンスに保持
 	stamp_at = name
 end


end



# class User

# 	def initialize(name)

# 		@name = name

# 	end

# 	def hello
# 		"Hello #{@name}"
# 	end

# end


# user = User.new("abe")

# user.hello #=>"Hello #{@name}" 同じインスタンス内部


