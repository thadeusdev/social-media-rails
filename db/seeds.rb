# User seed data
User.create!(name: "John Doe", email: "johndoe@example.com", password: "password")
User.create!(name: "Jane Doe", email: "janedoe@example.com", password: "password")

# Post seed data
users = User.all
users.each do |user|
  post = user.posts.create!(content: "This is a sample post.")
end

# Comment seed data
posts = Post.all
posts.each do |post|
  user = User.find(rand(1..User.count))
  comment = post.comments.create!(content: "This is a sample comment.", user_id: user.id)
end

# Like seed data
posts = Post.all
posts.each do |post|
  user = User.find(rand(1..User.count))
  like = post.likes.create!(user_id: user.id)
end

# Follow seed data
users = User.all
users.each do |user|
  follow = user.follows.create!(following_id: User.find(rand(1..User.count)).id)
end

# Notification seed data
users = User.all
users.each do |user|
  notification = user.notifications.create!(content: "This is a sample notification.")
end

# Message seed data
users = User.all
users.each do |user|
  message = user.messages.create!(content: "This is a sample message.", receiver_id: User.find(rand(1..User.count)).id)
end

# Friendship seed data
users = User.all
users.each do |user|
  friendship = user.friendships.create!(friend_id: User.find(rand(1..User.count)).id)
end
