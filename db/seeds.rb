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
 
users.each_with_index do |user, x|
    i = 0
    while i < users.length do 
        if i != x
            Follow.create(follower: users[i], followee: user)
        end
    i += 1
    end
end

# ==================== POST ======================== #

             # ======== Jack's Post ========= $
post1 = Post.create(user: Jack, picture:"https://unsplash.com/photos/DEJyB6FfG0E" , likes:0)
post2 = Post.create(user: Jack, picture:"https://unsplash.com/photos/U1FLk5DykQs" , likes:0)
post3 = Post.create(user: Jack, picture:"https://unsplash.com/photos/AC8mfWPV-7g" , likes:0)
post4 = Post.create(user: Jack, picture:"https://unsplash.com/photos/w_wDNUpq84E" , likes:0)
post5 = Post.create(user: Jack, picture:"https://unsplash.com/photos/qbpM-CLCRtg" , likes:0)


             # ======== Teds Post ========= $


post7 = Post.create(user: Ted , picture: "https://unsplash.com/photos/Bgwbv5xvmjc", likes:0)
post8 = Post.create(user: Ted , picture: " https://unsplash.com/photos/fIHozNWfcvs", likes:0)
post9 = Post.create(user: Ted , picture: "https://unsplash.com/photos/I9j8Rk-JYFM ", likes:0)
post10 = Post.create(user:Ted  , picture:"https://unsplash.com/photos/qoFQxxuk3QY " , likes:0)
post11 = Post.create(user:Ted  , picture:" https://unsplash.com/photos/s4dfrh7hdDU" , likes:0)
post12 = Post.create(user:Ted  , picture:"https://unsplash.com/photos/It0DCaCBr40 " , likes:0)
post13 = Post.create(user: Ted , picture:"https://unsplash.com/photos/KR84RpMCb0w ", likes:0)
post14 = Post.create(user: Ted , picture:" https://unsplash.com/photos/botc0a_kRzU", likes:0)
post15 = Post.create(user: Ted , picture:"https://unsplash.com/photos/_Vuvc7-4ToA ", likes:0)
post16 = Post.create(user: Ted , picture:"https://unsplash.com/photos/Uk2b7mxBi9E " , likes:0)
post17 = Post.create(user: Ted , picture:"https://unsplash.com/photos/XMFZqrGyV-Q " , likes:0)

                # ======== Eric's Post ========= $

post18 = Post.create(user: ali, picture: "https://unsplash.com/photos/DSB1MZWsGco", likes:0)
post19 = Post.create(user: ali, picture: "https://unsplash.com/photos/bSQwINgkf4g", likes:0)
post20 = Post.create(user: ali, picture: " https://unsplash.com/photos/-4fk5Dznzfg", likes:0)
post21 = Post.create(user: ali, picture: "https://unsplash.com/photos/mL2eRvBJn5U ", likes:0)
post23 = Post.create(user: ali, picture: " https://unsplash.com/photos/8yCmQODY2SY", likes:0)
post24 = Post.create(user: ali, picture: " https://unsplash.com/photos/pe3uN32Q6H4", likes:0)
post25 = Post.create(user: ali, picture: " https://unsplash.com/photos/JWZ0aDnrJ1Y", likes:0)
post26 = Post.create(user: ali, picture:"https://unsplash.com/photos/_qADvinJi20 " , likes:0)
post27 = Post.create(user: ali, picture:" https://unsplash.com/photos/bCqxxcF_wgY" , likes:0)
post28 = Post.create(user: ali, picture:" https://unsplash.com/photos/_wbpK1imCrs" , likes:0)
post29 = Post.create(user: ali, picture:" https://unsplash.com/photos/BuMVDXZTGn0", likes:0)
post30 = Post.create(user: ali , picture:"https://unsplash.com/photos/eAzbzsOJWAU ", likes:0)
post31 = Post.create(user: ali , picture:"https://unsplash.com/photos/vWZLoRdWgzY ", likes:0)
post32 = Post.create(user: ali , picture:"https://unsplash.com/photos/mb7jZ4RFD4o " , likes:0)
post33 = Post.create(user: ali , picture:"https://unsplash.com/photos/sOsPOjp9TOw" , likes:0)


# ==================== COMMENTS ======================== #



comments =["You're an awesome friend.","You're a gift to those around you.","You're a smart cookie.","You are awesome!","You have impeccable manners.","I like your style.","You have the best laugh.","I appreciate you.","You are the most perfect you there is.","You are enough.","You're strong.","Your perspective is refreshing.","I'm grateful to know you.","You light up the room.","You deserve a hug right now.","You should be proud of yourself.","You're more helpful than you realize.","You have a great sense of humor.","You've got an awesome sense of humor!","You are really courageous.","Your kindness is a balm to all who encounter it.","You're all that and a super-size bag of chips.","On a scale from 1 to 10, you're an 11.","You are strong.","You're even more beautiful on the inside than you are on the outside.","You have the courage of your convictions.","I'm inspired by you.","You're like a ray of sunshine on a really dreary day.","You are making a difference.","Thank you for being there for me.","You bring out the best in other people."]


comments.each do |c|
    ran_p = rand(0...33)
    ran_u = rand(0...12)
    Comment.create(post_id:ran_p , content: c, followee_id:ran_u )
end

