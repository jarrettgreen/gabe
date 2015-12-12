def enter_mail_system
  render_jedi_academy
  puts ""
  puts "<<< You have (1) Unread Message. Would you like to retrieve it? >>>"
  puts ""
  answer = gets.chomp
  case answer
  when 'y','Y','yes','YES','Yes'
    retrieve_message
  when 'no','n','NO','No'
    puts "Ok, then."
    fake_loader
  else
    "Instructions unclear, disconnecting"
    fake_loader
    render_jedi_academy
    authorize_gabe
  end
end

def retrieve_message
  Catpix::print_image "message.png",
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :resolution => "high"
  sleep 5
  review_or_reply?
end

def review_or_reply?
  render_jedi_academy
  puts "Please enter a command number:"
  puts "(1) Retrieve Message Again"
  puts "(2) Reply to Master Windu"
  answer = gets.chomp
  case answer
  when '1', '(1)', 'one', 'One'
    retrieve_message
  when '2', '(2)', 'two', 'Two'
    get_color
  else
    review_or_reply?
  end
end

def get_color
  puts ""
  puts "What is the color of Master Windu's Lightsaber?"
  color = gets.chomp
  case color
  when "purple", "Purple"
    send_final_message
  else
    puts "That is incorrect, Youngling."
    get_color
  end
end

def send_final_message
  Catpix::print_image "final-message.png",
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :resolution => "high"
  sleep 10
  render_jedi_academy
  authorize_gabe
end
