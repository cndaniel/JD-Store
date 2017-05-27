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
u.name = "botong"
u.password = "111111"
u.password_confirmation = "111111"
u.is_admin = true
u.save
puts "Admin 已经建立好了，账号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end

# Initialize product

Product.create!(title: "冬茸",
  description: "属大球盖菇，富含氨基酸、维生素等多种物质",
  price: 98,
  quantity: 98,
  category: "源系",
  image: open("https://ooo.0o0.ooo/2017/05/27/59294543a294f.jpg"),
  particulars: "隶属于澜沧拉祜族自治县
                远山如黛，人家参差，薄雾笼罩
                这里便是冬茸的故乡
                拉祜村民精心人工培植
                清晨采摘，经烤箱烘至半干后自然晒干
                保留了这份清晨的美味和营养
                将这份美味送上餐桌
                炒肉和煲汤味道绝佳",
  )

  Product.create!(title: "竹荪",
    description: "“草八珍”之一，生态种植，深山品种，营养丰富，味道浓郁",
    price: 98,
    quantity: 98,
    category: "源系",
    image: open("https://ooo.0o0.ooo/2017/05/27/59295262d53b9.jpg"),
    particulars: "“草八珍”之一，生态种植，深山品种，营养丰富，味道浓郁",
    )

  Product.create!(title: "草果",
    description: "云南屏边大围山深处种植，独特的自然环境使当地的草果具有更加浓郁的香气",
    price: 98,
    quantity: 98,
    category: "臻系",
    image: open("https://ooo.0o0.ooo/2017/05/27/592952986667b.jpg"),
    particulars: "云南屏边大围山深处种植，独特的自然环境使当地的草果具有更加浓郁的香气",
    )

  Product.create!(title: "小洋芋",
    description: "拉祜山小洋芋即小土豆，是澜沧县蜜蜂崖特有的食材",
    price: 98,
    quantity: 98,
    category: "臻系",
    image: open("https://ooo.0o0.ooo/2017/05/27/5929529eae6ac.jpg"),
    particulars: "拉祜山小洋芋即小土豆，是澜沧县蜜蜂崖特有的食材。
    澜沧县蜜蜂崖主要居住着爱伲族，这里地势高、鲜有外人至，
    所以这里的风景环境都很优美，这里人们从祖祖辈辈便开始开始种植小洋芋，
    一代一代传于至今，没有大棚，没有农药，这里种出的小洋芋个头小、口感极糯，
    有浓郁的香味，和市面上的土豆有着天壤之别",
    )

  Product.create!(title: "阳春砂仁",
    description: "我国四大南药之一，被视为“医林珍品”，对脾胃有很好的调理作用，可做药材，也可作调料",
    price: 98,
    quantity: 98,
    category: "臻系",
    image: open("https://ooo.0o0.ooo/2017/05/27/592952a6496aa.jpg"),
    particulars: "我国四大南药之一，被视为“医林珍品”，对脾胃有很好的调理作用，可做药材，也可作调料",
    )

  Product.create!(title: "野生滇橄榄",
    description: "滇橄榄又名云南余甘子，是大戟科落叶灌木或乔木植物余甘子的果实",
    price: 98,
    quantity: 98,
    category: "臻系",
    image: open("https://ooo.0o0.ooo/2017/05/27/592952aaef2d7.jpg"),
    particulars: "橄榄多产于亚洲热带地区，我国南部较为常见。滇橄榄又名云南余甘子，
    是大戟科落叶灌木或乔木植物余甘子的果实。植物春季开花，花小，
    单生黄色，雌雄同株，果实呈扁球形，熟时呈红色。橄榄为一种重要的药食两用植物资源，
    其具有清热利咽，润肺化痰，生津止渴之功效。现代研究还表明，滇橄榄具有抗氧化、
    清除自由基、抗肿瘤、防衰老等作用。可与蜂蜜一起用温水泡食，也可生食或单独温水泡食。
    初尝橄榄味道酸涩，久嚼后方觉得满口清香，回味甘甜。",
    )

  Product.create!(title: "拉祜山野生蜂蜜",
    description: "我们的蜂蜜源自澜沧县蜜蜂崖",
    price: 98,
    quantity: 98,
    category: "润系",
    image: open("https://ooo.0o0.ooo/2017/05/27/592952d682040.jpg"),
    particulars: "我们的蜂蜜源自澜沧县蜜蜂崖，地如其名，这里的蜂蜜天然无污染，
    是山里的人们从人迹罕至的山顶采回来的百花之蜜，这里花没有被农药和垃圾污染，
    采回来的是一饼一饼的带着蜂蜜的蜂饼，通过用干净的纱布过滤，就得到晶莹剔透、
    香甜可口的天然蜂蜜，无任何添加剂，纯纯正正的蜂蜜",
    )

  Product.create!(title: "手工红糖",
    description: "云南本地老品种甘蔗，现取现榨汁，古法熬制，口味纯正，无任何添加，有特殊砂纹，不同于普通红糖",
    price: 98,
    quantity: 98,
    category: "臻系",
    image: open("https://ooo.0o0.ooo/2017/05/27/59295518d3688.jpg"),
    particulars: "云南本地老品种甘蔗，现取现榨汁，古法熬制，口味纯正，无任何添加，有特殊砂纹，不同于普通红糖",
    )

  Product.create!(title: "茨竹笋",
    description: "产自神秘的发展河勐乃村",
    price: 98,
    quantity: 98,
    category: "源系",
    image: open("https://ooo.0o0.ooo/2017/05/27/5929554799e8c.jpg"),
    particulars: "产自神秘的发展河勐乃村
            这里的森林覆盖率高达77.59%
            天然氧吧，绿意环绕，盎然生机
            美味的茨竹笋在这里生长
            汲取着大自然的天然氧份
            拉祜村民们取其鲜品
            经炭火微熏后自然晒干
            味道偏苦、清热解毒
            用其炒肉味道绝妙
            ",
            )

  Product.create!(title: "小红米水酒",
    description: "佤族小红米俗称糁子",
    price: 98,
    quantity: 98,
    category: "润系",
    image: open("https://ooo.0o0.ooo/2017/05/27/592956655f16b.jpg"),
    particulars: "佤族小红米俗称糁子，云南澜沧县拉巴乡佤族人民已世世代代种植千年，
    当地佤族人民将新鲜的小红米放入沸水中煮透，焖干晾凉之后用佤族世代相传的土酒药与
    其搅拌均匀放入瓦罐之中，炉火烤制的芭蕉叶将其密封，几个月后，将发酵后的小红米放
    入竹筒之内，倒入甘甜的山泉水，待山泉水吸收透小红米的精华，醇香的佤族小红米水酒
    便制成了。热情好客的佤族人民便用这醇香的美酒招待远道而来的客人",
    )
