//todo: fix issue with double collision on consecutive frames
if not other.is_invulnerable {
	effect_create_below(ef_spark, x, y, 0.25, c_white)
	direction += 180
}
