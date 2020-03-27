

# split StringをArray化

text = "拓巳, kouki, japan"

text.split(',')

text #=> ["拓巳", "kouki", "japan"]


#gsub第一引数にマッチした文字列を第二の文字列に変更する

text = "拓巳, kouki, japan"

text.gsub(',' ':')

text #=> "拓巳:kouki:apan"
