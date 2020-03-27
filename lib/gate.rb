class Gate
	STATIONS = [:umeda, :juso, :mikuni]
	FARES = [150,190]

	def initialize(name)
		#外部アクセス,保存
		@name = name
	end

	def enter(ticket)
		#ticketに対してstampメソッドを呼び出す。ticketとnameを関連付ける .ex ticket(150円)とname(駅名)を関連付けてどの駅でいくら乗車したか
		ticket.stamp(@name)
	end

	def exit(ticket)
		fare = calc_fare(ticket) #呼び出し
		fare <= ticket.fare #if文と同じ #fareは払われるべき金額、ticket.fareは入場金額
	end

	def calc_fare(ticket)
		from = STATIONS.index(ticket.stamp_at) #乗車 インデックス番号を取得 同じインスタンス
		to = STATIONS.index(@name) #車 インデックス番号を取得
		distance = to.to_i - from.to_i
		FARES[distance - 1] #払われるべき料金の洗い出し
	end
end