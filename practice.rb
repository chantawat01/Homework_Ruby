# create a new Class, User, that has the following attributes:
# - name
# - email
# - password

class User
    attr_accessor :name, :email, :password
  
    def initialize(name, email, password)
      @name = name
      @email = email
      @password = password
    end
  end
  
  # ตัวอย่างการใช้งาน
  user = User.new("Chantawat", "Chantawat@bumail.net", "password1234")
  puts user.name     # แสดงชื่อผู้ใช้
  puts user.email    # แสดงอีเมลผู้ใช้
  puts user.password # แสดงรหัสผ่านผู้ใช้
  


# create a new Class, Room, that has the following attributes:
# - name
# - description
# - users

class Room
    attr_accessor :name, :description, :users
  
    def initialize(name, description)
      @name = name
      @description = description
      @users = []
    end
  end
  
  # สร้างออบเจ็กต์ Room
  room = Room.new("General", "This is a general room")
  puts room.name          # แสดงชื่อห้อง
  puts room.description   # แสดงคำอธิบาย
  puts room.users.inspect # แสดงรายชื่อผู้ใช้ (เริ่มต้นเป็นอาร์เรย์ว่าง)
  
# create a new Class, Message, that has the following attributes:
# - user
# - room
# - content

class Message
    attr_accessor :user, :room, :content
  
    def initialize(user, room, content)
      @user = user
      @room = room
      @content = content
    end
  end
  
  # สร้างออบเจ็กต์ Message
  message = Message.new("Alice", "General", "Hello, everyone!")
  puts message.user     # แสดงชื่อผู้ใช้
  puts message.room     # แสดงชื่อห้อง
  puts message.content  # แสดงข้อความ
  

# add a method to user so, user can enter to a room
# user.enter_room(room)

class User
    def enter_room(room)
      puts "User entered #{room}"
    end
  end
  
  user = User.new
  user.enter_room("General")  # User entered General
  

# add a method to user so, user can send a message to a room
# user.send_message(room, message)
# user.ackowledge_message(room, message)
class User
    def send_message(room, message)
      puts "#{self} sent to #{room}: #{message}"
    end
  
    def acknowledge_message(room, message)
      puts "#{self} acknowledged message in #{room}: #{message}"
    end
  end
  
  user = User.new
  #เมธอดนี้ใช้สำหรับให้ผู้ใช้ส่งข้อความไปยังห้องที่ระบุ โดยจะพิมพ์ข้อความออกมาที่หน้าจอในรูปแบบที่แสดงชื่อผู้ใช้ ข้อความที่ส่ง และชื่อห้อง
  user.send_message("General", "Hello everyone!")    
  #เมธอดนี้ใช้เพื่อให้ผู้ใช้ยืนยันการรับข้อความในห้องที่ระบุ โดยจะพิมพ์ข้อความออกมาที่หน้าจอในรูปแบบที่แสดงชื่อผู้ใช้ ข้อความที่รับ และชื่อห้อง
  user.acknowledge_message("General", "Hello everyone!") 
  

# add a method to a room, so it can broadcast a message to all users
# room.broadcast(message)

class Room
    attr_accessor :users  # กำหนด accessors สำหรับ users เพื่อให้สามารถอ่านและเขียนได้
  
    def initialize
      @users = []  # เริ่มต้น users เป็นอาร์เรย์ว่างเพื่อเก็บผู้ใช้ในห้อง
    end
  
    # เมธอดสำหรับการส่งข้อความไปยังผู้ใช้ทุกคนในห้อง
    def broadcast(message)
      @users.each { |user| puts "#{user} received: #{message}" }  # วนลูปผ่านผู้ใช้และแสดงข้อความ
    end
  end
  
  # ตัวอย่างการใช้งาน
  room = Room.new  # สร้างออบเจ็กต์ห้องใหม่
  room.users << "Alice"  # เพิ่มผู้ใช้ Alice ลงในห้อง
  room.users << "Bob"    # เพิ่มผู้ใช้ Bob ลงในห้อง
  
  # ส่งข้อความไปยังผู้ใช้ทุกคนในห้อง
  room.broadcast("Hello everyone!") 
  # Output: 
  # Alice received: Hello everyone!
  # Bob received: Hello everyone!
  


