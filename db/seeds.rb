# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Admin.create(email: "maxsuhak@gmail.com", password: "1q2w3e4r")

Tree.create([{title: "Management Team"}, 
            {title: "Finance Department"}, 
            {title: "HR Department"}, 
            {title: "Business Development Department"}, 
            {title: "Admin Department"}, 
            {title: "RoR Department"}, 
            {title: "Java Department"}, 
            {title: "ASP.NET Department"}, 
            {title: "QA Department"}, 
            {title: "PHP Department"}, 
            {title: "Front-end Department"}, 
            {title: "Mobile Department"},
            {title: "Python Department"}, 
            {title: "Web-design Department"}, 
            {title: "Rare Specialists"}])

Dashboard.create(title: "example", desc: BetterLorem.p(5, false, false))

Post.create(title: "example", email: "example@svitla.com")

User.create(email: "example@svitla.com", first_name: "first_name", last_name: "last_name", tree_id: 1, sex: "male", birthday: "12.12.2014", home_tel: "+38 (0XX) XXX XX XX", mobile_tel: "+38 (0XX) XXX XX XX", work_tel: "+38 (0XX) XXX XX XX", lenguage: "ru", skype: "skype", desc: "example", password: "1q2w3e4r")