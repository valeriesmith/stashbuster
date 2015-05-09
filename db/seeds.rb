# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# seed data for users
users = User.create([{username: 'valerie', email: 'valeriesmith@mac.com', password: 'benoit1211'}, {username: 'benoit', email: 'little_yapper@woof.com', password: 'chicken'}, {username: 'ian', email: 'iansmithmac@mac.com', password: 'xbox'}])

# seed data for fabric
white_eyelet = Fabric.create(color: 'white' ,length: 78 ,width: 60 ,price: 7.95 ,content: 'cotton/linen')
black_plisse = Fabric.create(color: 'black' ,length: 72 ,width: 54 ,price: 12.99 ,content: 'cotton/spandex')
jade_voile =  Fabric.create(color: 'jade/metallic' ,length: 51 ,width: 60 ,price: 25.00 ,content: 'cotton/silk/lurex')
orange_fleece =  Fabric.create(color: 'orange' ,length: 36 ,width: 60 ,price: 9.99 ,content: 'polyester')
cotton_duck =  Fabric.create(color: 'carhartt orange' ,length: 36 ,width: 60 ,price: 6.99 ,content: 'cotton')


# seed data for patterns
colette_sencha = Pattern.create(company:'Colette', category: 'top', size: 'multi')
selfdrafted_culotte = Pattern.create(company: 'Self Drafted', category: 'pant', size: 'custom')
vogue_1442 = Pattern.create(company: 'Vogue', category: 'top', size: '12')
mcalls_6666 = Pattern.create(company: 'McCalls', category: 'dog coat', size: 'large')

 

