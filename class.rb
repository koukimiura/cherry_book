class User

	def initialize(name)

		@name = name #同じインスタンス内で使用可能インスタンス変数化


	end

	def name　#attr_readerの役割　参照可能

		@name

	end

	def name=(value) #attr_writter 書き換え可能

		@name= value

	end
end

user = User.new("abe") #initializeメソッドを呼び出し    userはオブジェクトでありインスタンス


user.name #=>"abe"   参照

user.name = "ABE"    #書き換え

user.name #=>"ABE"


#railsではrails db;migrateの時点で自動でこの処理をしてくれる

