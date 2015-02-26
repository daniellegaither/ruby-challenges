def find_number(birthdate)
  total_int = 0
  total_int += birthdate[0].to_i
  total_int += birthdate[1].to_i
  total_int += birthdate[2].to_i
  total_int += birthdate[3].to_i
  total_int += birthdate[4].to_i
  total_int += birthdate[5].to_i
  total_int += birthdate[6].to_i
  total_int += birthdate[7].to_i
  total_string = total_int.to_s

  total_int = 0
  total_int += total_string[0].to_i
  total_int += total_string[1].to_i

  if total_int > 9
    total_string = total_int.to_s
    total_int = 0
    total_int += total_string[0].to_i
    total_int += total_string[1].to_i
  end

  return total_int
end

def get_message(number)
  case (number)
  when 1
    return "One is the leader.\nThe number one indicates the ability to stand alone, and is a strong vibration. \nRuled by the Sun."
  when 2
    return "This is the mediator and peace-lover.\nThe number two indicates the desire for harmony. \nIt is a gentle, considerate, and sensitive vibration. \nRuled by the Moon."
  when 3
    return "Number Three is a sociable, friendly, and outgoing vibration. \nKind, positive, and optimistic, \nThree’s enjoy life and have a good sense of humor. \nRuled by Jupiter."
  when 4
    return "This is the worker. \nPractical, with a love of detail, \nFours are trustworthy, hard-working, and helpful. \nRuled by Uranus."
  when 5
    return "This is the freedom lover. \nThe number five is an intellectual vibration. \nThese are ‘idea’ people with a love of variety and the ability to adapt to most situations. \nRuled by Mercury."
  when 6
    return "This is the peace lover. \nThe number six is a loving, stable, and harmonious vibration. \nRuled by Venus."
  when 7
    return "This is the deep thinker. \nThe number seven is a spiritual vibration. \nThese people are not very attached to material things, are introspective, and generally quiet. \nRuled by Neptune."
  when 8
    return "This is the manager. \nNumber Eight is a strong, successful, and material vibration. \nRuled by Saturn."
  when 9
    return "This is the teacher. \nNumber Nine is a tolerant, somewhat impractical, and sympathetic vibration. \nRuled by Mars."
  else
    return "Are you sure you're doing this right?"
  end
end

puts "Enter your birthdate in the format MMDDYYYY:"
birthdate = gets

path_number = find_number(birthdate)
message = get_message(path_number)

puts "Your number is: #{path_number}\n#{message}"
