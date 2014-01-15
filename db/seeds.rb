# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Admin.create(email: "maxsuhak@gmail.com", password: "1q2w3e4r")

Tree.create([{title: "Management Team", img: "department/management.jpg"}, 
            {title: "Finance Department", img: "department/finance.jpg"}, 
            {title: "HR Department", img: "department/hr.jpg"}, 
            {title: "Business Development Department", img: "department/business.jpg"}, 
            {title: "Admin Department", img: "department/admin.jpg"}, 
            {title: "RoR Department", img: "department/ror.jpg"}, 
            {title: "Java Department", img: "department/java.jpg"}, 
            {title: "ASP.NET Department", img: "department/asp.jpg"}, 
            {title: "QA Department", img: "department/qa.jpg"}, 
            {title: "PHP Department", img: "department/php.jpg"}, 
            {title: "Front-end Department", img: "department/front-end.jpg"}, 
            {title: "Mobile Department", img: "department/mobile.jpg"},
            {title: "Python Department", img: "department/python.jpg"}, 
            {title: "Web-design Department", img: "department/web.jpg"}, 
            {title: "Rare Specialists", img: "department/rare.jpg"}])