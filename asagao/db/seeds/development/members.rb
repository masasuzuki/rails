# coding: utf-8

names = %w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
0.upto(9) do |idx|
  member = Member.create(
    { number: idx + 10,
    name: "John#{idx + 1}",
    full_name: "John Doe#{idx + 1}",
    email: "John#{idx + 1}@example.com",
    birthday: "1981-12-01",
    gender: 0,
    administrator: true,
    password: "password",
    password_confirmation: "password"
    }, without_protection: true)

  fname = Rails.root.join("db/seeds/development", "member#{idx%3+1}.jpg")
  MemberImage.create(
    {member: member,
    data: File.open(fname, "rb").read,
    content_type: "image/jpeg"
    }, without_protection: true)
end