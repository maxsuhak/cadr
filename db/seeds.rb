# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

User.create(email: "maxsuhak@gmail.com", password: "1q2w3e4r", first_name: "max", last_name: "suhak", birthday: "1992-04-24", lenguage: "ru")

Admin.create(email: "maxsuhak@gmail.com", password: "1q2w3e4r")

Tree.create([{title: "Management Team", img: "http://www.rrcgroup.com/Portals/0/images/executive_team.jpg"}, 
            {title: "Finance Department", img: "http://matthewsnc.gov/portals/0/Departments/Finance/finance.jpg"}, 
            {title: "HR Department", img: "http://www.aamu.edu/administrativeoffices/hrservices/Documents/human-resources2.jpg"}, 
            {title: "Business Development Department", img: "http://diysite.org/wp-content/uploads/2013/12/cropped-Business-Development-GlobalGoodMedia-Service-Offering-and-Lead-Gen.jpg"}, 
            {title: "Admin Department", img: "http://www.nwhn.net.au/admin/file/content29/c1/support%203.jpg"}, 
            {title: "RoR Department", img: "http://blog.bounceweb.com/wp-content/uploads/2010/09/Tools-for-Ruby-on-Rails-logo.jpg"}, 
            {title: "Java Department", img: "http://bestinlinux.com/wp-content/uploads/2013/06/1191021_98415115.jpg"}, 
            {title: "ASP.NET Department", img: "http://www.bigsoft.by/Media/Default/images/aspnet.png"}, 
            {title: "QA Department", img: "http://intermountainhealthcare.org/services/lab-services/central-lab/PublishingImages/QA%20240x240.jpg"}, 
            {title: "PHP Department", img: "http://apl.vn/wp-content/uploads/2013/08/senior-php-developer.jpg"}, 
            {title: "Front-end Department", img: "https://s3.amazonaws.com/mixture-mixed/161/355/public/images/front-end-dan.svg"}, 
            {title: "Mobile Department", img: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQqEV69LjmZnM3nROsXXO6SZqy1WLMzf4pUnGnNJJ5EkMjQKmyrDg"},
            {title: "Python Department", img: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRlUVF3MT_SwBdNXgENX3RXgwuxZalt9SfuHqQa1h7CXu7GEdOy"}, 
            {title: "Web-design Department", img: "http://www.ects.ru/images/462/Image/title.jpg"}, 
            {title: "Rare Specialists", img: "http://www.qtcc.org.au/images/links/rare-spares.jpg"}])