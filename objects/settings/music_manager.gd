extends Node
class_name SoundManager

var music_player : AudioStreamPlayer
var effects_player : AudioStreamPlayer  

@export var start_audio : AudioStream
@export var fade_duration : float = 1

var sounds_volume = 0
var music_volume = 0

func _ready():
	add_to_group("load_music")
	music_player = AudioStreamPlayer.new()
	add_child(music_player)
	music_player.stream = start_audio 
	music_player.play()


func set_music_volume(value : float):
	music_volume =  value
	music_player.volume_db = music_volume 

func load_sound(sound : AudioStream):
	effects_player.stop()

	effects_player.stream = sound
	effects_player.play()

func fade_sound_out() ->void:
	var tween = get_tree().create_tween()
	tween.tween_property(music_player,"volume_db",-80,fade_duration)
	tween.play()

func fade_sound_in() ->void:
	var tween = get_tree().create_tween()
	tween.tween_property(music_player,"volume_db",music_volume,fade_duration)
	tween.play()

func load_music(sound : AudioStream):
	fade_sound_out()
	await get_tree().create_timer(1).timeout
	music_player.stream = sound
	music_player.play()
	fade_sound_in()
