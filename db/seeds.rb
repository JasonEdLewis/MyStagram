# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ==================== USERS ======================== #
Jack = User.create(username: "Jack", password:"acb123")
Jill = User.create(username: "Jill", password:"acb123")
Bill = User.create(username: "Bill", password:"acb123")
Phil = User.create(username: "Phil", password:"acb123")
Will = User.create(username: "Will", password:"acb123")
Eric = User.create(username: "Eric", password:"acb123")
Derick = User.create(username: "Derick", password:"acb123")
Ted = User.create(username: "Ted", password:"acb123")
charlie = User.create(username:"Charlie",password:"acb123" )
jeff = User.create(username:"Jeff",password:"acb123")
ali = User.create(username:"Ali",password:"acb123")
josh = User.create(username:"Josh",password:"acb123")

# ==================== Follows ======================== #
users = [Jack,Jill,Bill,Phil,Will,Eric,Derick,Ted, charlie, jeff, ali, josh]
 
i= 0
while i< users.length do 

    Follow.create(follower: users[i],followee: users[i+1])
i += 1
end







