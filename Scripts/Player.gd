extends CharacterBody2D

# Variables
@onready var speed = 200
var jump_force = -300
var gravity = 900

#var coin_count = 0  # Contador de monedas


# Función que se ejecuta en cada frame
func _physics_process(delta):
 # Movimiento horizontal
 if Input.is_action_pressed("ui_right"):
  velocity.x = speed
  $AnimatedSprite2D.flip_h = false  # No invertir sprite
 elif Input.is_action_pressed("ui_left"):
  velocity.x = -speed
  $AnimatedSprite2D.flip_h = true  # Invertir sprite hacia la izquierda
 else:
  velocity.x = 0  # Detener movimiento horizontal si no se presiona nada

 # Saltos
 if is_on_floor():

  if Input.is_action_just_pressed("ui_up"):
   velocity.y = jump_force

 # Aplicar gravedad
 if !is_on_floor():
  velocity.y += gravity * delta

 # Mover el personaje usando move_and_slide()
 move_and_slide()

 # Animaciones
 if !is_on_floor():  # Si el personaje está en el aire
  $AnimatedSprite2D.play("Jump")
 elif velocity.x != 0:  # Si el personaje se está moviendo
  $AnimatedSprite2D.play("Run")
 else:  # Si el personaje está quieto en el suelo
  $AnimatedSprite2D.play("Idle")

# Función de ataque (implementada en el futuro)
func attack():
 # Aquí irá el código del ataque
 pass
