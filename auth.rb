def authorize_gabe
  puts ""
  print "Enter your first name, Youngling: "
  login = gets.chomp
  case login
    when "gabe" , "Gabe" , "Gabriel" , "gabriel"
      access_granted
      enter_mail_system
    else
      unauthorized_access
    end
end

def unauthorized_access
  fake_loader
  puts ""
  puts "                                      ----------------------------------------------------------"
  puts "                                     |  UNAUTHORIZED ACCESS ATTEMPTED. NOTIFYING JEDI ACADEMY.  |"
  puts "                                      ----------------------------------------------------------"
  sleep 2
  render_jedi_academy
  authorize_gabe
end

def access_granted
  puts ""
  fake_loader
  puts ""
  puts "                                      ----------------------------------------------------------"
  puts "                                     |             ACCESS GRANTED. WELCOME, GABRIEL.            |"
  puts "                                      ----------------------------------------------------------"
  sleep 3
end
def render_lighsaber
  Catpix::print_image "lightsaber.jpg",
  :limit_x => 0.75,
  :limit_y => 0.75,
  :center_x => true,
  :center_y => true,
  :bg => "white",
  :bg_fill => true,
  :resolution => "low"
end
