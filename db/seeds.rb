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
  image: open("https://ws1.sinaimg.cn/large/006tNbRwgy1ffxmhe8mz5j31kw14h1kz.jpg")
  particulars: "隶属于澜沧拉祜族自治县
  远山如黛，人家参差，薄雾笼罩
  这里便是冬茸的故乡
  拉祜村民精心人工培植
  清晨采摘，经烤箱烘至半干后自然晒干
  保留了这份清晨的美味和营养
  将这份美味送上餐桌
  炒肉和煲汤味道绝佳
  < img alt=\"\" src=\"https://ooo.0o0.ooo/2017/05/26/5927f6b99149e.jpg\">",
  category_name: "润",
  )

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
    image: open("https://ws1.sinaimg.cn/large/006tNbRwgy1ffxmhe8mz5j31kw14h1kz.jpg")
    particulars: "隶属于澜沧拉祜族自治县
    远山如黛，人家参差，薄雾笼罩
    这里便是冬茸的故乡
    拉祜村民精心人工培植
    清晨采摘，经烤箱烘至半干后自然晒干
    保留了这份清晨的美味和营养
    将这份美味送上餐桌
    炒肉和煲汤味道绝佳
    < img alt=\"\" src=\"https://ooo.0o0.ooo/2017/05/26/5927f6b99149e.jpg\">",
    category_id: "润",
    )
