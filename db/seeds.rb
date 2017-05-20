# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.find_by(email: "wuxiao@123.com").nil?
u = User.new
u.email = "wuxiao@123.com"
u.password = "111111"
u.password_confirmation = "wuxiao@123.com"
u.is_admin = true
u.save
puts "Admin 已经建立好了，账号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end

# Initialize product

Product.create!(title: "冬茸",
  description: "产自风光无限的竹塘乡蓦乃村
                隶属于澜沧拉祜族自治县
                远山如黛，人家参差，薄雾笼罩
                这里便是冬茸的故乡
                拉祜村民精心人工培植
                清晨采摘，经烤箱烘至半干后自然晒干
                保留了这份清晨的美味和营养
                将这份美味送上餐桌
                炒肉和煲汤味道绝佳
                ",
  price: 10,
  quantity: 5,
  image: open("https://ooo.0o0.ooo/2017/05/17/591c101a38cd2.png")
  )

Product.create!(title: "野生结晶蜂蜜",
  description: "澜沧拉祜族自治县的深林中
                有一个叫做栘依林村的地方
                这里的海拔高达1888米
                人迹罕至、纯静清洁
                村里仅有几十户拉祜人家
                勤劳的拉祜人民利用蜂桶采蜜
                采集了这份来自大山的礼物
                大自然的结晶——野生结晶蜂蜜
                搭配野生滇橄榄食用味道绝佳
                ",
  price: 10,
  quantity: 5,
  image: open("https://ooo.0o0.ooo/2017/05/17/591c117775ebd.png")
  )

Product.create!(title: "野生滇橄榄",
  description: "产自美丽富饶的富邦乡佧朗村
                距离澜沧拉祜族自治县78公里
                大山环绕、鸟语花香
                漫山遍野都是野生滇橄榄树
                勤劳的拉祜村民采撷了这份美妙的果实
                手工去核、蒸气杀菌、自然晒干后可食用
                用其泡水清肺润喉
                与野生蜂蜜搭配食用口感绝妙
                ",
  price: 10,
  quantity: 5,
  image: open("https://ooo.0o0.ooo/2017/05/17/591c11ffc6eed.png")
  )

Product.create!(title: "茨竹笋",
  description: "产自神秘的发展河勐乃村
                这里的森林覆盖率高达77.59%
                天然氧吧，绿意环绕，盎然生机
                美味的茨竹笋在这里生长
                汲取着大自然的天然氧份
                拉祜村民们取其鲜品
                经炭火微熏后自然晒干
                味道偏苦、清热解毒
                用其炒肉味道绝妙
                ",
  price: 10,
  quantity: 5,
  image: open("https://ooo.0o0.ooo/2017/05/17/591c1287f4026.png")
  )
