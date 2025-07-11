extends Node2D

var good = false
var bad = false
var dying = false
var can_pass_dead = false
var showing_advert = false
var clues = []
var in_clues = false
var info_possible_2 = false
var info_possible_1 = false
var info_possible = false
var dead = false
var bad_button = false
var witness_nm = []
var witness_age = []
var prisioners_age = []
var prisioners_nm = []
var talk = 0
var talking = false
var reading_instructions = true
var position_n: Vector2
var position_p: Vector2
var inventory_private = false
var inventory_cor = false
var inventory_bars = false
var inventory_str = false
var inventory_map = false
var knife = false
var get_knife = false
var with_knife = false
var prisioner = false
var bullet_player = false
var cooker_state = "OFF"
var cooker: bool
var cooker_frame = 0
var fridge = false
var fridge_interior = false
var tap_state = "OFF"
var tap: bool
var tap_frame = 0
var npc_1 = false
var npc_2 = false
var npc_3 = false
var npc_4 = false
var money = 0
var cup = false
var identification = true
var water = false
var pl_nationality: String
var pl_age: int
var pl_nm: String
var out = false
var shooting = true
var shoot = false
var guns = false
var corridor = false
var button = false
var bars = false
var private = false
var office_scr = 0
