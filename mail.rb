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
  # Catpix::print_image "message.png",
  # :limit_x => 1.0,
  # :limit_y => 0,
  # :center_x => true,
  # :center_y => true,
  # :resolution => "high"
  puts ":::::::::::::::::::::::::::::: INCOMING MESSAGE ::::::::::::::::::::::::::::::"
  puts "::                                                                          ::"
  puts "::  from: MASTER WINDU                                                      ::"
  puts "::    to: GABRIEL                                                           ::"
  puts "::                                                                          ::"
  puts "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
  puts "::                                                                          ::"
  puts "::   It is vital when building your weapon that you use the same crystal    ::"
  puts "::   as I do in my own.                                                     ::"
  puts "::                                                                          ::"
  puts "::   Please send a reply with the proper color of my lightsaber to ensure   ::"
  puts "::   you can complete your mission on time!                                 ::"
  puts "::                                                                          ::"
  puts "::                                                                          ::"
  puts ":::::::::::::::::::::::::::::: END TRANSMISSION ::::::::::::::::::::::::::::::"
  puts ""
  render_rebel_alliance
  get_color
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
  # Catpix::print_image "final-message.gif",
  # :limit_x => 1.0,
  # :limit_y => 0,
  # :center_x => true,
  # :center_y => true,
  # :resolution => "high"
  puts ":::::::::::::::::::::::::::::: INCOMING MESSAGE ::::::::::::::::::::::::::::::"
  puts "::                                                                          ::"
  puts "::  from: MASTER WINDU                                                      ::"
  puts "::    to: GABRIEL                                                           ::"
  puts "::                                                                          ::"
  puts "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
  puts "::                                                                          ::"
  puts "::   Very good, Youngling.                                                  ::"
  puts "::                                                                          ::"
  puts "::   Do not forget, the frequency at which the crystal in my lightsaber     ::"
  puts "::   resonates to produce a purple color: 2300                              ::"
  puts "::                                                                          ::"
  puts "::                                                                          ::"
  puts ":::::::::::::::::::::::::::::: END TRANSMISSION ::::::::::::::::::::::::::::::"
  puts ""
  render_rebel_alliance
  sleep 20
  render_jedi_academy
  authorize_gabe
end
