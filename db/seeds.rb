# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 관리자 계정의 생성 및 역할지정(관리자가 생성된 후 보안상의 이유로 비밀번호는 반드시 다른 것으로 변경하기 바람.)
# admin_user = User.create( name: "관리자", email: 'admin@email.com', password: '12345678', confirmed_at: Time.now )
User.create(email: "torerov39@naver.com", username: "tore" , password: '12341234')
Category.create(user_id: "1", color: "#ff5000", title: "Hello")
Category.create(user_id: "1", color: "#333", title: "Second")

# Bookmark.create(category_id: "1", title: "http://www.naver.com")
# Bookmark.create(category_id: "2", title: "http://www.daum.net")


# admin_user.add_role :admin
