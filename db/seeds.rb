
# seed data for fabric

fabrics = Fabric.create([{name: 'black plisse', color: 'black' ,length: 72 ,width: 54 ,price: 12.99 ,content: 'cotton/spandex', source: 'Mood Fabrics', swatch: File.read("public/images/black plisse.jpg")},{name: 'white eyelet', color: 'white' ,length: 78 ,width: 60 ,price: 7.95 ,content: 'cotton/linen', source: 'Mood Fabrics', swatch: File.read("public/images/black plisse.jpg")},{name: 'jade embroidered voile', color: 'jade/metallic' ,length: 51 ,width: 60 ,price: 25.00 ,content: 'cotton/silk/lurex', source: 'Mood Fabrics',swatch: File.read("public/images/jade embroidered voile.jpg")},{name: 'orange polarfleece', color: 'orange' ,length: 36 ,width: 60 ,price: 9.99 ,content: 'polyester', source: 'Seattle Fabrics', swatch: File.read("public/images/black plisse.jpg")},{name: 'cotton duck', color: 'carhartt orange' ,length: 36 ,width: 60 ,price: 6.99 ,content: 'cotton', source: 'JoAnn Fabrics and Crap', swatch: File.read("public/images/black plisse.jpg")}])

# seed data for patterns
patterns = Pattern.create([{company: 'Colette', category: 'top', size: 'multi'},{company: 'Self Drafted', category: 'pant', size: 'custom'},{company: 'Vogue', category: 'top', size: '12'},{company: 'McCalls', category: 'dog coat', size: 'large'}])

# seed data for users

users = User.create([{username: 'valerie', email: 'valeriesmith@mac.com', password: 'benoit1211'}, {username: 'benoit', email: 'little_yapper@woof.com', password: 'chicken'}, {username: 'ian', email: 'iansmithmac@mac.com', password: 'xbox'}])

users.each do |i|
	fabrics.each do |j|
		i.fabrics << j
	end
	patterns.each do |k|
		i.patterns << k
	end
end





