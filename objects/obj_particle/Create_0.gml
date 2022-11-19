particle_system = part_system_create_layer("Instances", 0)

particle_type_hit = part_type_create();
part_type_sprite(particle_type_hit, sp_laser_hit, 0, 0, 0)
part_type_size(particle_type_hit, 0.5, 1.0, 0.1, 0)
part_type_life(particle_type_hit, 5, 15)
part_type_alpha3(particle_type_hit, 1, 0.6, 0.2)
part_type_orientation(particle_type_hit, 0, 359, 0, 0, 0)

particle_type_spark = part_type_create();
part_type_sprite(particle_type_spark, sp_spark, 0, 0, 0)
part_type_size(particle_type_spark, 0.5, 1.0, -0.01, 0)
part_type_life(particle_type_spark, 25, 30)
part_type_alpha3(particle_type_spark, 1, 0.8, 0.1)
part_type_orientation(particle_type_spark, 0, 359, 0, 0, 0)
part_type_speed(particle_type_spark, 2, 4, -0.1, 0)
part_type_direction(particle_type_spark, 0, 359, 0, 0)
part_type_color3(particle_type_spark, #EE1C24, #B2353A , #E5A0A0)