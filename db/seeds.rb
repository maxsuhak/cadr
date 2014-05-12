# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Admin.create(email: "maxsuhak@gmail.com", password: "1q2w3e4r")

Tree.create([
      { title: "Management Team",                  img: File.open(File.join(Rails.root,"/app/assets/images/department/management.jpg")) },
      { title: "Finance Department",               img: File.open(File.join(Rails.root,"/app/assets/images/department/finance.jpg"))    },
      { title: "HR Department",                    img: File.open(File.join(Rails.root,"/app/assets/images/department/hr.jpg"))         },
      { title: "Business Development Department",  img: File.open(File.join(Rails.root,"/app/assets/images/department/business.jpg"))   },
      { title: "Admin Department",                 img: File.open(File.join(Rails.root,"/app/assets/images/department/admin.jpg"))      },
      { title: "RoR Department",                   img: File.open(File.join(Rails.root,"/app/assets/images/department/ror.jpg"))        },
      { title: "Java Department",                  img: File.open(File.join(Rails.root,"/app/assets/images/department/java.jpg"))       },
      { title: "ASP.NET Department",               img: File.open(File.join(Rails.root,"/app/assets/images/department/asp.jpg"))        },
      { title: "QA Department",                    img: File.open(File.join(Rails.root,"/app/assets/images/department/qa.jpg"))         },
      { title: "PHP Department",                   img: File.open(File.join(Rails.root,"/app/assets/images/department/php.jpg"))        },
      { title: "Front-end Department",             img: File.open(File.join(Rails.root,"/app/assets/images/department/front-end.jpg"))  },
      { title: "Mobile Department",                img: File.open(File.join(Rails.root,"/app/assets/images/department/mobile.jpg"))     },
      { title: "Python Department",                img: File.open(File.join(Rails.root,"/app/assets/images/department/python.jpg"))     },
      { title: "Web-design Department",            img: File.open(File.join(Rails.root,"/app/assets/images/department/web.jpg"))        },
      { title: "Rare Specialists",                 img: File.open(File.join(Rails.root,"/app/assets/images/department/rare.jpg"))       }
      ])

100.times { |i| Dashboard.create(title: "example: #{i}", desc: BetterLorem.p(5, false, false)) }

Post.create(title: "example", email: "example@svitla.com")

User.create(email: "example@svitla.com", first_name: "first_name", last_name: "last_name", avatar_url: File.open(File.join(Rails.root,"/app/assets/images/default.png"))
            tree_id: 1, sex: "male", birthday: "12.12.2014", 
            home_tel: "+38 (0XX) XXX XX XX", mobile_tel: "+38 (0XX) XXX XX XX", work_tel: "+38 (0XX) XXX XX XX", 
            lenguage: "ru", skype: "skype", desc: "example", password: "1q2w3e4r")
