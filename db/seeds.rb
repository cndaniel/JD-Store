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
  image: open("https://ooo.0o0.ooo/2017/05/27/59294543a294f.jpg"),
  particulars: "隶属于澜沧拉祜族自治县
                远山如黛，人家参差，薄雾笼罩
                这里便是冬茸的故乡
                拉祜村民精心人工培植
                清晨采摘，经烤箱烘至半干后自然晒干
                保留了这份清晨的美味和营养
                将这份美味送上餐桌
                炒肉和煲汤味道绝佳"
                https://ooo.0o0.ooo/2017/05/27/592945d669837.jpg
                https://ooo.0o0.ooo/2017/05/27/5929460f93e16.jpg
                https://ooo.0o0.ooo/2017/05/27/592945e2d0b3a.jpg,
  category: "源系",
  )

  
