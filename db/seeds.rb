# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
LinkLang.create(link:'home', lang:'English', types:'home')
LinkLang.create(link:'首页', lang:'Chinese', types:'home')
LinkLang.create(link:'インデックス', lang:'Japanese', types:'home')
LinkLang.create(link:'work', lang:'English', types:'work')
LinkLang.create(link:'工作', lang:'Chinese', types:'work')
LinkLang.create(link:'作品', lang:'Japanese', types:'work')
LinkLang.create(link:'interest', lang:'English', types:'interest')
LinkLang.create(link:'兴趣', lang:'Chinese', types:'interest')
LinkLang.create(link:'趣味', lang:'Japanese', types:'interest')
SelfIntro.create(name: 'Weicheng Ma', university: 'City University of New York', email: 'Email: weicheng.ma1991@gmail.com', phone: 'Phone: +1(347) 933-3468', intro:'', lang: 'English')
SelfIntro.create(name: '马伟诚', university: '纽约城市大学', email: '电子邮件: weicheng.ma1991@gmail.com', phone: '电话: +1(347) 933-3468', intro:'', lang: 'Chinese')
SelfIntro.create(name: '馬偉誠', university: 'ニューヨーク市立大学', email: 'メール: weicheng.ma1991@gmail.com', phone: '携帯: +1(347) 933-3468', intro:'', lang: 'Japanese')
