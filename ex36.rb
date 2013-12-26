def prompt()
	print "> "
end

def asoiaf_room()
	puts "You find a vial of dark purple liquid."
	puts "Attached is a note that tells you to drink, so you may \"Hear and see the Truths that will be laid before you.\" "
	puts "Do you drink it?"
	
	prompt; next_move = gets.chomp

	if next_move.include? "yes"
		undying_hall()
	else dead("The Undying ones do not suffer tourists in their domain.")

	end
end

def undying_hall()
	puts "You see a long hallway, with doors on either side."
	puts "A voice tells you that to reach the Undying, you must always take the first door on the right."
	puts "Do you take the first door on the right, or left?"

	prompt; next_move = gets.chomp

	if next_move.include? "right"
		undying_room()
	else dead("You fall into a darkness, never to wake.")
	
	end
end

def undying_room()
	puts "You see a long stone table."
	puts "A floating heart, swollen and blue with corruption, hovers there."
	puts "The undying come out of the darkness to attack you."
	puts "Do you turn and flee, or set your dragon on them?"

	next_move = gets.chomp

	if next_move.include? "dragon"
		indiana_room()
	else dead("The Undying eat your beating heart as you watch.")

	end
end

def bag_end()

	dwarves = ['Dwalin', 'Balin', 'Kili', 'Fili', 'Dori', 'Nori', 'Ori', 'Oin', 'Gloin', 'Bifur', 'Bofur', 'Bombur', 'Thorin']

	return_dwarf = rand(12)

	puts dwarves[return_dwarf]

	return_dwarf_adjusted = return_dwarf + 1

	puts "You open the door to see a nice hole in the ground."
	puts "Not a nasty, dirty wet hole."
	puts "Nor a bare sandy hole with nothing in it."
	puts "But a hobbit hole, and that means comfort."
	puts " "
	puts "Inside are thirteen dwarves, who introduce themselves."
	puts "Dwalin, Balin, Kili, Fili, Dori, Nori, Ori, Oin, Gloin, Bifur, Bofur, Bombur, and Thorin."

	puts "Out of the thirteen, which was number #{return_dwarf_adjusted}?"

	dwarf_answer = gets.chomp
	dwarf_answer = dwarf_answer.downcase
	dwarves[return_dwarf] = dwarves[return_dwarf].downcase

	if dwarf_answer == dwarves[return_dwarf]
		puts "Good job!"
		indiana_room()
	else
		dead("The dwarves take offense and beat you to a pulp.")
	end
	
end

def indiana_room()

statue_weight = 40
lead_bag = 50

	puts "You enter a room."
	puts "On a pedestal is a small gold statue."
	puts "You have a bag of lead weighing 50 pounds."
	puts "Each handful you take out is five pounds."
	puts "How many handfuls do you take out of the bag to match the statue?"

prompt; how_much = gets.chomp
	how_much = how_much.downcase


	if how_much == "one"
		lead_bag -= 5
	elsif how_much == "two"
		lead_bag -= 10
	elsif how_much == "three"
		lead_bag -= 15
	else
		puts "That seems like too much"
	
	end

	puts "The bag's weight is now #{lead_bag}"

	puts "Do you want to replace the gold statue?"

	prompt; next_move = gets.chomp
	
	if next_move.include? "yes"
	
		puts "You replace the statue with the bag."
				if lead_bag > statue_weight
					puts "Still too heavy."
				elsif lead_bag == statue_weight
					puts "Perfect! You win!"
					Process.exit(0)
				elsif lead_bag < statue_weight
					puts "Not enough lead!"
				else dead ("What happened there?")
				end
		
	else dead ("As you step away, poison darts sting you from all angles.")

	
	end
end

def start()
	puts "You are in a dark room, with doors to your left and right."
	puts "Which door do you choose?"
	
	prompt; next_move = gets.chomp
	
	if next_move == "left"
		bag_end()
	elsif next_move == "right"
		asoiaf_room()
	else
		dead("You sit waiting to make a deicison for all eternity.")
	end
end

def dead(why)
	puts "#{why}. Good job!"
	Process.exit(0)
end





start()
	
