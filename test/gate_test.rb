
require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'


class GateTest < Minitest::Test

	def setup
		#インスタンス変数に変更して情報を保持する
		@umeda = Gate.new(:umeda) #シンブルのほうが読み込み早い
		@juso = Gate.new(:juso)
		@mikuni = Gate.new(:mikuni)
	end

	def test_umeda_to_juso
		ticket = Ticket.new(150)
		@umeda.enter(ticket)
		assert @juso.exit(ticket)
	end

	def test_umeda_to_mikuni_when_fare_is_not_enought
		ticket = Ticket.new(150)
		@umeda.enter(ticket)
		refute @mikuni.exit(ticket)
	end

	def test_umeda_to_mikuni_when_fare_is_enought
		ticket = Ticket.new(190)
		@umeda.enter(ticket)
		assert @mikuni.exit(ticket)
	end

	def test_juso_to_mikuni
		ticket = Ticket.new(150)
		@juso.enter(ticket)
		assert @mikuni.exit(ticket)
	end
end