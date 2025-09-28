extends DialogueEngine

func _setup() -> void:
	add_text_entry("Hey...").set_metadata("name", "John")
	add_text_entry("have you heard about this new popular game? ").set_metadata("name", "John")
	add_text_entry("Which one? There are many out there. Quake, Super Mario 64, Diablo... You know").set_metadata("name", "You")
	add_text_entry("Have you heard about called [tornado radius=1.0 freq=1.0 connected=1] [rainbow freq=1.0 sat=0.4 val=0.8] spacefortress [/rainbow] [/tornado]?").set_metadata("name", "John")
	add_text_entry("Oh man. What kind of garbage you brought this time?").set_metadata("name", "You")
	add_text_entry("Listen, this is underrated gem, you will be blown away!").set_metadata("name", "John")
	add_text_entry("You said exactly the same last time >->").set_metadata("name", "You")
	add_text_entry("It will be better this time!!").set_metadata("name","John")
	add_text_entry("Do you enjoy torturing people or smth like that?").set_metadata("name", "You")
	add_text_entry("C'mon man, are you going to cry or what?").set_metadata("name", "John")
	add_text_entry("Fine, you won. Let's give it a try").set_metadata("name", "You")
