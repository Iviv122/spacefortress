extends DialogueEngine

func _setup() -> void:
	add_text_entry("So, what do we have here?").set_metadata("name", "You")

	add_text_entry("[i][b]Unimaginable[/b] meatgrinder waits for you![/i]").set_metadata("name", "")
	add_text_entry("[i]You are going to withstand against [b]hordes[/b] of enemies.[/i]").set_metadata("name", "")
	add_text_entry("[i]Many will come to try to crush you![/i]").set_metadata("name", "")
	add_text_entry("[i]But you will stand proudly through [rainbow freq=1.0 sat=0.4 val=0.8]20[/rainbow] unique waves.[/i]").set_metadata("name", "")

	add_text_entry("[i][b]Play as one of three playable characters![/b][/i]").set_metadata("name", "")
	add_text_entry("[i][b]Spend your battle trophies on upgrades![/b][/i]").set_metadata("name", "")
	add_text_entry("[i][b]Obtain powerful items and skills to become stronger![/b][/i]").set_metadata("name", "")

	add_text_entry("[i]Use your mouse to controll your [b]stronghold[/b] [/i]").set_metadata("name", "")

	add_text_entry("[b]...[/b]").set_metadata("name", "")
	add_text_entry("[b]...[/b]").set_metadata("name", "")
	add_text_entry("[b]...[/b]").set_metadata("name", "")

	add_text_entry("[i]Dark sci-fi world awaits for [shake rate=20.0 level=5 connected=1][b]you[/b][/shake][/i]").set_metadata("name", "")
	