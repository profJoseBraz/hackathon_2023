extends Camera3D

var sensitivity = 0.005
var speed = 100

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		var rotation = -event.relative * sensitivity
		rotate_object_local(Vector3(1, 0, 0), rotation.y)
		rotate_y(rotation.x)

func _process(delta):
	var move_direction = Vector3()
	
	if Input.is_key_pressed(KEY_W):
		translate(Vector3(0,0,-speed))
	if Input.is_key_pressed(KEY_S):
		translate(Vector3(0,0,speed))
	if Input.is_key_pressed(KEY_D):
		translate(Vector3(speed,0,0))
	if Input.is_key_pressed(KEY_A):
		translate(Vector3(-speed,0,0))
	
