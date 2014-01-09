# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

User.create(email: "maxsuhak@gmail.com", password: "1q2w3e4r", first_name: "max", last_name: "suhak", birthday: "1992-04-24", lenguage: "ru")

Admin.create(email: "maxsuhak@gmail.com", password: "1q2w3e4r")

Tree.create([{title: "Management Team"}, {title: "Finance Department"}, {title: "HR Department"}, {title: "Business Development Department"}, 
            {title: "Admin Department"}, {title: "RoR Department"}, {title: "Java Department"}, {title: "ASP.NET Department"}, 
            {title: "QA Department"}, {title: "PHP Department"}, {title: "Front-end Department"}, {title: "Mobile Department"},
            {title: "Python Department"}, {title: "Web-design Department"}, {title: "Rare Specialists"}])