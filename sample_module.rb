
module Loggable
	#moduleのルール
	#インスタンスを制裁できない
	#他のモジュールやクラスを継承できない。


	#インスタンスメソッドとして呼び出される
	def log(text)

		puts "[LOG] #{text}"
	end
end



class Product

	#上で作ったモジュールをincludeする　反映させる
	include Loggable

	def title
		# log メソッドはLoggableモジュールで定義したメソッド
		log 'title is called.' #引数
		'A greate movie'
	end
end


class User
	#上で作ったモジュールをincludeする　反映させる
	include Loggable

	def name
		#Loggableモジュールのメソッドが使える
		log 'name is called.'
		'Alice'	
	end
end



product = Product.new

product.title #=> [LOG] title is called.
			  #=> A greate movie

user = User.new

user.name #=> [LOG] name is called.
			  #=> Alice

