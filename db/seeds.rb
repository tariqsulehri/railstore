# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = [
    {"id"=>1,
    "title"=>"Samsung Galaxy M30s Dual SIM - 64 GB, 4 GB RAM, 4G LTE - Black, UAE Version",
    "description"=>" Infinity-U Display: A near bezel-less, full-frontal, edge-to-edge screen\r\nTriple Camera: Main camera 48MP (F2.0), Ultra Wide camera 8MP (F2.2), Depth camera 5MP (F2.2)\r\nLong-Lasting Battery: 6,000mAh (typical) battery and 15W Fast Charging ",
    "image_url"=>"https://media.pragprog.com/titles/rails51/code/rails51/depot_a/app/assets/images/7apps.jpg",
    "price"=>0.75e3},
    {"id"=>2,
    "title"=>"OnePlus 7T Pro - 256GB, 8GB RAM, 4G LTE - Haze Blue",
    "description"=>" Exynos 7904 Octa Core\nMain Camera:13MP + 5MP\nFront Camera: 8MP\n6.3” FHD+ TFT Infinity V-Display\n5000 mAh Battery with 3x Fast Charge ",
    "image_url"=>"https://media.pragprog.com/titles/rails51/code/rails51/depot_a/app/assets/images/dcbang.jpg",
    "price"=>0.72e3},
    {"id"=>3,
    "title"=>"Samsung Galaxy M20 Dual SIM 32GB 3GB RAM 4G LTE (UAE Version) - Charcoal Black",
    "description"=>" Infinity-U Display: A near bezel-less, full-frontal, edge-to-edge screen\nTriple Camera: Main camera 48MP (F2.0), Ultra Wide camera 8MP (F2.2), Depth camera 5MP (F2.2)\nLong-Lasting Battery: 6,000mAh (typical) battery and 15W Fast Charging ",
    "image_url"=>"https://media.pragprog.com/titles/rails51/code/rails51/depot_a/app/assets/images/ruby.jpg",
    "price"=>0.45e3},
    {"id"=>5,
    "title"=>"Ruby Performance",
    "description"=>"Ruby Performance Otimizer",
    "image_url"=>"https://media.pragprog.com/titles/rails51/code/rails51/depot_a/app/assets/images/adrpo.jpg",
    "price"=>0.5e3},
    {"id"=>6,
    "title"=>"Michael Kors Women's Darci Rose Gold-Tone Watch MK3192",
    "description"=>"Ships from and sold by Amazon.ae.\r\nMICHAEL KORS women watch - Round stainless steel case (diam. 39 mm) in polished rose gold finishing - 5 ATM water pressure resistance construction - Bezel with clear crystals\r\nStainless steel bracelet in polished rose gold finishing - Locking clasp with push button\r\nRose gold dial with rose gold indexes - 3 hand movement - Rose gold hands - Mineral glass\r\nPacked in MICHAEL KORS gift box\r\nAccuracy is +/-20 seconds per month",
    "image_url"=>"https://images-na.ssl-images-amazon.com/images/I/818J-TOy%2BPL._AC_SY445_.jpg",
    "price"=>0.55e3}    
]
    
    
products.each do |product|
    Product.create product
end