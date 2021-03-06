	.include "asm/macros.s"
	.include "constants/constants.s"
	.include "asm/macros/battle_ai_script.s"

	.section script_data, "aw", %progbits

	.align 2
BattleAIs:: @ 81DA01C
	.4byte AI_CheckBadMove
	.4byte AI_CheckViability
	.4byte AI_TryToFaint
	.4byte AI_SetupFirstTurn
	.4byte AI_Risky
	.4byte AI_PreferStrongestMove
	.4byte AI_PreferBatonPass
	.4byte AI_Nothing
	.4byte AI_HPAware
	.4byte AI_Unknown
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Unused
	.4byte AI_Roaming
	.4byte AI_Safari
	.4byte AI_FleeInDanger

AI_CheckBadMove: @ 81DA09C
	is_most_powerful_move
	if_equal 0, BattleAIScript_1DA108
	if_damage_bonus 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_VOLT_ABSORB, BattleAIScript_1DA0CE
	if_equal ABILITY_WATER_ABSORB, BattleAIScript_1DA0DB
	if_equal ABILITY_FLASH_FIRE, BattleAIScript_1DA0E8
	if_equal ABILITY_WONDER_GUARD, BattleAIScript_1DA0F5
	if_equal ABILITY_LEVITATE, BattleAIScript_1DA100
	jump BattleAIScript_1DA108

BattleAIScript_1DA0CE: @ 81DA0CE
	get_type 4
	if_type TYPE_ELECTRIC, BattleAIScript_1DA85E
	jump BattleAIScript_1DA108

BattleAIScript_1DA0DB: @ 81DA0DB
	get_type 4
	if_type TYPE_WATER, BattleAIScript_1DA85E
	jump BattleAIScript_1DA108

BattleAIScript_1DA0E8: @ 81DA0E8
	get_type 4
	if_type TYPE_FIRE, BattleAIScript_1DA85E
	jump BattleAIScript_1DA108

BattleAIScript_1DA0F5: @ 81DA0F5
	if_damage_bonus 80, BattleAIScript_1DA108
	jump BattleAIScript_1DA85B

BattleAIScript_1DA100: @ 81DA100
	get_type 4
	if_type TYPE_GROUND, BattleAIScript_1DA85B

BattleAIScript_1DA108: @ 81DA108
	get_ability TARGET
	if_not_equal ABILITY_SOUNDPROOF, BattleAIScript_1DA14F
	if_move MOVE_GROWL, BattleAIScript_1DA85B
	if_move MOVE_ROAR, BattleAIScript_1DA85B
	if_move MOVE_SING, BattleAIScript_1DA85B
	if_move MOVE_SUPERSONIC, BattleAIScript_1DA85B
	if_move MOVE_SCREECH, BattleAIScript_1DA85B
	if_move MOVE_SNORE, BattleAIScript_1DA85B
	if_move MOVE_UPROAR, BattleAIScript_1DA85B
	if_move MOVE_METAL_SOUND, BattleAIScript_1DA85B
	if_move MOVE_GRASS_WHISTLE, BattleAIScript_1DA85B

BattleAIScript_1DA14F: @ 81DA14F
	if_effect EFFECT_SLEEP, BattleAIScript_1DA3DE
	if_effect EFFECT_EXPLOSION, BattleAIScript_1DA3F7
	if_effect EFFECT_DREAM_EATER, BattleAIScript_1DA430
	if_effect EFFECT_ATTACK_UP, BattleAIScript_1DA448
	if_effect EFFECT_DEFENSE_UP, BattleAIScript_1DA451
	if_effect EFFECT_SPEED_UP, BattleAIScript_1DA45A
	if_effect EFFECT_SPECIAL_ATTACK_UP, BattleAIScript_1DA463
	if_effect EFFECT_SPECIAL_DEFENSE_UP, BattleAIScript_1DA46C
	if_effect EFFECT_ACCURACY_UP, BattleAIScript_1DA475
	if_effect EFFECT_EVASION_UP, BattleAIScript_1DA47E
	if_effect EFFECT_ATTACK_DOWN, BattleAIScript_1DA487
	if_effect EFFECT_DEFENSE_DOWN, BattleAIScript_1DA49C
	if_effect EFFECT_SPEED_DOWN, BattleAIScript_1DA4A9
	if_effect EFFECT_SPECIAL_ATTACK_DOWN, BattleAIScript_1DA4B6
	if_effect EFFECT_SPECIAL_DEFENSE_DOWN, BattleAIScript_1DA4C3
	if_effect EFFECT_ACCURACY_DOWN, BattleAIScript_1DA4D0
	if_effect EFFECT_EVASION_DOWN, BattleAIScript_1DA4E5
	if_effect EFFECT_HAZE, BattleAIScript_1DA4FC
	if_effect EFFECT_BIDE, BattleAIScript_1DA5DA
	if_effect EFFECT_ROAR, BattleAIScript_1DA572
	if_effect EFFECT_TOXIC, BattleAIScript_1DA583
	if_effect EFFECT_LIGHT_SCREEN, BattleAIScript_1DA5B2
	if_effect EFFECT_OHKO, BattleAIScript_1DA5BD
	if_effect EFFECT_RAZOR_WIND, BattleAIScript_1DA5DA
	if_effect EFFECT_SUPER_FANG, BattleAIScript_1DA5DA
	if_effect EFFECT_MIST, BattleAIScript_1DA5F4
	if_effect EFFECT_FOCUS_ENERGY, BattleAIScript_1DA5FF
	if_effect EFFECT_CONFUSE, BattleAIScript_1DA60A
	if_effect EFFECT_ATTACK_UP_2, BattleAIScript_1DA448
	if_effect EFFECT_DEFENSE_UP_2, BattleAIScript_1DA451
	if_effect EFFECT_SPEED_UP_2, BattleAIScript_1DA45A
	if_effect EFFECT_SPECIAL_ATTACK_UP_2, BattleAIScript_1DA463
	if_effect EFFECT_SPECIAL_DEFENSE_UP_2, BattleAIScript_1DA46C
	if_effect EFFECT_ACCURACY_UP_2, BattleAIScript_1DA475
	if_effect EFFECT_EVASION_UP_2, BattleAIScript_1DA47E
	if_effect EFFECT_ATTACK_DOWN_2, BattleAIScript_1DA487
	if_effect EFFECT_DEFENSE_DOWN_2, BattleAIScript_1DA49C
	if_effect EFFECT_SPEED_DOWN_2, BattleAIScript_1DA4A9
	if_effect EFFECT_SPECIAL_ATTACK_DOWN_2, BattleAIScript_1DA4B6
	if_effect EFFECT_SPECIAL_DEFENSE_DOWN_2, BattleAIScript_1DA4C3
	if_effect EFFECT_ACCURACY_DOWN_2, BattleAIScript_1DA4D0
	if_effect EFFECT_EVASION_DOWN_2, BattleAIScript_1DA4E5
	if_effect EFFECT_REFLECT, BattleAIScript_1DA61D
	if_effect EFFECT_POISON, BattleAIScript_1DA583
	if_effect EFFECT_PARALYZE, BattleAIScript_1DA628
	if_effect EFFECT_SUBSTITUTE, BattleAIScript_1DA641
	if_effect EFFECT_RECHARGE, BattleAIScript_1DA5DA
	if_effect EFFECT_LEECH_SEED, BattleAIScript_1DA653
	if_effect EFFECT_DISABLE, BattleAIScript_1DA66E
	if_effect EFFECT_LEVEL_DAMAGE, BattleAIScript_1DA5DA
	if_effect EFFECT_PSYWAVE, BattleAIScript_1DA5DA
	if_effect EFFECT_COUNTER, BattleAIScript_1DA5DA
	if_effect EFFECT_ENCORE, BattleAIScript_1DA676
	if_effect EFFECT_SNORE, BattleAIScript_1DA67E
	if_effect EFFECT_SLEEP_TALK, BattleAIScript_1DA67E
	if_effect EFFECT_FLAIL, BattleAIScript_1DA5DA
	if_effect EFFECT_MEAN_LOOK, BattleAIScript_1DA689
	if_effect EFFECT_NIGHTMARE, BattleAIScript_1DA41B
	if_effect EFFECT_MINIMIZE, BattleAIScript_1DA47E
	if_effect EFFECT_CURSE, BattleAIScript_1DA694
	if_effect EFFECT_SPIKES, BattleAIScript_1DA6A5
	if_effect EFFECT_FORESIGHT, BattleAIScript_1DA6B0
	if_effect EFFECT_PERISH_SONG, BattleAIScript_1DA6BB
	if_effect EFFECT_SANDSTORM, BattleAIScript_1DA6C6
	if_effect EFFECT_SWAGGER, BattleAIScript_1DA60A
	if_effect EFFECT_ATTRACT, BattleAIScript_1DA6CE
	if_effect EFFECT_RETURN, BattleAIScript_1DA5DA
	if_effect EFFECT_PRESENT, BattleAIScript_1DA5DA
	if_effect EFFECT_FRUSTRATION, BattleAIScript_1DA5DA
	if_effect EFFECT_SAFEGUARD, BattleAIScript_1DA70E
	if_effect EFFECT_MAGNITUDE, BattleAIScript_1DA5D2
	if_effect EFFECT_BATON_PASS, BattleAIScript_1DA729
	if_effect EFFECT_SONICBOOM, BattleAIScript_1DA5DA
	if_effect EFFECT_RAIN_DANCE, BattleAIScript_1DA732
	if_effect EFFECT_SUNNY_DAY, BattleAIScript_1DA73A
	if_effect EFFECT_BELLY_DRUM, BattleAIScript_1DA441
	if_effect EFFECT_PSYCH_UP, BattleAIScript_1DA4FC
	if_effect EFFECT_MIRROR_COAT, BattleAIScript_1DA5DA
	if_effect EFFECT_SKULL_BASH, BattleAIScript_1DA5DA
	if_effect EFFECT_FUTURE_SIGHT, BattleAIScript_1DA742
	if_effect EFFECT_TELEPORT, BattleAIScript_1DA85B
	if_effect EFFECT_DEFENSE_CURL, BattleAIScript_1DA451
	if_effect EFFECT_FAKE_OUT, BattleAIScript_1DA74D
	if_effect EFFECT_STOCKPILE, BattleAIScript_1DA756
	if_effect EFFECT_SPIT_UP, BattleAIScript_1DA75F
	if_effect EFFECT_SWALLOW, BattleAIScript_1DA75F
	if_effect EFFECT_HAIL, BattleAIScript_1DA76E
	if_effect EFFECT_TORMENT, BattleAIScript_1DA776
	if_effect EFFECT_FLATTER, BattleAIScript_1DA60A
	if_effect EFFECT_WILL_O_WISP, BattleAIScript_1DA781
	if_effect EFFECT_MEMENTO, BattleAIScript_1DA719
	if_effect EFFECT_FOCUS_PUNCH, BattleAIScript_1DA5DA
	if_effect EFFECT_HELPING_HAND, BattleAIScript_1DA7A6
	if_effect EFFECT_TRICK, BattleAIScript_1DA7AE
	if_effect EFFECT_INGRAIN, BattleAIScript_1DA7B7
	if_effect EFFECT_SUPERPOWER, BattleAIScript_1DA5DA
	if_effect EFFECT_RECYCLE, BattleAIScript_1DA7C2
	if_effect EFFECT_KNOCK_OFF, BattleAIScript_1DA7AE
	if_effect EFFECT_ENDEAVOR, BattleAIScript_1DA5DA
	if_effect EFFECT_IMPRISON, BattleAIScript_1DA7CB
	if_effect EFFECT_REFRESH, BattleAIScript_1DA7D6
	if_effect EFFECT_LOW_KICK, BattleAIScript_1DA5DA
	if_effect EFFECT_MUD_SPORT, BattleAIScript_1DA7E1
	if_effect EFFECT_TICKLE, BattleAIScript_1DA7EC
	if_effect EFFECT_COSMIC_POWER, BattleAIScript_1DA7FD
	if_effect EFFECT_BULK_UP, BattleAIScript_1DA80E
	if_effect EFFECT_WATER_SPORT, BattleAIScript_1DA81F
	if_effect EFFECT_CALM_MIND, BattleAIScript_1DA82A
	if_effect EFFECT_DRAGON_DANCE, BattleAIScript_1DA83B
	end

BattleAIScript_1DA3DE: @ 81DA3DE
	get_ability TARGET
	if_equal ABILITY_INSOMNIA, BattleAIScript_1DA85B
	if_equal ABILITY_VITAL_SPIRIT, BattleAIScript_1DA85B
	if_status TARGET, SLP | PSN | BRN | FRZ | PAR | TOX, BattleAIScript_1DA85B
	end

BattleAIScript_1DA3F7: @ 81DA3F7
	if_damage_bonus 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_DAMP, BattleAIScript_1DA85B
	count_alive_pokemon USER
	if_not_equal 0, BattleAIScript_1DA41A
	count_alive_pokemon TARGET
	if_not_equal 0, BattleAIScript_1DA85B
	jump BattleAIScript_1DA84C

BattleAIScript_1DA41A: @ 81DA41A
	end

BattleAIScript_1DA41B: @ 81DA41B
	if_status2 TARGET, S_NIGHTMARE, BattleAIScript_1DA85B
	if_not_status TARGET, SLP, BattleAIScript_1DA858
	end

BattleAIScript_1DA430: @ 81DA430
	if_not_status TARGET, SLP, BattleAIScript_1DA858
	if_damage_bonus 0, BattleAIScript_1DA85B
	end

BattleAIScript_1DA441: @ 81DA441
	if_hp_less_than USER, 51, BattleAIScript_1DA85B

BattleAIScript_1DA448: @ 81DA448
	if_stat_level_equal USER, ATTACK, 12, BattleAIScript_1DA85B
	end

BattleAIScript_1DA451: @ 81DA451
	if_stat_level_equal USER, DEFENSE, 12, BattleAIScript_1DA85B
	end

BattleAIScript_1DA45A: @ 81DA45A
	if_stat_level_equal USER, SPEED, 12, BattleAIScript_1DA85B
	end

BattleAIScript_1DA463: @ 81DA463
	if_stat_level_equal USER, SP_ATTACK, 12, BattleAIScript_1DA85B
	end

BattleAIScript_1DA46C: @ 81DA46C
	if_stat_level_equal USER, SP_DEFENSE, 12, BattleAIScript_1DA85B
	end

BattleAIScript_1DA475: @ 81DA475
	if_stat_level_equal USER, ACCURACY, 12, BattleAIScript_1DA85B
	end

BattleAIScript_1DA47E: @ 81DA47E
	if_stat_level_equal USER, EVASION, 12, BattleAIScript_1DA85B
	end

BattleAIScript_1DA487: @ 81DA487
	if_stat_level_equal TARGET, ATTACK, 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_HYPER_CUTTER, BattleAIScript_1DA85B
	jump BattleAIScript_1DA4ED

BattleAIScript_1DA49C: @ 81DA49C
	if_stat_level_equal TARGET, DEFENSE, 0, BattleAIScript_1DA85B
	jump BattleAIScript_1DA4ED

BattleAIScript_1DA4A9: @ 81DA4A9
	if_stat_level_equal TARGET, SPEED, 0, BattleAIScript_1DA85B
	jump BattleAIScript_1DA4ED

BattleAIScript_1DA4B6: @ 81DA4B6
	if_stat_level_equal TARGET, SP_ATTACK, 0, BattleAIScript_1DA85B
	jump BattleAIScript_1DA4ED

BattleAIScript_1DA4C3: @ 81DA4C3
	if_stat_level_equal TARGET, SP_DEFENSE, 0, BattleAIScript_1DA85B
	jump BattleAIScript_1DA4ED

BattleAIScript_1DA4D0: @ 81DA4D0
	if_stat_level_equal TARGET, ACCURACY, 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_KEEN_EYE, BattleAIScript_1DA85B
	jump BattleAIScript_1DA4ED

BattleAIScript_1DA4E5: @ 81DA4E5
	if_stat_level_equal TARGET, EVASION, 0, BattleAIScript_1DA85B

BattleAIScript_1DA4ED: @ 81DA4ED
	get_ability TARGET
	if_equal ABILITY_CLEAR_BODY, BattleAIScript_1DA85B
	if_equal ABILITY_WHITE_SMOKE, BattleAIScript_1DA85B
	end

BattleAIScript_1DA4FC: @ 81DA4FC
	if_stat_level_less_than USER, ATTACK, 6, BattleAIScript_1DA571
	if_stat_level_less_than USER, DEFENSE, 6, BattleAIScript_1DA571
	if_stat_level_less_than USER, SPEED, 6, BattleAIScript_1DA571
	if_stat_level_less_than USER, SP_ATTACK, 6, BattleAIScript_1DA571
	if_stat_level_less_than USER, SP_DEFENSE, 6, BattleAIScript_1DA571
	if_stat_level_less_than USER, ACCURACY, 6, BattleAIScript_1DA571
	if_stat_level_less_than USER, EVASION, 6, BattleAIScript_1DA571
	if_stat_level_more_than TARGET, ATTACK, 6, BattleAIScript_1DA571
	if_stat_level_more_than TARGET, DEFENSE, 6, BattleAIScript_1DA571
	if_stat_level_more_than TARGET, SPEED, 6, BattleAIScript_1DA571
	if_stat_level_more_than TARGET, SP_ATTACK, 6, BattleAIScript_1DA571
	if_stat_level_more_than TARGET, SP_DEFENSE, 6, BattleAIScript_1DA571
	if_stat_level_more_than TARGET, ACCURACY, 6, BattleAIScript_1DA571
	if_stat_level_more_than TARGET, EVASION, 6, BattleAIScript_1DA571
	jump BattleAIScript_1DA85B

BattleAIScript_1DA571: @ 81DA571
	end

BattleAIScript_1DA572: @ 81DA572
	count_alive_pokemon TARGET
	if_equal 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_SUCTION_CUPS, BattleAIScript_1DA85B
	end

BattleAIScript_1DA583: @ 81DA583
	get_type 0
	if_equal TYPE_STEEL, BattleAIScript_1DA85B
	if_equal TYPE_POISON, BattleAIScript_1DA85B
	get_type 2
	if_equal TYPE_STEEL, BattleAIScript_1DA85B
	if_equal TYPE_POISON, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_IMMUNITY, BattleAIScript_1DA85B
	if_status TARGET, SLP | PSN | BRN | FRZ | PAR | TOX, BattleAIScript_1DA85B
	end

BattleAIScript_1DA5B2: @ 81DA5B2
	if_status4 USER, S_LIGHT_SCREEN, BattleAIScript_1DA858
	end

BattleAIScript_1DA5BD: @ 81DA5BD
	if_damage_bonus 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_STURDY, BattleAIScript_1DA85B
	if_target_higher_level BattleAIScript_1DA85B
	end

BattleAIScript_1DA5D2: @ 81DA5D2
	get_ability TARGET
	if_equal ABILITY_LEVITATE, BattleAIScript_1DA85B

BattleAIScript_1DA5DA: @ 81DA5DA
	if_damage_bonus 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_not_equal ABILITY_WONDER_GUARD, BattleAIScript_1DA5F3
	if_damage_bonus 80, BattleAIScript_1DA5F3
	jump BattleAIScript_1DA85B

BattleAIScript_1DA5F3: @ 81DA5F3
	end

BattleAIScript_1DA5F4: @ 81DA5F4
	if_status4 USER, S_MIST, BattleAIScript_1DA858
	end

BattleAIScript_1DA5FF: @ 81DA5FF
	if_status2 USER, S_FOCUS_ENERGY, BattleAIScript_1DA85B
	end

BattleAIScript_1DA60A: @ 81DA60A
	if_status2 TARGET, S_CONFUSED, BattleAIScript_1DA855
	get_ability TARGET
	if_equal ABILITY_OWN_TEMPO, BattleAIScript_1DA85B
	end

BattleAIScript_1DA61D: @ 81DA61D
	if_status4 USER, S_REFLECT, BattleAIScript_1DA858
	end

BattleAIScript_1DA628: @ 81DA628
	if_damage_bonus 0, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_LIMBER, BattleAIScript_1DA85B
	if_status TARGET, SLP | PSN | BRN | FRZ | PAR | TOX, BattleAIScript_1DA85B
	end

BattleAIScript_1DA641: @ 81DA641
	if_status2 USER, S_SUBSTITUTE, BattleAIScript_1DA858
	if_hp_less_than USER, 26, BattleAIScript_1DA85B
	end

BattleAIScript_1DA653: @ 81DA653
	if_status3 TARGET, S_LEECH_SEED, BattleAIScript_1DA85B
	get_type 0
	if_equal TYPE_GRASS, BattleAIScript_1DA85B
	get_type 2
	if_equal TYPE_GRASS, BattleAIScript_1DA85B
	end

BattleAIScript_1DA66E: @ 81DA66E
	if_last_move_did_damage TARGET, 0, BattleAIScript_1DA858
	end

BattleAIScript_1DA676: @ 81DA676
	if_last_move_did_damage TARGET, 1, BattleAIScript_1DA858
	end

BattleAIScript_1DA67E: @ 81DA67E
	if_not_status USER, SLP, BattleAIScript_1DA858
	end

BattleAIScript_1DA689: @ 81DA689
	if_status2 TARGET, S_MEAN_LOOK, BattleAIScript_1DA85B
	end

BattleAIScript_1DA694: @ 81DA694
	if_stat_level_equal USER, ATTACK, 12, BattleAIScript_1DA85B
	if_stat_level_equal USER, DEFENSE, 12, BattleAIScript_1DA858
	end

BattleAIScript_1DA6A5: @ 81DA6A5
	if_status4 TARGET, S_SPIKES, BattleAIScript_1DA85B
	end

BattleAIScript_1DA6B0: @ 81DA6B0
	if_status2 TARGET, S_FORESIGHT, BattleAIScript_1DA85B
	end

BattleAIScript_1DA6BB: @ 81DA6BB
	if_status3 TARGET, S_PERISH_SONG, BattleAIScript_1DA85B
	end

BattleAIScript_1DA6C6: @ 81DA6C6
	get_weather
	if_equal WEATHER_SANDSTORM, BattleAIScript_1DA858
	end

BattleAIScript_1DA6CE: @ 81DA6CE
	if_status2 TARGET, S_INFATUATED, BattleAIScript_1DA85B
	get_ability TARGET
	if_equal ABILITY_OBLIVIOUS, BattleAIScript_1DA85B
	get_gender USER
	if_equal 0, BattleAIScript_1DA6F3
	if_equal 254, BattleAIScript_1DA700
	jump BattleAIScript_1DA85B

BattleAIScript_1DA6F3: @ 81DA6F3
	get_gender TARGET
	if_equal 254, BattleAIScript_1DA70D
	jump BattleAIScript_1DA85B

BattleAIScript_1DA700: @ 81DA700
	get_gender TARGET
	if_equal 0, BattleAIScript_1DA70D
	jump BattleAIScript_1DA85B

BattleAIScript_1DA70D: @ 81DA70D
	end

BattleAIScript_1DA70E: @ 81DA70E
	if_status4 USER, S_SAFEGUARD, BattleAIScript_1DA858
	end

BattleAIScript_1DA719: @ 81DA719
	if_stat_level_equal TARGET, ATTACK, 0, BattleAIScript_1DA85B
	if_stat_level_equal TARGET, SP_ATTACK, 0, BattleAIScript_1DA858

BattleAIScript_1DA729: @ 81DA729
	count_alive_pokemon USER
	if_equal 0, BattleAIScript_1DA85B
	end

BattleAIScript_1DA732: @ 81DA732
	get_weather
	if_equal WEATHER_RAIN, BattleAIScript_1DA858
	end

BattleAIScript_1DA73A: @ 81DA73A
	get_weather
	if_equal WEATHER_SUN, BattleAIScript_1DA858
	end

BattleAIScript_1DA742: @ 81DA742
	if_status4 TARGET, S_FUTURE_SIGHT, BattleAIScript_1DA85B
	end

BattleAIScript_1DA74D: @ 81DA74D
	is_first_turn USER
	if_equal 0, BattleAIScript_1DA85B
	end

BattleAIScript_1DA756: @ 81DA756
	get_stockpile_count USER
	if_equal 3, BattleAIScript_1DA85B
	end

BattleAIScript_1DA75F: @ 81DA75F
	if_damage_bonus 0, BattleAIScript_1DA85B
	get_stockpile_count USER
	if_equal 0, BattleAIScript_1DA85B
	end

BattleAIScript_1DA76E: @ 81DA76E
	get_weather
	if_equal WEATHER_HAIL, BattleAIScript_1DA858
	end

BattleAIScript_1DA776: @ 81DA776
	if_status2 TARGET, S_TORMENT, BattleAIScript_1DA85B
	end

BattleAIScript_1DA781: @ 81DA781
	get_ability TARGET
	if_equal ABILITY_WATER_VEIL, BattleAIScript_1DA85B
	if_status TARGET, SLP | PSN | BRN | FRZ | PAR | TOX, BattleAIScript_1DA85B
	if_damage_bonus 0, BattleAIScript_1DA85B
	if_damage_bonus 20, BattleAIScript_1DA85B
	if_damage_bonus 10, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7A6: @ 81DA7A6
	is_double_battle
	if_equal 0, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7AE: @ 81DA7AE
	get_ability TARGET
	if_equal ABILITY_STICKY_HOLD, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7B7: @ 81DA7B7
	if_status3 USER, S_ROOTED, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7C2: @ 81DA7C2
	get_item USER
	if_equal ITEM_NONE, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7CB: @ 81DA7CB
	if_status3 USER, S_IMPRISONED, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7D6: @ 81DA7D6
	if_not_status USER, PSN | BRN | PAR | TOX, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7E1: @ 81DA7E1
	if_status3 USER, S_MUD_SPORT, BattleAIScript_1DA85B
	end

BattleAIScript_1DA7EC: @ 81DA7EC
	if_stat_level_equal TARGET, ATTACK, 0, BattleAIScript_1DA85B
	if_stat_level_equal TARGET, DEFENSE, 0, BattleAIScript_1DA858
	end

BattleAIScript_1DA7FD: @ 81DA7FD
	if_stat_level_equal USER, DEFENSE, 12, BattleAIScript_1DA85B
	if_stat_level_equal USER, SP_DEFENSE, 12, BattleAIScript_1DA858
	end

BattleAIScript_1DA80E: @ 81DA80E
	if_stat_level_equal USER, ATTACK, 12, BattleAIScript_1DA85B
	if_stat_level_equal USER, DEFENSE, 12, BattleAIScript_1DA858
	end

BattleAIScript_1DA81F: @ 81DA81F
	if_status3 USER, S_WATER_SPORT, BattleAIScript_1DA85B
	end

BattleAIScript_1DA82A: @ 81DA82A
	if_stat_level_equal USER, SP_ATTACK, 12, BattleAIScript_1DA85B
	if_stat_level_equal USER, SP_DEFENSE, 12, BattleAIScript_1DA858
	end

BattleAIScript_1DA83B: @ 81DA83B
	if_stat_level_equal USER, ATTACK, 12, BattleAIScript_1DA85B
	if_stat_level_equal USER, SPEED, 12, BattleAIScript_1DA858
	end

BattleAIScript_1DA84C: @ 81DA84C
	score -1
	end

BattleAIScript_1DA84F: @ 81DA84F
	score -2
	end

BattleAIScript_1DA852: @ 81DA852
	score -3
	end

BattleAIScript_1DA855: @ 81DA855
	score -5
	end

BattleAIScript_1DA858: @ 81DA858
	score -8
	end

BattleAIScript_1DA85B: @ 81DA85B
	score -10
	end

BattleAIScript_1DA85E: @ 81DA85E
	score -12
	end

@ unreferenced
	score +1
	end

@ unreferenced
	score +2
	end

@ unreferenced
	score +3
	end

@ unreferenced
	score +5
	end

AI_CheckViability: @ 81DA86D
	if_effect EFFECT_SLEEP, BattleAIScript_1DAB44
	if_effect EFFECT_ABSORB, BattleAIScript_1DAB60
	if_effect EFFECT_EXPLOSION, BattleAIScript_1DAB7A
	if_effect EFFECT_DREAM_EATER, BattleAIScript_1DABD8
	if_effect EFFECT_MIRROR_MOVE, BattleAIScript_1DABEC
	if_effect EFFECT_ATTACK_UP, BattleAIScript_1DAC70
	if_effect EFFECT_DEFENSE_UP, BattleAIScript_1DACAB
	if_effect EFFECT_SPEED_UP, BattleAIScript_1DAD11
	if_effect EFFECT_SPECIAL_ATTACK_UP, BattleAIScript_1DAD27
	if_effect EFFECT_SPECIAL_DEFENSE_UP, BattleAIScript_1DAD62
	if_effect EFFECT_ACCURACY_UP, BattleAIScript_1DADC8
	if_effect EFFECT_EVASION_UP, BattleAIScript_1DADE2
	if_effect EFFECT_ALWAYS_HIT, BattleAIScript_1DAE7C
	if_effect EFFECT_ATTACK_DOWN, BattleAIScript_1DAEAC
	if_effect EFFECT_DEFENSE_DOWN, BattleAIScript_1DAEFE
	if_effect EFFECT_SPEED_DOWN, BattleAIScript_1DAF35
	if_effect EFFECT_SPECIAL_ATTACK_DOWN, BattleAIScript_1DAF4B
	if_effect EFFECT_SPECIAL_DEFENSE_DOWN, BattleAIScript_1DAF9F
	if_effect EFFECT_ACCURACY_DOWN, BattleAIScript_1DAFC0
	if_effect EFFECT_EVASION_DOWN, BattleAIScript_1DB054
	if_effect EFFECT_HAZE, BattleAIScript_1DB075
	if_effect EFFECT_BIDE, BattleAIScript_1DB138
	if_effect EFFECT_ROAR, BattleAIScript_1DB142
	if_effect EFFECT_CONVERSION, BattleAIScript_1DB17A
	if_effect EFFECT_RESTORE_HP, BattleAIScript_1DB1AB
	if_effect EFFECT_TOXIC, BattleAIScript_1DB204
	if_effect EFFECT_LIGHT_SCREEN, BattleAIScript_1DB243
	if_effect EFFECT_REST, BattleAIScript_1DB272
	if_effect EFFECT_OHKO, BattleAIScript_1DB2D2
	if_effect EFFECT_RAZOR_WIND, BattleAIScript_1DBA6D
	if_effect EFFECT_SUPER_FANG, BattleAIScript_1DB2D3
	if_effect EFFECT_TRAP, BattleAIScript_1DB2DD
	if_effect EFFECT_HIGH_CRITICAL, BattleAIScript_1DB313
	if_effect EFFECT_CONFUSE, BattleAIScript_1DB342
	if_effect EFFECT_ATTACK_UP_2, BattleAIScript_1DAC70
	if_effect EFFECT_DEFENSE_UP_2, BattleAIScript_1DACAB
	if_effect EFFECT_SPEED_UP_2, BattleAIScript_1DAD11
	if_effect EFFECT_SPECIAL_ATTACK_UP_2, BattleAIScript_1DAD27
	if_effect EFFECT_SPECIAL_DEFENSE_UP_2, BattleAIScript_1DAD62
	if_effect EFFECT_ACCURACY_UP_2, BattleAIScript_1DADC8
	if_effect EFFECT_EVASION_UP_2, BattleAIScript_1DADE2
	if_effect EFFECT_ATTACK_DOWN_2, BattleAIScript_1DAEAC
	if_effect EFFECT_DEFENSE_DOWN_2, BattleAIScript_1DAEFE
	if_effect EFFECT_SPEED_DOWN_2, BattleAIScript_1DAF35
	if_effect EFFECT_SPECIAL_ATTACK_DOWN_2, BattleAIScript_1DAF4B
	if_effect EFFECT_SPECIAL_DEFENSE_DOWN_2, BattleAIScript_1DAF9F
	if_effect EFFECT_ACCURACY_DOWN_2, BattleAIScript_1DAFC0
	if_effect EFFECT_EVASION_DOWN_2, BattleAIScript_1DB054
	if_effect EFFECT_REFLECT, BattleAIScript_1DB364
	if_effect EFFECT_POISON, BattleAIScript_1DB394
	if_effect EFFECT_PARALYZE, BattleAIScript_1DB3A5
	if_effect EFFECT_SPEED_DOWN_HIT, BattleAIScript_1DAF1F
	if_effect EFFECT_SKY_ATTACK, BattleAIScript_1DBA6D
	if_effect EFFECT_VITAL_THROW, BattleAIScript_1DB3C2
	if_effect EFFECT_SUBSTITUTE, BattleAIScript_1DB3E5
	if_effect EFFECT_RECHARGE, BattleAIScript_1DB47B
	if_effect EFFECT_LEECH_SEED, BattleAIScript_1DB204
	if_effect EFFECT_DISABLE, BattleAIScript_1DB4A3
	if_effect EFFECT_COUNTER, BattleAIScript_1DB4C2
	if_effect EFFECT_ENCORE, BattleAIScript_1DB563
	if_effect EFFECT_PAIN_SPLIT, BattleAIScript_1DB5CB
	if_effect EFFECT_SNORE, BattleAIScript_1DB5F7
	if_effect EFFECT_LOCK_ON, BattleAIScript_1DB5FA
	if_effect EFFECT_SLEEP_TALK, BattleAIScript_1DB603
	if_effect EFFECT_DESTINY_BOND, BattleAIScript_1DB606
	if_effect EFFECT_FLAIL, BattleAIScript_1DB63C
	if_effect EFFECT_HEAL_BELL, BattleAIScript_1DB681
	if_effect EFFECT_THIEF, BattleAIScript_1DB698
	if_effect EFFECT_MEAN_LOOK, BattleAIScript_1DB2DD
	if_effect EFFECT_MINIMIZE, BattleAIScript_1DADE2
	if_effect EFFECT_CURSE, BattleAIScript_1DB6BB
	if_effect EFFECT_PROTECT, BattleAIScript_1DB70A
	if_effect EFFECT_FORESIGHT, BattleAIScript_1DB7CB
	if_effect EFFECT_ENDURE, BattleAIScript_1DB7F9
	if_effect EFFECT_BATON_PASS, BattleAIScript_1DB817
	if_effect EFFECT_PURSUIT, BattleAIScript_1DB8B3
	if_effect EFFECT_MORNING_SUN, BattleAIScript_1DB191
	if_effect EFFECT_SYNTHESIS, BattleAIScript_1DB191
	if_effect EFFECT_MOONLIGHT, BattleAIScript_1DB191
	if_effect EFFECT_RAIN_DANCE, BattleAIScript_1DB8E9
	if_effect EFFECT_SUNNY_DAY, BattleAIScript_1DB928
	if_effect EFFECT_BELLY_DRUM, BattleAIScript_1DB951
	if_effect EFFECT_PSYCH_UP, BattleAIScript_1DB960
	if_effect EFFECT_MIRROR_COAT, BattleAIScript_1DB9CD
	if_effect EFFECT_SKULL_BASH, BattleAIScript_1DBA6D
	if_effect EFFECT_SOLARBEAM, BattleAIScript_1DBA6D
	if_effect EFFECT_FLY, BattleAIScript_1DBA91
	if_effect EFFECT_SOFTBOILED, BattleAIScript_1DB1AB
	if_effect EFFECT_FAKE_OUT, BattleAIScript_1DBB1B
	if_effect EFFECT_SPIT_UP, BattleAIScript_1DBB1E
	if_effect EFFECT_SWALLOW, BattleAIScript_1DB1AB
	if_effect EFFECT_HAIL, BattleAIScript_1DBB2F
	if_effect EFFECT_FLATTER, BattleAIScript_1DB33A
	if_effect EFFECT_MEMENTO, BattleAIScript_1DAB7A
	if_effect EFFECT_FACADE, BattleAIScript_1DBB58
	if_effect EFFECT_FOCUS_PUNCH, BattleAIScript_1DBB65
	if_effect EFFECT_SMELLINGSALT, BattleAIScript_1DBBB4
	if_effect EFFECT_TRICK, BattleAIScript_1DBBC6
	if_effect EFFECT_ROLE_PLAY, BattleAIScript_1DBC11
	if_effect EFFECT_SUPERPOWER, BattleAIScript_1DBC48
	if_effect EFFECT_MAGIC_COAT, BattleAIScript_1DBC78
	if_effect EFFECT_RECYCLE, BattleAIScript_1DBCAB
	if_effect EFFECT_REVENGE, BattleAIScript_1DBCCA
	if_effect EFFECT_BRICK_BREAK, BattleAIScript_1DBCF8
	if_effect EFFECT_KNOCK_OFF, BattleAIScript_1DBD0A
	if_effect EFFECT_ENDEAVOR, BattleAIScript_1DBD22
	if_effect EFFECT_ERUPTION, BattleAIScript_1DBD4E
	if_effect EFFECT_SKILL_SWAP, BattleAIScript_1DBC11
	if_effect EFFECT_IMPRISON, BattleAIScript_1DBD76
	if_effect EFFECT_REFRESH, BattleAIScript_1DBD87
	if_effect EFFECT_SNATCH, BattleAIScript_1DBD96
	if_effect EFFECT_BLAZE_KICK, BattleAIScript_1DB313
	if_effect EFFECT_MUD_SPORT, BattleAIScript_1DBE00
	if_effect EFFECT_OVERHEAT, BattleAIScript_1DBE26
	if_effect EFFECT_TICKLE, BattleAIScript_1DAEFE
	if_effect EFFECT_COSMIC_POWER, BattleAIScript_1DAD62
	if_effect EFFECT_BULK_UP, BattleAIScript_1DACAB
	if_effect EFFECT_POISON_TAIL, BattleAIScript_1DB313
	if_effect EFFECT_WATER_SPORT, BattleAIScript_1DBE4E
	if_effect EFFECT_CALM_MIND, BattleAIScript_1DAD62
	if_effect EFFECT_DRAGON_DANCE, BattleAIScript_1DBE74
	end

BattleAIScript_1DAB44: @ 81DAB44
	if_move_effect TARGET, EFFECT_DREAM_EATER, BattleAIScript_1DAB57
	if_move_effect TARGET, EFFECT_NIGHTMARE, BattleAIScript_1DAB57
	jump BattleAIScript_1DAB5F

BattleAIScript_1DAB57: @ 81DAB57
	if_random 128, BattleAIScript_1DAB5F
	score +1

BattleAIScript_1DAB5F: @ 81DAB5F
	end

BattleAIScript_1DAB60: @ 81DAB60
	if_damage_bonus 20, BattleAIScript_1DAB71
	if_damage_bonus 10, BattleAIScript_1DAB71
	jump BattleAIScript_1DAB79

BattleAIScript_1DAB71: @ 81DAB71
	if_random 50, BattleAIScript_1DAB79
	score -3

BattleAIScript_1DAB79: @ 81DAB79
	end

BattleAIScript_1DAB7A: @ 81DAB7A
	if_stat_level_less_than TARGET, EVASION, 7, BattleAIScript_1DAB94
	score -1
	if_stat_level_less_than TARGET, EVASION, 10, BattleAIScript_1DAB94
	if_random 128, BattleAIScript_1DAB94
	score -1

BattleAIScript_1DAB94: @ 81DAB94
	if_hp_less_than USER, 80, BattleAIScript_1DABAC
	if_would_go_first USER, BattleAIScript_1DABAC
	if_random 50, BattleAIScript_1DABD7
	jump BattleAIScript_1DA852

BattleAIScript_1DABAC: @ 81DABAC
	if_hp_more_than USER, 50, BattleAIScript_1DABCF
	if_random 128, BattleAIScript_1DABBB
	score +1

BattleAIScript_1DABBB: @ 81DABBB
	if_hp_more_than USER, 30, BattleAIScript_1DABD7
	if_random 50, BattleAIScript_1DABD7
	score +1
	jump BattleAIScript_1DABD7

BattleAIScript_1DABCF: @ 81DABCF
	if_random 50, BattleAIScript_1DABD7
	score -1

BattleAIScript_1DABD7: @ 81DABD7
	end

BattleAIScript_1DABD8: @ 81DABD8
	if_damage_bonus 10, BattleAIScript_1DABE9
	if_damage_bonus 20, BattleAIScript_1DABE9
	jump BattleAIScript_1DABEB

BattleAIScript_1DABE9: @ 81DABE9
	score -1

BattleAIScript_1DABEB: @ 81DABEB
	end

BattleAIScript_1DABEC: @ 81DABEC
	if_would_go_first USER, BattleAIScript_1DAC0A
	get_move TARGET
	if_not_in_words MoveList_1DAC20, BattleAIScript_1DAC0A
	if_random 128, BattleAIScript_1DAC1D
	score +2
	jump BattleAIScript_1DAC1D

BattleAIScript_1DAC0A: @ 81DAC0A
	get_move TARGET
	if_in_words MoveList_1DAC20, BattleAIScript_1DAC1D
	if_random 80, BattleAIScript_1DAC1D
	score -1

BattleAIScript_1DAC1D: @ 81DAC1D
	end

	.align 2
MoveList_1DAC20: @ 81DAC20
	.2byte MOVE_SLEEP_POWDER
	.2byte MOVE_LOVELY_KISS
	.2byte MOVE_SPORE
	.2byte MOVE_HYPNOSIS
	.2byte MOVE_SING
	.2byte MOVE_GRASS_WHISTLE
	.2byte MOVE_SHADOW_PUNCH
	.2byte MOVE_SAND_ATTACK
	.2byte MOVE_SMOKESCREEN
	.2byte MOVE_TOXIC
	.2byte MOVE_GUILLOTINE
	.2byte MOVE_HORN_DRILL
	.2byte MOVE_FISSURE
	.2byte MOVE_SHEER_COLD
	.2byte MOVE_CROSS_CHOP
	.2byte MOVE_AEROBLAST
	.2byte MOVE_CONFUSE_RAY
	.2byte MOVE_SWEET_KISS
	.2byte MOVE_SCREECH
	.2byte MOVE_COTTON_SPORE
	.2byte MOVE_SCARY_FACE
	.2byte MOVE_FAKE_TEARS
	.2byte MOVE_METAL_SOUND
	.2byte MOVE_THUNDER_WAVE
	.2byte MOVE_GLARE
	.2byte MOVE_POISON_POWDER
	.2byte MOVE_SHADOW_BALL
	.2byte MOVE_DYNAMIC_PUNCH
	.2byte MOVE_HYPER_BEAM
	.2byte MOVE_EXTREME_SPEED
	.2byte MOVE_THIEF
	.2byte MOVE_COVET
	.2byte MOVE_ATTRACT
	.2byte MOVE_SWAGGER
	.2byte MOVE_TORMENT
	.2byte MOVE_FLATTER
	.2byte MOVE_TRICK
	.2byte MOVE_SUPERPOWER
	.2byte MOVE_SKILL_SWAP
	.2byte -1

BattleAIScript_1DAC70: @ 81DAC70
	if_stat_level_less_than USER, ATTACK, 9, BattleAIScript_1DAC85
	if_random 100, BattleAIScript_1DAC94
	score -1
	jump BattleAIScript_1DAC94

BattleAIScript_1DAC85: @ 81DAC85
	if_hp_not_equal USER, 100, BattleAIScript_1DAC94
	if_random 128, BattleAIScript_1DAC94
	score +2

BattleAIScript_1DAC94: @ 81DAC94
	if_hp_more_than USER, 70, BattleAIScript_1DACAA
	if_hp_less_than USER, 40, BattleAIScript_1DACA8
	if_random 40, BattleAIScript_1DACAA

BattleAIScript_1DACA8: @ 81DACA8
	score -2

BattleAIScript_1DACAA: @ 81DACAA
	end

BattleAIScript_1DACAB: @ 81DACAB
	if_stat_level_less_than USER, DEFENSE, 9, BattleAIScript_1DACC0
	if_random 100, BattleAIScript_1DACCF
	score -1
	jump BattleAIScript_1DACCF

BattleAIScript_1DACC0: @ 81DACC0
	if_hp_not_equal USER, 100, BattleAIScript_1DACCF
	if_random 128, BattleAIScript_1DACCF
	score +2

BattleAIScript_1DACCF: @ 81DACCF
	if_hp_less_than USER, 70, BattleAIScript_1DACDC
	if_random 200, BattleAIScript_1DAD06

BattleAIScript_1DACDC: @ 81DACDC
	if_hp_less_than USER, 40, BattleAIScript_1DAD04
	get_move TARGET
	get_move_power
	if_equal 0, BattleAIScript_1DACFE
	get_move TARGET
	get_move_type
	if_not_in_bytes TypeList_1DAD07, BattleAIScript_1DAD04
	if_random 60, BattleAIScript_1DAD06

BattleAIScript_1DACFE: @ 81DACFE
	if_random 60, BattleAIScript_1DAD06

BattleAIScript_1DAD04: @ 81DAD04
	score -2

BattleAIScript_1DAD06: @ 81DAD06
	end

TypeList_1DAD07: @ 81DAD07
	.byte TYPE_NORMAL
	.byte TYPE_FIGHTING
	.byte TYPE_POISON
	.byte TYPE_GROUND
	.byte TYPE_FLYING
	.byte TYPE_ROCK
	.byte TYPE_BUG
	.byte TYPE_GHOST
	.byte TYPE_STEEL
	.byte -1

BattleAIScript_1DAD11: @ 81DAD11
	if_would_go_first USER, BattleAIScript_1DAD1E
	score -3
	jump BattleAIScript_1DAD26

BattleAIScript_1DAD1E: @ 81DAD1E
	if_random 70, BattleAIScript_1DAD26
	score +3

BattleAIScript_1DAD26: @ 81DAD26
	end

BattleAIScript_1DAD27: @ 81DAD27
	if_stat_level_less_than USER, SP_ATTACK, 9, BattleAIScript_1DAD3C
	if_random 100, BattleAIScript_1DAD4B
	score -1
	jump BattleAIScript_1DAD4B

BattleAIScript_1DAD3C: @ 81DAD3C
	if_hp_not_equal USER, 100, BattleAIScript_1DAD4B
	if_random 128, BattleAIScript_1DAD4B
	score +2

BattleAIScript_1DAD4B: @ 81DAD4B
	if_hp_more_than USER, 70, BattleAIScript_1DAD61
	if_hp_less_than USER, 40, BattleAIScript_1DAD5F
	if_random 70, BattleAIScript_1DAD61

BattleAIScript_1DAD5F: @ 81DAD5F
	score -2

BattleAIScript_1DAD61: @ 81DAD61
	end

BattleAIScript_1DAD62: @ 81DAD62
	if_stat_level_less_than USER, SP_DEFENSE, 9, BattleAIScript_1DAD77
	if_random 100, BattleAIScript_1DAD86
	score -1
	jump BattleAIScript_1DAD86

BattleAIScript_1DAD77: @ 81DAD77
	if_hp_not_equal USER, 100, BattleAIScript_1DAD86
	if_random 128, BattleAIScript_1DAD86
	score +2

BattleAIScript_1DAD86: @ 81DAD86
	if_hp_less_than USER, 70, BattleAIScript_1DAD93
	if_random 200, BattleAIScript_1DADBD

BattleAIScript_1DAD93: @ 81DAD93
	if_hp_less_than USER, 40, BattleAIScript_1DADBB
	get_move TARGET
	get_move_power
	if_equal 0, BattleAIScript_1DADB5
	get_move TARGET
	get_move_type
	if_in_bytes TypeList_1DADBE, BattleAIScript_1DADBB
	if_random 60, BattleAIScript_1DADBD

BattleAIScript_1DADB5: @ 81DADB5
	if_random 60, BattleAIScript_1DADBD

BattleAIScript_1DADBB: @ 81DADBB
	score -2

BattleAIScript_1DADBD: @ 81DADBD
	end

TypeList_1DADBE: @ 81DADBE
	.byte TYPE_NORMAL
	.byte TYPE_FIGHTING
	.byte TYPE_POISON
	.byte TYPE_GROUND
	.byte TYPE_FLYING
	.byte TYPE_ROCK
	.byte TYPE_BUG
	.byte TYPE_GHOST
	.byte TYPE_STEEL
	.byte -1

BattleAIScript_1DADC8: @ 81DADC8
	if_stat_level_less_than USER, ACCURACY, 9, BattleAIScript_1DADD8
	if_random 50, BattleAIScript_1DADD8
	score -2

BattleAIScript_1DADD8: @ 81DADD8
	if_hp_more_than USER, 70, BattleAIScript_1DADE1
	score -2

BattleAIScript_1DADE1: @ 81DADE1
	end

BattleAIScript_1DADE2: @ 81DADE2
	if_hp_less_than USER, 90, BattleAIScript_1DADF1
	if_random 100, BattleAIScript_1DADF1
	score +3

BattleAIScript_1DADF1: @ 81DADF1
	if_stat_level_less_than USER, EVASION, 9, BattleAIScript_1DAE01
	if_random 128, BattleAIScript_1DAE01
	score -1

BattleAIScript_1DAE01: @ 81DAE01
	if_not_status TARGET, TOX, BattleAIScript_1DAE20
	if_hp_more_than USER, 50, BattleAIScript_1DAE18
	if_random 80, BattleAIScript_1DAE20

BattleAIScript_1DAE18: @ 81DAE18
	if_random 50, BattleAIScript_1DAE20
	score +3

BattleAIScript_1DAE20: @ 81DAE20
	if_not_status3 TARGET, S_LEECH_SEED, BattleAIScript_1DAE32
	if_random 70, BattleAIScript_1DAE32
	score +3

BattleAIScript_1DAE32: @ 81DAE32
	if_not_status3 USER, S_ROOTED, BattleAIScript_1DAE44
	if_random 128, BattleAIScript_1DAE44
	score +2

BattleAIScript_1DAE44: @ 81DAE44
	if_not_status2 TARGET, S_CURSED, BattleAIScript_1DAE56
	if_random 70, BattleAIScript_1DAE56
	score +3

BattleAIScript_1DAE56: @ 81DAE56
	if_hp_more_than USER, 70, BattleAIScript_1DAE7B
	if_stat_level_equal USER, EVASION, 6, BattleAIScript_1DAE7B
	if_hp_less_than USER, 40, BattleAIScript_1DAE79
	if_hp_less_than TARGET, 40, BattleAIScript_1DAE79
	if_random 70, BattleAIScript_1DAE7B

BattleAIScript_1DAE79: @ 81DAE79
	score -2

BattleAIScript_1DAE7B: @ 81DAE7B
	end

BattleAIScript_1DAE7C: @ 81DAE7C
	if_stat_level_more_than TARGET, EVASION, 10, BattleAIScript_1DAEA1
	if_stat_level_less_than USER, ACCURACY, 2, BattleAIScript_1DAEA1
	if_stat_level_more_than TARGET, EVASION, 8, BattleAIScript_1DAEA3
	if_stat_level_less_than USER, ACCURACY, 4, BattleAIScript_1DAEA3
	jump BattleAIScript_1DAEAB

BattleAIScript_1DAEA1: @ 81DAEA1
	score +1

BattleAIScript_1DAEA3: @ 81DAEA3
	if_random 100, BattleAIScript_1DAEAB
	score +1

BattleAIScript_1DAEAB: @ 81DAEAB
	end

BattleAIScript_1DAEAC: @ 81DAEAC
	if_stat_level_equal TARGET, ATTACK, 6, BattleAIScript_1DAECF
	score -1
	if_hp_more_than USER, 90, BattleAIScript_1DAEBF
	score -1

BattleAIScript_1DAEBF: @ 81DAEBF
	if_stat_level_more_than TARGET, ATTACK, 3, BattleAIScript_1DAECF
	if_random 50, BattleAIScript_1DAECF
	score -2

BattleAIScript_1DAECF: @ 81DAECF
	if_hp_more_than TARGET, 70, BattleAIScript_1DAED8
	score -2

BattleAIScript_1DAED8: @ 81DAED8
	get_type 0
	if_in_bytes TypeList_1DAEF7, BattleAIScript_1DAEF6
	get_type 2
	if_in_bytes TypeList_1DAEF7, BattleAIScript_1DAEF6
	if_random 50, BattleAIScript_1DAEF6
	score -2

BattleAIScript_1DAEF6: @ 81DAEF6
	end

TypeList_1DAEF7: @ 81DAEF7
	.byte TYPE_NORMAL
	.byte TYPE_FIGHTING
	.byte TYPE_GROUND
	.byte TYPE_ROCK
	.byte TYPE_BUG
	.byte TYPE_STEEL
	.byte -1

BattleAIScript_1DAEFE: @ 81DAEFE
	if_hp_less_than USER, 70, BattleAIScript_1DAF0D
	if_stat_level_more_than TARGET, DEFENSE, 3, BattleAIScript_1DAF15

BattleAIScript_1DAF0D: @ 81DAF0D
	if_random 50, BattleAIScript_1DAF15
	score -2

BattleAIScript_1DAF15: @ 81DAF15
	if_hp_more_than TARGET, 70, BattleAIScript_1DAF1E
	score -2

BattleAIScript_1DAF1E: @ 81DAF1E
	end

BattleAIScript_1DAF1F: @ 81DAF1F
	if_move MOVE_ICY_WIND, BattleAIScript_1DAF35
	if_move MOVE_ROCK_TOMB, BattleAIScript_1DAF35
	if_move MOVE_MUD_SHOT, BattleAIScript_1DAF35
	end

BattleAIScript_1DAF35: @ 81DAF35
	if_would_go_first USER, BattleAIScript_1DAF42
	score -3
	jump BattleAIScript_1DAF4A

BattleAIScript_1DAF42: @ 81DAF42
	if_random 70, BattleAIScript_1DAF4A
	score +2

BattleAIScript_1DAF4A: @ 81DAF4A
	end

BattleAIScript_1DAF4B: @ 81DAF4B
	if_stat_level_equal TARGET, ATTACK, 6, BattleAIScript_1DAF6E
	score -1
	if_hp_more_than USER, 90, BattleAIScript_1DAF5E
	score -1

BattleAIScript_1DAF5E: @ 81DAF5E
	if_stat_level_more_than TARGET, SP_ATTACK, 3, BattleAIScript_1DAF6E
	if_random 50, BattleAIScript_1DAF6E
	score -2

BattleAIScript_1DAF6E: @ 81DAF6E
	if_hp_more_than TARGET, 70, BattleAIScript_1DAF77
	score -2

BattleAIScript_1DAF77: @ 81DAF77
	get_type 0
	if_in_bytes TypeList_1DAF96, BattleAIScript_1DAF95
	get_type 2
	if_in_bytes TypeList_1DAF96, BattleAIScript_1DAF95
	if_random 50, BattleAIScript_1DAF95
	score -2

BattleAIScript_1DAF95: @ 81DAF95
	end

TypeList_1DAF96: @ 81DAF96
	.byte TYPE_FIRE
	.byte TYPE_WATER
	.byte TYPE_GRASS
	.byte TYPE_ELECTRIC
	.byte TYPE_PSYCHIC
	.byte TYPE_ICE
	.byte TYPE_DRAGON
	.byte TYPE_DARK
	.byte -1

BattleAIScript_1DAF9F: @ 81DAF9F
	if_hp_less_than USER, 70, BattleAIScript_1DAFAE
	if_stat_level_more_than TARGET, SP_DEFENSE, 3, BattleAIScript_1DAFB6

BattleAIScript_1DAFAE: @ 81DAFAE
	if_random 50, BattleAIScript_1DAFB6
	score -2

BattleAIScript_1DAFB6: @ 81DAFB6
	if_hp_more_than TARGET, 70, BattleAIScript_1DAFBF
	score -2

BattleAIScript_1DAFBF: @ 81DAFBF
	end

BattleAIScript_1DAFC0: @ 81DAFC0
	if_hp_less_than USER, 70, BattleAIScript_1DAFCE
	if_hp_more_than TARGET, 70, BattleAIScript_1DAFD6

BattleAIScript_1DAFCE: @ 81DAFCE
	if_random 100, BattleAIScript_1DAFD6
	score -1

BattleAIScript_1DAFD6: @ 81DAFD6
	if_stat_level_more_than USER, ACCURACY, 4, BattleAIScript_1DAFE6
	if_random 80, BattleAIScript_1DAFE6
	score -2

BattleAIScript_1DAFE6: @ 81DAFE6
	if_not_status TARGET, TOX, BattleAIScript_1DAFF8
	if_random 70, BattleAIScript_1DAFF8
	score +2

BattleAIScript_1DAFF8: @ 81DAFF8
	if_not_status3 TARGET, S_LEECH_SEED, BattleAIScript_1DB00A
	if_random 70, BattleAIScript_1DB00A
	score +2

BattleAIScript_1DB00A: @ 81DB00A
	if_not_status3 USER, S_ROOTED, BattleAIScript_1DB01C
	if_random 128, BattleAIScript_1DB01C
	score +1

BattleAIScript_1DB01C: @ 81DB01C
	if_not_status2 TARGET, S_CURSED, BattleAIScript_1DB02E
	if_random 70, BattleAIScript_1DB02E
	score +2

BattleAIScript_1DB02E: @ 81DB02E
	if_hp_more_than USER, 70, BattleAIScript_1DB053
	if_stat_level_equal TARGET, ACCURACY, 6, BattleAIScript_1DB053
	if_hp_less_than USER, 40, BattleAIScript_1DB051
	if_hp_less_than TARGET, 40, BattleAIScript_1DB051
	if_random 70, BattleAIScript_1DB053

BattleAIScript_1DB051: @ 81DB051
	score -2

BattleAIScript_1DB053: @ 81DB053
	end

BattleAIScript_1DB054: @ 81DB054
	if_hp_less_than USER, 70, BattleAIScript_1DB063
	if_stat_level_more_than TARGET, EVASION, 3, BattleAIScript_1DB06B

BattleAIScript_1DB063: @ 81DB063
	if_random 50, BattleAIScript_1DB06B
	score -2

BattleAIScript_1DB06B: @ 81DB06B
	if_hp_more_than TARGET, 70, BattleAIScript_1DB074
	score -2

BattleAIScript_1DB074: @ 81DB074
	end

BattleAIScript_1DB075: @ 81DB075
	if_stat_level_more_than USER, ATTACK, 8, BattleAIScript_1DB0CA
	if_stat_level_more_than USER, DEFENSE, 8, BattleAIScript_1DB0CA
	if_stat_level_more_than USER, SP_ATTACK, 8, BattleAIScript_1DB0CA
	if_stat_level_more_than USER, SP_DEFENSE, 8, BattleAIScript_1DB0CA
	if_stat_level_more_than USER, EVASION, 8, BattleAIScript_1DB0CA
	if_stat_level_less_than TARGET, ATTACK, 4, BattleAIScript_1DB0CA
	if_stat_level_less_than TARGET, DEFENSE, 4, BattleAIScript_1DB0CA
	if_stat_level_less_than TARGET, SP_ATTACK, 4, BattleAIScript_1DB0CA
	if_stat_level_less_than TARGET, SP_DEFENSE, 4, BattleAIScript_1DB0CA
	if_stat_level_less_than TARGET, ACCURACY, 4, BattleAIScript_1DB0CA
	jump BattleAIScript_1DB0D2

BattleAIScript_1DB0CA: @ 81DB0CA
	if_random 50, BattleAIScript_1DB0D2
	score -3

BattleAIScript_1DB0D2: @ 81DB0D2
	if_stat_level_more_than TARGET, ATTACK, 8, BattleAIScript_1DB12F
	if_stat_level_more_than TARGET, DEFENSE, 8, BattleAIScript_1DB12F
	if_stat_level_more_than TARGET, SP_ATTACK, 8, BattleAIScript_1DB12F
	if_stat_level_more_than TARGET, SP_DEFENSE, 8, BattleAIScript_1DB12F
	if_stat_level_more_than TARGET, EVASION, 8, BattleAIScript_1DB12F
	if_stat_level_less_than USER, ATTACK, 4, BattleAIScript_1DB12F
	if_stat_level_less_than USER, DEFENSE, 4, BattleAIScript_1DB12F
	if_stat_level_less_than USER, SP_ATTACK, 4, BattleAIScript_1DB12F
	if_stat_level_less_than USER, SP_DEFENSE, 4, BattleAIScript_1DB12F
	if_stat_level_less_than USER, ACCURACY, 4, BattleAIScript_1DB12F
	if_random 50, BattleAIScript_1DB137
	score -1
	jump BattleAIScript_1DB137

BattleAIScript_1DB12F: @ 81DB12F
	if_random 50, BattleAIScript_1DB137
	score +3

BattleAIScript_1DB137: @ 81DB137
	end

BattleAIScript_1DB138: @ 81DB138
	if_hp_more_than USER, 90, BattleAIScript_1DB141
	score -2

BattleAIScript_1DB141: @ 81DB141
	end

BattleAIScript_1DB142: @ 81DB142
	if_stat_level_more_than TARGET, ATTACK, 8, BattleAIScript_1DB171
	if_stat_level_more_than TARGET, DEFENSE, 8, BattleAIScript_1DB171
	if_stat_level_more_than TARGET, SP_ATTACK, 8, BattleAIScript_1DB171
	if_stat_level_more_than TARGET, SP_DEFENSE, 8, BattleAIScript_1DB171
	if_stat_level_more_than TARGET, EVASION, 8, BattleAIScript_1DB171
	score -3
	jump BattleAIScript_1DB179

BattleAIScript_1DB171: @ 81DB171
	if_random 128, BattleAIScript_1DB179
	score +2

BattleAIScript_1DB179: @ 81DB179
	end

BattleAIScript_1DB17A: @ 81DB17A
	if_hp_more_than USER, 90, BattleAIScript_1DB183
	score -2

BattleAIScript_1DB183: @ 81DB183
	get_turn_count
	if_equal 0, BattleAIScript_1DB190
	if_random 200, BattleAIScript_1DA84F

BattleAIScript_1DB190: @ 81DB190
	end

BattleAIScript_1DB191: @ 81DB191
	get_weather
	if_equal WEATHER_HAIL, BattleAIScript_1DB1A9
	if_equal WEATHER_RAIN, BattleAIScript_1DB1A9
	if_equal WEATHER_SANDSTORM, BattleAIScript_1DB1A9
	jump BattleAIScript_1DB1AB

BattleAIScript_1DB1A9: @ 81DB1A9
	score -2

BattleAIScript_1DB1AB: @ 81DB1AB
	if_hp_equal USER, 100, BattleAIScript_1DB1D3
	if_would_go_first USER, BattleAIScript_1DB1DA
	score -8
	jump BattleAIScript_1DB203

@ unreferenced
	if_hp_less_than USER, 50, BattleAIScript_1DB1EE
	if_hp_more_than USER, 80, BattleAIScript_1DB1D3
	if_random 70, BattleAIScript_1DB1EE

BattleAIScript_1DB1D3: @ 81DB1D3
	score -3
	jump BattleAIScript_1DB203

BattleAIScript_1DB1DA: @ 81DB1DA
	if_hp_less_than USER, 70, BattleAIScript_1DB1EE
	if_random 30, BattleAIScript_1DB1EE
	score -3
	jump BattleAIScript_1DB203

BattleAIScript_1DB1EE: @ 81DB1EE
	if_not_move_effect TARGET, EFFECT_SNATCH, BattleAIScript_1DB1FB
	if_random 100, BattleAIScript_1DB203

BattleAIScript_1DB1FB: @ 81DB1FB
	if_random 20, BattleAIScript_1DB203
	score +2

BattleAIScript_1DB203: @ 81DB203
	end

BattleAIScript_1DB204: @ 81DB204
	if_user_cant_damage BattleAIScript_1DB227
	if_hp_more_than USER, 50, BattleAIScript_1DB218
	if_random 50, BattleAIScript_1DB218
	score -3

BattleAIScript_1DB218: @ 81DB218
	if_hp_more_than TARGET, 50, BattleAIScript_1DB227
	if_random 50, BattleAIScript_1DB227
	score -3

BattleAIScript_1DB227: @ 81DB227
	if_move_effect USER, EFFECT_SPECIAL_DEFENSE_UP, BattleAIScript_1DB23A
	if_move_effect USER, EFFECT_PROTECT, BattleAIScript_1DB23A
	jump BattleAIScript_1DB242

BattleAIScript_1DB23A: @ 81DB23A
	if_random 60, BattleAIScript_1DB242
	score +2

BattleAIScript_1DB242: @ 81DB242
	end

BattleAIScript_1DB243: @ 81DB243
	if_hp_less_than USER, 50, BattleAIScript_1DB266
	get_type 0
	if_in_bytes TypeList_1DB269, BattleAIScript_1DB268
	get_type 2
	if_in_bytes TypeList_1DB269, BattleAIScript_1DB268
	if_random 50, BattleAIScript_1DB268

BattleAIScript_1DB266: @ 81DB266
	score -2

BattleAIScript_1DB268: @ 81DB268
	end

TypeList_1DB269: @ 81DB269
	.byte TYPE_FIRE
	.byte TYPE_WATER
	.byte TYPE_GRASS
	.byte TYPE_ELECTRIC
	.byte TYPE_PSYCHIC
	.byte TYPE_ICE
	.byte TYPE_DRAGON
	.byte TYPE_DARK
	.byte -1

BattleAIScript_1DB272: @ 81DB272
	if_would_go_first USER, BattleAIScript_1DB2A1
	if_hp_not_equal USER, 100, BattleAIScript_1DB286
	score -8
	jump BattleAIScript_1DB2D1

BattleAIScript_1DB286: @ 81DB286
	if_hp_less_than USER, 40, BattleAIScript_1DB2BC
	if_hp_more_than USER, 50, BattleAIScript_1DB29A
	if_random 70, BattleAIScript_1DB2BC

BattleAIScript_1DB29A: @ 81DB29A
	score -3
	jump BattleAIScript_1DB2D1

BattleAIScript_1DB2A1: @ 81DB2A1
	if_hp_less_than USER, 60, BattleAIScript_1DB2BC
	if_hp_more_than USER, 70, BattleAIScript_1DB2B5
	if_random 50, BattleAIScript_1DB2BC

BattleAIScript_1DB2B5: @ 81DB2B5
	score -3
	jump BattleAIScript_1DB2D1

BattleAIScript_1DB2BC: @ 81DB2BC
	if_not_move_effect TARGET, EFFECT_SNATCH, BattleAIScript_1DB2C9
	if_random 50, BattleAIScript_1DB2D1

BattleAIScript_1DB2C9: @ 81DB2C9
	if_random 10, BattleAIScript_1DB2D1
	score +3

BattleAIScript_1DB2D1: @ 81DB2D1
	end

BattleAIScript_1DB2D2: @ 81DB2D2
	end

BattleAIScript_1DB2D3: @ 81DB2D3
	if_hp_more_than TARGET, 50, BattleAIScript_1DB2DC
	score -1

BattleAIScript_1DB2DC: @ 81DB2DC
	end

BattleAIScript_1DB2DD: @ 81DB2DD
	if_status TARGET, TOX, BattleAIScript_1DB30A
	if_status2 TARGET, S_CURSED, BattleAIScript_1DB30A
	if_status3 TARGET, S_PERISH_SONG, BattleAIScript_1DB30A
	if_status2 TARGET, S_INFATUATED, BattleAIScript_1DB30A
	jump BattleAIScript_1DB312

BattleAIScript_1DB30A: @ 81DB30A
	if_random 128, BattleAIScript_1DB312
	score +1

BattleAIScript_1DB312: @ 81DB312
	end

BattleAIScript_1DB313: @ 81DB313
	if_damage_bonus 10, BattleAIScript_1DB339
	if_damage_bonus 20, BattleAIScript_1DB339
	if_damage_bonus 80, BattleAIScript_1DB331
	if_damage_bonus 160, BattleAIScript_1DB331
	if_random 128, BattleAIScript_1DB339

BattleAIScript_1DB331: @ 81DB331
	if_random 128, BattleAIScript_1DB339
	score +1

BattleAIScript_1DB339: @ 81DB339
	end

BattleAIScript_1DB33A: @ 81DB33A
	if_random 128, BattleAIScript_1DB342
	score +1

BattleAIScript_1DB342: @ 81DB342
	if_hp_more_than TARGET, 70, BattleAIScript_1DB363
	if_random 128, BattleAIScript_1DB351
	score -1

BattleAIScript_1DB351: @ 81DB351
	if_hp_more_than TARGET, 50, BattleAIScript_1DB363
	score -1
	if_hp_more_than TARGET, 30, BattleAIScript_1DB363
	score -1

BattleAIScript_1DB363: @ 81DB363
	end

BattleAIScript_1DB364: @ 81DB364
	if_hp_less_than USER, 50, BattleAIScript_1DB387
	get_type 0
	if_in_bytes TypeList_1DB38A, BattleAIScript_1DB389
	get_type 2
	if_in_bytes TypeList_1DB38A, BattleAIScript_1DB389
	if_random 50, BattleAIScript_1DB389

BattleAIScript_1DB387: @ 81DB387
	score -2

BattleAIScript_1DB389: @ 81DB389
	end

TypeList_1DB38A: @ 81DB38A
	.byte TYPE_NORMAL
	.byte TYPE_FIGHTING
	.byte TYPE_FLYING
	.byte TYPE_POISON
	.byte TYPE_GROUND
	.byte TYPE_ROCK
	.byte TYPE_BUG
	.byte TYPE_GHOST
	.byte TYPE_STEEL
	.byte -1

BattleAIScript_1DB394: @ 81DB394
	if_hp_less_than USER, 50, BattleAIScript_1DB3A2
	if_hp_more_than TARGET, 50, BattleAIScript_1DB3A4

BattleAIScript_1DB3A2: @ 81DB3A2
	score -1

BattleAIScript_1DB3A4: @ 81DB3A4
	end

BattleAIScript_1DB3A5: @ 81DB3A5
	if_would_go_first USER, BattleAIScript_1DB3B9
	if_hp_more_than USER, 70, BattleAIScript_1DB3C1
	score -1
	jump BattleAIScript_1DB3C1

BattleAIScript_1DB3B9: @ 81DB3B9
	if_random 20, BattleAIScript_1DB3C1
	score +3

BattleAIScript_1DB3C1: @ 81DB3C1
	end

BattleAIScript_1DB3C2: @ 81DB3C2
	if_would_go_first USER, BattleAIScript_1DB3E4
	if_hp_more_than USER, 60, BattleAIScript_1DB3E4
	if_hp_less_than USER, 40, BattleAIScript_1DB3DC
	if_random 180, BattleAIScript_1DB3E4

BattleAIScript_1DB3DC: @ 81DB3DC
	if_random 50, BattleAIScript_1DB3E4
	score -1

BattleAIScript_1DB3E4: @ 81DB3E4
	end

BattleAIScript_1DB3E5: @ 81DB3E5
	if_hp_more_than USER, 90, BattleAIScript_1DB412
	if_hp_more_than USER, 70, BattleAIScript_1DB40A
	if_hp_more_than USER, 50, BattleAIScript_1DB402
	if_random 100, BattleAIScript_1DB402
	score -1

BattleAIScript_1DB402: @ 81DB402
	if_random 100, BattleAIScript_1DB40A
	score -1

BattleAIScript_1DB40A: @ 81DB40A
	if_random 100, BattleAIScript_1DB412
	score -1

BattleAIScript_1DB412: @ 81DB412
	if_would_go_first USER, BattleAIScript_1DB47A
	get_move TARGET
	get_move_effect
	if_equal EFFECT_SLEEP, BattleAIScript_1DB44A
	if_equal EFFECT_TOXIC, BattleAIScript_1DB44A
	if_equal EFFECT_POISON, BattleAIScript_1DB44A
	if_equal EFFECT_PARALYZE, BattleAIScript_1DB44A
	if_equal EFFECT_WILL_O_WISP, BattleAIScript_1DB44A
	if_equal EFFECT_CONFUSE, BattleAIScript_1DB459
	if_equal EFFECT_LEECH_SEED, BattleAIScript_1DB468
	jump BattleAIScript_1DB47A

BattleAIScript_1DB44A: @ 81DB44A
	if_not_status TARGET, SLP | PSN | BRN | FRZ | PAR | TOX, BattleAIScript_1DB472
	jump BattleAIScript_1DB47A

BattleAIScript_1DB459: @ 81DB459
	if_not_status2 TARGET, S_CONFUSED, BattleAIScript_1DB472
	jump BattleAIScript_1DB47A

BattleAIScript_1DB468: @ 81DB468
	if_status3 TARGET, S_LEECH_SEED, BattleAIScript_1DB47A

BattleAIScript_1DB472: @ 81DB472
	if_random 100, BattleAIScript_1DB47A
	score +1

BattleAIScript_1DB47A: @ 81DB47A
	end

BattleAIScript_1DB47B: @ 81DB47B
	if_damage_bonus 10, BattleAIScript_1DB4A0
	if_damage_bonus 20, BattleAIScript_1DB4A0
	if_would_go_first USER, BattleAIScript_1DB499
	if_hp_more_than USER, 40, BattleAIScript_1DB4A0
	jump BattleAIScript_1DB4A2

BattleAIScript_1DB499: @ 81DB499
	if_hp_less_than USER, 60, BattleAIScript_1DB4A2

BattleAIScript_1DB4A0: @ 81DB4A0
	score -1

BattleAIScript_1DB4A2: @ 81DB4A2
	end

BattleAIScript_1DB4A3: @ 81DB4A3
	if_would_go_first USER, BattleAIScript_1DB4C1
	get_move TARGET
	get_move_power
	if_equal 0, BattleAIScript_1DB4B9
	score +1
	jump BattleAIScript_1DB4C1

BattleAIScript_1DB4B9: @ 81DB4B9
	if_random 100, BattleAIScript_1DB4C1
	score -1

BattleAIScript_1DB4C1: @ 81DB4C1
	end

BattleAIScript_1DB4C2: @ 81DB4C2
	if_status TARGET, SLP, BattleAIScript_1DB556
	if_status2 TARGET, S_INFATUATED, BattleAIScript_1DB556
	if_status2 TARGET, S_CONFUSED, BattleAIScript_1DB556
	if_hp_more_than USER, 30, BattleAIScript_1DB4EF
	if_random 10, BattleAIScript_1DB4EF
	score -1

BattleAIScript_1DB4EF: @ 81DB4EF
	if_hp_more_than USER, 50, BattleAIScript_1DB4FE
	if_random 100, BattleAIScript_1DB4FE
	score -1

BattleAIScript_1DB4FE: @ 81DB4FE
	get_move TARGET
	get_move_power
	if_equal 0, BattleAIScript_1DB52D
	if_not_taunted BattleAIScript_1DB514
	if_random 100, BattleAIScript_1DB514
	score +1

BattleAIScript_1DB514: @ 81DB514
	get_move TARGET
	get_move_type
	if_not_in_bytes TypeList_1DB559, BattleAIScript_1DB556
	if_random 100, BattleAIScript_1DB558
	score +1
	jump BattleAIScript_1DB558

BattleAIScript_1DB52D: @ 81DB52D
	if_not_taunted BattleAIScript_1DB53A
	if_random 100, BattleAIScript_1DB53A
	score +1

BattleAIScript_1DB53A: @ 81DB53A
	get_type 0
	if_in_bytes TypeList_1DB559, BattleAIScript_1DB558
	get_type 2
	if_in_bytes TypeList_1DB559, BattleAIScript_1DB558
	if_random 50, BattleAIScript_1DB558

BattleAIScript_1DB556: @ 81DB556
	score -1

BattleAIScript_1DB558: @ 81DB558
	end

TypeList_1DB559: @ 81DB559
	.byte TYPE_NORMAL
	.byte TYPE_FIGHTING
	.byte TYPE_FLYING
	.byte TYPE_POISON
	.byte TYPE_GROUND
	.byte TYPE_ROCK
	.byte TYPE_BUG
	.byte TYPE_GHOST
	.byte TYPE_STEEL
	.byte -1

BattleAIScript_1DB563: @ 81DB563
	if_last_move_did_damage TARGET, 0, BattleAIScript_1DB57C
	if_would_go_first USER, BattleAIScript_1DB589
	get_move TARGET
	get_move_effect
	if_not_in_bytes MoveEffectList_1DB58C, BattleAIScript_1DB589

BattleAIScript_1DB57C: @ 81DB57C
	if_random 30, BattleAIScript_1DB58B
	score +3
	jump BattleAIScript_1DB58B

BattleAIScript_1DB589: @ 81DB589
	score -2

BattleAIScript_1DB58B: @ 81DB58B
	end

MoveEffectList_1DB58C: @ 81DB58C
	.byte EFFECT_DREAM_EATER
	.byte EFFECT_ATTACK_UP
	.byte EFFECT_DEFENSE_UP
	.byte EFFECT_SPEED_UP
	.byte EFFECT_SPECIAL_ATTACK_UP
	.byte EFFECT_HAZE
	.byte EFFECT_ROAR
	.byte EFFECT_CONVERSION
	.byte EFFECT_TOXIC
	.byte EFFECT_LIGHT_SCREEN
	.byte EFFECT_REST
	.byte EFFECT_SUPER_FANG
	.byte EFFECT_SPECIAL_DEFENSE_UP_2
	.byte EFFECT_CONFUSE
	.byte EFFECT_POISON
	.byte EFFECT_PARALYZE
	.byte EFFECT_LEECH_SEED
	.byte EFFECT_SPLASH
	.byte EFFECT_ATTACK_UP_2
	.byte EFFECT_ENCORE
	.byte EFFECT_CONVERSION_2
	.byte EFFECT_LOCK_ON
	.byte EFFECT_HEAL_BELL
	.byte EFFECT_MEAN_LOOK
	.byte EFFECT_NIGHTMARE
	.byte EFFECT_PROTECT
	.byte EFFECT_SKILL_SWAP
	.byte EFFECT_FORESIGHT
	.byte EFFECT_PERISH_SONG
	.byte EFFECT_SANDSTORM
	.byte EFFECT_ENDURE
	.byte EFFECT_SWAGGER
	.byte EFFECT_ATTRACT
	.byte EFFECT_SAFEGUARD
	.byte EFFECT_RAIN_DANCE
	.byte EFFECT_SUNNY_DAY
	.byte EFFECT_BELLY_DRUM
	.byte EFFECT_PSYCH_UP
	.byte EFFECT_FUTURE_SIGHT
	.byte EFFECT_FAKE_OUT
	.byte EFFECT_STOCKPILE
	.byte EFFECT_SPIT_UP
	.byte EFFECT_SWALLOW
	.byte EFFECT_HAIL
	.byte EFFECT_TORMENT
	.byte EFFECT_WILL_O_WISP
	.byte EFFECT_FOLLOW_ME
	.byte EFFECT_CHARGE
	.byte EFFECT_TRICK
	.byte EFFECT_ROLE_PLAY
	.byte EFFECT_INGRAIN
	.byte EFFECT_RECYCLE
	.byte EFFECT_KNOCK_OFF
	.byte EFFECT_SKILL_SWAP
	.byte EFFECT_IMPRISON
	.byte EFFECT_REFRESH
	.byte EFFECT_GRUDGE
	.byte EFFECT_TEETER_DANCE
	.byte EFFECT_MUD_SPORT
	.byte EFFECT_WATER_SPORT
	.byte EFFECT_DRAGON_DANCE
	.byte EFFECT_CAMOUFLAGE
	.byte -1

BattleAIScript_1DB5CB: @ 81DB5CB
	if_hp_less_than TARGET, 80, BattleAIScript_1DB5F4
	if_would_go_first USER, BattleAIScript_1DB5E6
	if_hp_more_than USER, 40, BattleAIScript_1DB5F4
	score +1
	jump BattleAIScript_1DB5F6

BattleAIScript_1DB5E6: @ 81DB5E6
	if_hp_more_than USER, 60, BattleAIScript_1DB5F4
	score +1
	jump BattleAIScript_1DB5F6

BattleAIScript_1DB5F4: @ 81DB5F4
	score -1

BattleAIScript_1DB5F6: @ 81DB5F6
	end

BattleAIScript_1DB5F7: @ 81DB5F7
	score +2
	end

BattleAIScript_1DB5FA: @ 81DB5FA
	if_random 128, BattleAIScript_1DB602
	score +2

BattleAIScript_1DB602: @ 81DB602
	end

BattleAIScript_1DB603: @ 81DB603
	score +2
	end

BattleAIScript_1DB606: @ 81DB606
	score -1
	if_would_go_first USER, BattleAIScript_1DB63B
	if_hp_more_than USER, 70, BattleAIScript_1DB63B
	if_random 128, BattleAIScript_1DB61D
	score +1

BattleAIScript_1DB61D: @ 81DB61D
	if_hp_more_than USER, 50, BattleAIScript_1DB63B
	if_random 128, BattleAIScript_1DB62C
	score +1

BattleAIScript_1DB62C: @ 81DB62C
	if_hp_more_than USER, 30, BattleAIScript_1DB63B
	if_random 100, BattleAIScript_1DB63B
	score +2

BattleAIScript_1DB63B: @ 81DB63B
	end

BattleAIScript_1DB63C: @ 81DB63C
	if_would_go_first USER, BattleAIScript_1DB65C
	if_hp_more_than USER, 33, BattleAIScript_1DB67E
	if_hp_more_than USER, 20, BattleAIScript_1DB680
	if_hp_less_than USER, 8, BattleAIScript_1DB66F
	jump BattleAIScript_1DB671

BattleAIScript_1DB65C: @ 81DB65C
	if_hp_more_than USER, 60, BattleAIScript_1DB67E
	if_hp_more_than USER, 40, BattleAIScript_1DB680
	jump BattleAIScript_1DB671

BattleAIScript_1DB66F: @ 81DB66F
	score +1

BattleAIScript_1DB671: @ 81DB671
	if_random 100, BattleAIScript_1DB680
	score +1
	jump BattleAIScript_1DB680

BattleAIScript_1DB67E: @ 81DB67E
	score -1

BattleAIScript_1DB680: @ 81DB680
	end

BattleAIScript_1DB681: @ 81DB681
	if_status TARGET, SLP | PSN | BRN | FRZ | PAR | TOX, BattleAIScript_1DB697
	if_status_in_party TARGET, SLP | PSN | BRN | FRZ | PAR | TOX, BattleAIScript_1DB697
	score -5

BattleAIScript_1DB697: @ 81DB697
	end

BattleAIScript_1DB698: @ 81DB698
	get_hold_effect TARGET
	if_not_in_bytes HoldEffectList_1DB6B3, BattleAIScript_1DB6B0
	if_random 50, BattleAIScript_1DB6B2
	score +1
	jump BattleAIScript_1DB6B2

BattleAIScript_1DB6B0: @ 81DB6B0
	score -2

BattleAIScript_1DB6B2: @ 81DB6B2
	end

HoldEffectList_1DB6B3: @ 81DB6B3
	.byte HOLD_EFFECT_CURE_SLP
	.byte HOLD_EFFECT_CURE_STATUS
	.byte HOLD_EFFECT_RESTORE_HP
	.byte HOLD_EFFECT_EVASION_UP
	.byte HOLD_EFFECT_LEFTOVERS
	.byte HOLD_EFFECT_LIGHT_BALL
	.byte HOLD_EFFECT_THICK_CLUB
	.byte -1

BattleAIScript_1DB6BB: @ 81DB6BB
	get_type 1
	if_equal TYPE_GHOST, BattleAIScript_1DB700
	get_type 3
	if_equal TYPE_GHOST, BattleAIScript_1DB700
	if_stat_level_more_than USER, DEFENSE, 9, BattleAIScript_1DB709
	if_random 128, BattleAIScript_1DB6DB
	score +1

BattleAIScript_1DB6DB: @ 81DB6DB
	if_stat_level_more_than USER, DEFENSE, 7, BattleAIScript_1DB709
	if_random 128, BattleAIScript_1DB6EB
	score +1

BattleAIScript_1DB6EB: @ 81DB6EB
	if_stat_level_more_than USER, DEFENSE, 6, BattleAIScript_1DB709
	if_random 128, BattleAIScript_1DB709
	score +1
	jump BattleAIScript_1DB709

BattleAIScript_1DB700: @ 81DB700
	if_hp_more_than USER, 80, BattleAIScript_1DB709
	score -1

BattleAIScript_1DB709: @ 81DB709
	end

BattleAIScript_1DB70A: @ 81DB70A
	get_protect_count USER
	if_more_than 1, BattleAIScript_1DB7C8
	if_status USER, TOX, BattleAIScript_1DB7BF
	if_status2 USER, S_CURSED, BattleAIScript_1DB7BF
	if_status3 USER, S_PERISH_SONG, BattleAIScript_1DB7BF
	if_status2 USER, S_INFATUATED, BattleAIScript_1DB7BF
	if_status3 USER, S_LEECH_SEED, BattleAIScript_1DB7BF
	if_status3 USER, S_YAWN, BattleAIScript_1DB7BF
	if_move_effect TARGET, EFFECT_RESTORE_HP, BattleAIScript_1DB7BF
	if_move_effect TARGET, EFFECT_DEFENSE_CURL, BattleAIScript_1DB7BF
	if_status TARGET, TOX, BattleAIScript_1DB7A6
	if_status2 TARGET, S_CURSED, BattleAIScript_1DB7A6
	if_status3 TARGET, S_PERISH_SONG, BattleAIScript_1DB7A6
	if_status2 TARGET, S_INFATUATED, BattleAIScript_1DB7A6
	if_status3 TARGET, S_LEECH_SEED, BattleAIScript_1DB7A6
	if_status3 TARGET, S_YAWN, BattleAIScript_1DB7A6
	get_move TARGET
	get_move_effect
	if_not_equal EFFECT_LOCK_ON, BattleAIScript_1DB7A6
	jump BattleAIScript_1DB7A8

BattleAIScript_1DB7A6: @ 81DB7A6
	score +2

BattleAIScript_1DB7A8: @ 81DB7A8
	get_protect_count USER
	if_equal 0, BattleAIScript_1DB7CA
	score -1
	if_random 128, BattleAIScript_1DB7CA
	score -1
	jump BattleAIScript_1DB7CA

BattleAIScript_1DB7BF: @ 81DB7BF
	get_move TARGET
	get_move_effect
	if_not_equal EFFECT_LOCK_ON, BattleAIScript_1DB7CA

BattleAIScript_1DB7C8: @ 81DB7C8
	score -2

BattleAIScript_1DB7CA: @ 81DB7CA
	end

BattleAIScript_1DB7CB: @ 81DB7CB
	get_type 1
	if_equal TYPE_GHOST, BattleAIScript_1DB7EA
	get_type 3
	if_equal TYPE_GHOST, BattleAIScript_1DB7EA
	if_stat_level_more_than USER, EVASION, 8, BattleAIScript_1DB7F0
	score -2
	jump BattleAIScript_1DB7F8

BattleAIScript_1DB7EA: @ 81DB7EA
	if_random 80, BattleAIScript_1DB7F8

BattleAIScript_1DB7F0: @ 81DB7F0
	if_random 80, BattleAIScript_1DB7F8
	score +2

BattleAIScript_1DB7F8: @ 81DB7F8
	end

BattleAIScript_1DB7F9: @ 81DB7F9
	if_hp_less_than USER, 4, BattleAIScript_1DB807
	if_hp_less_than USER, 35, BattleAIScript_1DB80E

BattleAIScript_1DB807: @ 81DB807
	score -1
	jump BattleAIScript_1DB816

BattleAIScript_1DB80E: @ 81DB80E
	if_random 70, BattleAIScript_1DB816
	score +1

BattleAIScript_1DB816: @ 81DB816
	end

BattleAIScript_1DB817: @ 81DB817
	if_stat_level_more_than USER, ATTACK, 8, BattleAIScript_1DB844
	if_stat_level_more_than USER, DEFENSE, 8, BattleAIScript_1DB844
	if_stat_level_more_than USER, SP_ATTACK, 8, BattleAIScript_1DB844
	if_stat_level_more_than USER, SP_DEFENSE, 8, BattleAIScript_1DB844
	if_stat_level_more_than USER, EVASION, 8, BattleAIScript_1DB844
	jump BattleAIScript_1DB86A

BattleAIScript_1DB844: @ 81DB844
	if_would_go_first USER, BattleAIScript_1DB856
	if_hp_more_than USER, 60, BattleAIScript_1DB8B2
	jump BattleAIScript_1DB85D

BattleAIScript_1DB856: @ 81DB856
	if_hp_more_than USER, 70, BattleAIScript_1DB8B2

BattleAIScript_1DB85D: @ 81DB85D
	if_random 80, BattleAIScript_1DB8B2
	score +2
	jump BattleAIScript_1DB8B2

BattleAIScript_1DB86A: @ 81DB86A
	if_stat_level_more_than USER, ATTACK, 7, BattleAIScript_1DB897
	if_stat_level_more_than USER, DEFENSE, 7, BattleAIScript_1DB897
	if_stat_level_more_than USER, SP_ATTACK, 7, BattleAIScript_1DB897
	if_stat_level_more_than USER, SP_DEFENSE, 7, BattleAIScript_1DB897
	if_stat_level_more_than USER, EVASION, 7, BattleAIScript_1DB897
	jump BattleAIScript_1DB8B0

BattleAIScript_1DB897: @ 81DB897
	if_would_go_first USER, BattleAIScript_1DB8A9
	if_hp_more_than USER, 60, BattleAIScript_1DB8B0
	jump BattleAIScript_1DB8B2

BattleAIScript_1DB8A9: @ 81DB8A9
	if_hp_less_than USER, 70, BattleAIScript_1DB8B2

BattleAIScript_1DB8B0: @ 81DB8B0
	score -2

BattleAIScript_1DB8B2: @ 81DB8B2
	end

BattleAIScript_1DB8B3: @ 81DB8B3
	is_first_turn USER
	if_not_equal 0, BattleAIScript_1DB8E8
	get_type 0
	if_equal TYPE_GHOST, BattleAIScript_1DB8E0
	get_type 0
	if_equal TYPE_PSYCHIC, BattleAIScript_1DB8E0
	get_type 2
	if_equal TYPE_GHOST, BattleAIScript_1DB8E0
	get_type 2
	if_equal TYPE_PSYCHIC, BattleAIScript_1DB8E0
	jump BattleAIScript_1DB8E8

BattleAIScript_1DB8E0: @ 81DB8E0
	if_random 128, BattleAIScript_1DB8E8
	score +1

BattleAIScript_1DB8E8: @ 81DB8E8
	end

BattleAIScript_1DB8E9: @ 81DB8E9
	if_would_go_first TARGET, BattleAIScript_1DB8F7
	get_ability USER
	if_equal ABILITY_SWIFT_SWIM, BattleAIScript_1DB91E

BattleAIScript_1DB8F7: @ 81DB8F7
	if_hp_less_than USER, 40, BattleAIScript_1DB925
	get_weather
	if_equal WEATHER_HAIL, BattleAIScript_1DB91E
	if_equal WEATHER_SUN, BattleAIScript_1DB91E
	if_equal WEATHER_SANDSTORM, BattleAIScript_1DB91E
	get_ability USER
	if_equal ABILITY_RAIN_DISH, BattleAIScript_1DB91E
	jump BattleAIScript_1DB927

BattleAIScript_1DB91E: @ 81DB91E
	score +1
	jump BattleAIScript_1DB927

BattleAIScript_1DB925: @ 81DB925
	score -1

BattleAIScript_1DB927: @ 81DB927
	end

BattleAIScript_1DB928: @ 81DB928
	if_hp_less_than USER, 40, BattleAIScript_1DB94E
	get_weather
	if_equal WEATHER_HAIL, BattleAIScript_1DB947
	if_equal WEATHER_RAIN, BattleAIScript_1DB947
	if_equal WEATHER_SANDSTORM, BattleAIScript_1DB947
	jump BattleAIScript_1DB950

BattleAIScript_1DB947: @ 81DB947
	score +1
	jump BattleAIScript_1DB950

BattleAIScript_1DB94E: @ 81DB94E
	score -1

BattleAIScript_1DB950: @ 81DB950
	end

BattleAIScript_1DB951: @ 81DB951
	if_hp_less_than USER, 90, BattleAIScript_1DB95D
	jump BattleAIScript_1DB95F

BattleAIScript_1DB95D: @ 81DB95D
	score -2

BattleAIScript_1DB95F: @ 81DB95F
	end

BattleAIScript_1DB960: @ 81DB960
	if_stat_level_more_than TARGET, ATTACK, 8, BattleAIScript_1DB98D
	if_stat_level_more_than TARGET, DEFENSE, 8, BattleAIScript_1DB98D
	if_stat_level_more_than TARGET, SP_ATTACK, 8, BattleAIScript_1DB98D
	if_stat_level_more_than TARGET, SP_DEFENSE, 8, BattleAIScript_1DB98D
	if_stat_level_more_than TARGET, EVASION, 8, BattleAIScript_1DB98D
	jump BattleAIScript_1DB9CA

BattleAIScript_1DB98D: @ 81DB98D
	if_stat_level_less_than USER, ATTACK, 7, BattleAIScript_1DB9C2
	if_stat_level_less_than USER, DEFENSE, 7, BattleAIScript_1DB9C2
	if_stat_level_less_than USER, SP_ATTACK, 7, BattleAIScript_1DB9C2
	if_stat_level_less_than USER, SP_DEFENSE, 7, BattleAIScript_1DB9C2
	if_stat_level_less_than USER, EVASION, 7, BattleAIScript_1DB9C0
	if_random 50, BattleAIScript_1DB9CC
	jump BattleAIScript_1DB9CA

BattleAIScript_1DB9C0: @ 81DB9C0
	score +1

BattleAIScript_1DB9C2: @ 81DB9C2
	if_random 128, BattleAIScript_1DB9CC
	score +1

BattleAIScript_1DB9CA: @ 81DB9CA
	score -2

BattleAIScript_1DB9CC: @ 81DB9CC
	end

BattleAIScript_1DB9CD: @ 81DB9CD
	if_status TARGET, SLP, BattleAIScript_1DBA61
	if_status2 TARGET, S_INFATUATED, BattleAIScript_1DBA61
	if_status2 TARGET, S_CONFUSED, BattleAIScript_1DBA61
	if_hp_more_than USER, 30, BattleAIScript_1DB9FA
	if_random 10, BattleAIScript_1DB9FA
	score -1

BattleAIScript_1DB9FA: @ 81DB9FA
	if_hp_more_than USER, 50, BattleAIScript_1DBA09
	if_random 100, BattleAIScript_1DBA09
	score -1

BattleAIScript_1DBA09: @ 81DBA09
	get_move TARGET
	get_move_power
	if_equal 0, BattleAIScript_1DBA38
	if_not_taunted BattleAIScript_1DBA1F
	if_random 100, BattleAIScript_1DBA1F
	score +1

BattleAIScript_1DBA1F: @ 81DBA1F
	get_move TARGET
	get_move_type
	if_not_in_bytes TypeList_1DBA64, BattleAIScript_1DBA61
	if_random 100, BattleAIScript_1DBA63
	score +1
	jump BattleAIScript_1DBA63

BattleAIScript_1DBA38: @ 81DBA38
	if_not_taunted BattleAIScript_1DBA45
	if_random 100, BattleAIScript_1DBA45
	score +1

BattleAIScript_1DBA45: @ 81DBA45
	get_type 0
	if_in_bytes TypeList_1DBA64, BattleAIScript_1DBA63
	get_type 2
	if_in_bytes TypeList_1DBA64, BattleAIScript_1DBA63
	if_random 50, BattleAIScript_1DBA63

BattleAIScript_1DBA61: @ 81DBA61
	score -1

BattleAIScript_1DBA63: @ 81DBA63
	end

TypeList_1DBA64: @ 81DBA64
	.byte TYPE_FIRE
	.byte TYPE_WATER
	.byte TYPE_GRASS
	.byte TYPE_ELECTRIC
	.byte TYPE_PSYCHIC
	.byte TYPE_ICE
	.byte TYPE_DRAGON
	.byte TYPE_DARK
	.byte -1

BattleAIScript_1DBA6D: @ 81DBA6D
	if_damage_bonus 10, BattleAIScript_1DBA8E
	if_damage_bonus 20, BattleAIScript_1DBA8E
	if_move_effect TARGET, EFFECT_PROTECT, BattleAIScript_1DBA8E
	if_hp_more_than USER, 38, BattleAIScript_1DBA90
	score -1
	jump BattleAIScript_1DBA90

BattleAIScript_1DBA8E: @ 81DBA8E
	score -2

BattleAIScript_1DBA90: @ 81DBA90
	end

BattleAIScript_1DBA91: @ 81DBA91
	if_not_move_effect TARGET, EFFECT_PROTECT, BattleAIScript_1DBA9F
	score -1
	jump BattleAIScript_1DBB16

BattleAIScript_1DBA9F: @ 81DBA9F
	if_status TARGET, TOX, BattleAIScript_1DBB0E
	if_status2 TARGET, S_CURSED, BattleAIScript_1DBB0E
	if_status3 TARGET, S_LEECH_SEED, BattleAIScript_1DBB0E
	get_weather
	if_equal WEATHER_HAIL, BattleAIScript_1DBACF
	if_equal WEATHER_SANDSTORM, BattleAIScript_1DBAEA
	jump BattleAIScript_1DBAFA

BattleAIScript_1DBACF: @ 81DBACF
	get_type 1
	if_in_bytes TypeList_1DBB17, BattleAIScript_1DBB0E
	get_type 3
	if_in_bytes TypeList_1DBB17, BattleAIScript_1DBB0E
	jump BattleAIScript_1DBAFA

BattleAIScript_1DBAEA: @ 81DBAEA
	get_type 1
	if_equal TYPE_ICE, BattleAIScript_1DBB0E
	get_type 3
	if_equal TYPE_ICE, BattleAIScript_1DBB0E

BattleAIScript_1DBAFA: @ 81DBAFA
	if_would_go_first USER, BattleAIScript_1DBB16
	get_move TARGET
	get_move_effect
	if_not_equal EFFECT_LOCK_ON, BattleAIScript_1DBB0E
	jump BattleAIScript_1DBB16

BattleAIScript_1DBB0E: @ 81DBB0E
	if_random 80, BattleAIScript_1DBB16
	score +1

BattleAIScript_1DBB16: @ 81DBB16
	end

TypeList_1DBB17: @ 81DBB17
	.byte TYPE_GROUND
	.byte TYPE_ROCK
	.byte TYPE_STEEL
	.byte -1

BattleAIScript_1DBB1B: @ 81DBB1B
	score +2
	end

BattleAIScript_1DBB1E: @ 81DBB1E
	get_stockpile_count USER
	if_less_than 2, BattleAIScript_1DBB2E
	if_random 80, BattleAIScript_1DBB2E
	score +2

BattleAIScript_1DBB2E: @ 81DBB2E
	end

BattleAIScript_1DBB2F: @ 81DBB2F
	if_hp_less_than USER, 40, BattleAIScript_1DBB55
	get_weather
	if_equal WEATHER_SUN, BattleAIScript_1DBB4E
	if_equal WEATHER_RAIN, BattleAIScript_1DBB4E
	if_equal WEATHER_SANDSTORM, BattleAIScript_1DBB4E
	jump BattleAIScript_1DBB57

BattleAIScript_1DBB4E: @ 81DBB4E
	score +1
	jump BattleAIScript_1DBB57

BattleAIScript_1DBB55: @ 81DBB55
	score -1

BattleAIScript_1DBB57: @ 81DBB57
	end

BattleAIScript_1DBB58: @ 81DBB58
	if_not_status TARGET, PSN | BRN | PAR | TOX, BattleAIScript_1DBB64
	score +1

BattleAIScript_1DBB64: @ 81DBB64
	end

BattleAIScript_1DBB65: @ 81DBB65
	if_damage_bonus 10, BattleAIScript_1DBBA4
	if_damage_bonus 20, BattleAIScript_1DBBA4
	if_status TARGET, SLP, BattleAIScript_1DBBB1
	if_status2 TARGET, S_INFATUATED, BattleAIScript_1DBBAB
	if_status2 TARGET, S_CONFUSED, BattleAIScript_1DBBAB
	is_first_turn USER
	if_not_equal 0, BattleAIScript_1DBBB3
	if_random 100, BattleAIScript_1DBBB3
	score +1
	jump BattleAIScript_1DBBB3

BattleAIScript_1DBBA4: @ 81DBBA4
	score -1
	jump BattleAIScript_1DBBB3

BattleAIScript_1DBBAB: @ 81DBBAB
	if_random 100, BattleAIScript_1DBBB3

BattleAIScript_1DBBB1: @ 81DBBB1
	score +1

BattleAIScript_1DBBB3: @ 81DBBB3
	end

BattleAIScript_1DBBB4: @ 81DBBB4
	if_status TARGET, PAR, BattleAIScript_1DBBC3
	jump BattleAIScript_1DBBC5

BattleAIScript_1DBBC3: @ 81DBBC3
	score +1

BattleAIScript_1DBBC5: @ 81DBBC5
	end

BattleAIScript_1DBBC6: @ 81DBBC6
	get_hold_effect USER
	if_in_bytes HoldEffectList_1DBC0F, BattleAIScript_1DBBE1
	if_in_bytes HoldEffectList_1DBC07, BattleAIScript_1DBBF3

BattleAIScript_1DBBDA: @ 81DBBDA
	score -3
	jump BattleAIScript_1DBC06

BattleAIScript_1DBBE1: @ 81DBBE1
	get_hold_effect TARGET
	if_in_bytes HoldEffectList_1DBC0F, BattleAIScript_1DBBDA
	score +5
	jump BattleAIScript_1DBC06

BattleAIScript_1DBBF3: @ 81DBBF3
	get_hold_effect TARGET
	if_in_bytes HoldEffectList_1DBC07, BattleAIScript_1DBBDA
	if_random 50, BattleAIScript_1DBC06
	score +2

BattleAIScript_1DBC06: @ 81DBC06
	end

HoldEffectList_1DBC07: @ 81DBC07
	.byte HOLD_EFFECT_CONFUSE_SPICY
	.byte HOLD_EFFECT_CONFUSE_DRY
	.byte HOLD_EFFECT_CONFUSE_SWEET
	.byte HOLD_EFFECT_CONFUSE_BITTER
	.byte HOLD_EFFECT_CONFUSE_SOUR
	.byte HOLD_EFFECT_MACHO_BRACE
	.byte HOLD_EFFECT_CHOICE_BAND
	.byte -1

HoldEffectList_1DBC0F: @ 81DBC0F
	.byte HOLD_EFFECT_CHOICE_BAND
	.byte -1

BattleAIScript_1DBC11: @ 81DBC11
	get_ability USER
	if_in_bytes AbilityList_1DBC37, BattleAIScript_1DBC27
	get_ability TARGET
	if_in_bytes AbilityList_1DBC37, BattleAIScript_1DBC2E

BattleAIScript_1DBC27: @ 81DBC27
	score -1
	jump BattleAIScript_1DBC36

BattleAIScript_1DBC2E: @ 81DBC2E
	if_random 50, BattleAIScript_1DBC36
	score +2

BattleAIScript_1DBC36: @ 81DBC36
	end

AbilityList_1DBC37: @ 81DBC37
	.byte ABILITY_SPEED_BOOST
	.byte ABILITY_BATTLE_ARMOR
	.byte ABILITY_SAND_VEIL
	.byte ABILITY_STATIC
	.byte ABILITY_FLASH_FIRE
	.byte ABILITY_WONDER_GUARD
	.byte ABILITY_EFFECT_SPORE
	.byte ABILITY_SWIFT_SWIM
	.byte ABILITY_HUGE_POWER
	.byte ABILITY_RAIN_DISH
	.byte ABILITY_CUTE_CHARM
	.byte ABILITY_SHED_SKIN
	.byte ABILITY_MARVEL_SCALE
	.byte ABILITY_PURE_POWER
	.byte ABILITY_CHLOROPHYLL
	.byte ABILITY_SHIELD_DUST
	.byte -1

BattleAIScript_1DBC48: @ 81DBC48
	if_damage_bonus 10, BattleAIScript_1DBC75
	if_damage_bonus 20, BattleAIScript_1DBC75
	if_stat_level_less_than USER, ATTACK, 6, BattleAIScript_1DBC75
	if_would_go_first USER, BattleAIScript_1DBC6E
	if_hp_more_than USER, 40, BattleAIScript_1DBC75
	jump BattleAIScript_1DBC77

BattleAIScript_1DBC6E: @ 81DBC6E
	if_hp_less_than USER, 60, BattleAIScript_1DBC77

BattleAIScript_1DBC75: @ 81DBC75
	score -1

BattleAIScript_1DBC77: @ 81DBC77
	end

BattleAIScript_1DBC78: @ 81DBC78
	if_hp_more_than TARGET, 30, BattleAIScript_1DBC87
	if_random 100, BattleAIScript_1DBC87
	score -1

BattleAIScript_1DBC87: @ 81DBC87
	is_first_turn USER
	if_equal 0, BattleAIScript_1DBCA2
	if_random 150, BattleAIScript_1DBCAA
	score +1
	jump BattleAIScript_1DBCAA

@ unreferenced
	if_random 50, BattleAIScript_1DBCAA

BattleAIScript_1DBCA2: @ 81DBCA2
	if_random 30, BattleAIScript_1DBCAA
	score -1

BattleAIScript_1DBCAA: @ 81DBCAA
	end

BattleAIScript_1DBCAB: @ 81DBCAB
	get_item USER
	if_not_in_bytes ItemList_1DBCC6, BattleAIScript_1DBCC3
	if_random 50, BattleAIScript_1DBCC5
	score +1
	jump BattleAIScript_1DBCC5

BattleAIScript_1DBCC3: @ 81DBCC3
	score -2

BattleAIScript_1DBCC5: @ 81DBCC5
	end

ItemList_1DBCC6: @ 81DBCC6
	.byte ITEM_CHESTO_BERRY
	.byte ITEM_LUM_BERRY
	.byte ITEM_STARF_BERRY
	.byte -1

BattleAIScript_1DBCCA: @ 81DBCCA
	if_status TARGET, SLP, BattleAIScript_1DBCF5
	if_status2 TARGET, S_INFATUATED, BattleAIScript_1DBCF5
	if_status2 TARGET, S_CONFUSED, BattleAIScript_1DBCF5
	if_random 180, BattleAIScript_1DBCF5
	score +2
	jump BattleAIScript_1DBCF7

BattleAIScript_1DBCF5: @ 81DBCF5
	score -2

BattleAIScript_1DBCF7: @ 81DBCF7
	end

BattleAIScript_1DBCF8: @ 81DBCF8
	if_status4 TARGET, S_REFLECT, BattleAIScript_1DBD07
	jump BattleAIScript_1DBD09

BattleAIScript_1DBD07: @ 81DBD07
	score +1

BattleAIScript_1DBD09: @ 81DBD09
	end

BattleAIScript_1DBD0A: @ 81DBD0A
	if_hp_less_than TARGET, 30, BattleAIScript_1DBD21
	is_first_turn USER
	if_more_than 0, BattleAIScript_1DBD21
	if_random 180, BattleAIScript_1DBD21
	score +1

BattleAIScript_1DBD21: @ 81DBD21
	end

BattleAIScript_1DBD22: @ 81DBD22
	if_hp_less_than TARGET, 70, BattleAIScript_1DBD4B
	if_would_go_first USER, BattleAIScript_1DBD3D
	if_hp_more_than USER, 40, BattleAIScript_1DBD4B
	score +1
	jump BattleAIScript_1DBD4D

BattleAIScript_1DBD3D: @ 81DBD3D
	if_hp_more_than USER, 50, BattleAIScript_1DBD4B
	score +1
	jump BattleAIScript_1DBD4D

BattleAIScript_1DBD4B: @ 81DBD4B
	score -1

BattleAIScript_1DBD4D: @ 81DBD4D
	end

BattleAIScript_1DBD4E: @ 81DBD4E
	if_damage_bonus 10, BattleAIScript_1DBD73
	if_damage_bonus 20, BattleAIScript_1DBD73
	if_would_go_first USER, BattleAIScript_1DBD6C
	if_hp_more_than TARGET, 50, BattleAIScript_1DBD75
	jump BattleAIScript_1DBD73

BattleAIScript_1DBD6C: @ 81DBD6C
	if_hp_more_than TARGET, 70, BattleAIScript_1DBD75

BattleAIScript_1DBD73: @ 81DBD73
	score -1

BattleAIScript_1DBD75: @ 81DBD75
	end

BattleAIScript_1DBD76: @ 81DBD76
	is_first_turn USER
	if_more_than 0, BattleAIScript_1DBD86
	if_random 100, BattleAIScript_1DBD86
	score +2

BattleAIScript_1DBD86: @ 81DBD86
	end

BattleAIScript_1DBD87: @ 81DBD87
	if_hp_less_than TARGET, 50, BattleAIScript_1DBD93
	jump BattleAIScript_1DBD95

BattleAIScript_1DBD93: @ 81DBD93
	score -1

BattleAIScript_1DBD95: @ 81DBD95
	end

BattleAIScript_1DBD96: @ 81DBD96
	is_first_turn USER
	if_equal 1, BattleAIScript_1DBDDD
	if_random 30, BattleAIScript_1DBDFF
	if_would_go_first USER, BattleAIScript_1DBDC3
	if_hp_not_equal USER, 100, BattleAIScript_1DBDF7
	if_hp_less_than TARGET, 70, BattleAIScript_1DBDF7
	if_random 60, BattleAIScript_1DBDFF
	jump BattleAIScript_1DBDF7

BattleAIScript_1DBDC3: @ 81DBDC3
	if_hp_more_than TARGET, 25, BattleAIScript_1DBDF7
	if_move_effect TARGET, EFFECT_RESTORE_HP, BattleAIScript_1DBDDD
	if_move_effect TARGET, EFFECT_DEFENSE_CURL, BattleAIScript_1DBDDD
	jump BattleAIScript_1DBDEA

BattleAIScript_1DBDDD: @ 81DBDDD
	if_random 150, BattleAIScript_1DBDFF
	score +2
	jump BattleAIScript_1DBDFF

BattleAIScript_1DBDEA: @ 81DBDEA
	if_random 230, BattleAIScript_1DBDF7
	score +1
	jump BattleAIScript_1DBDFF

BattleAIScript_1DBDF7: @ 81DBDF7
	if_random 30, BattleAIScript_1DBDFF
	score -2

BattleAIScript_1DBDFF: @ 81DBDFF
	end

BattleAIScript_1DBE00: @ 81DBE00
	if_hp_less_than USER, 50, BattleAIScript_1DBE23
	get_type 0
	if_equal TYPE_ELECTRIC, BattleAIScript_1DBE1C
	get_type 2
	if_equal TYPE_ELECTRIC, BattleAIScript_1DBE1C
	jump BattleAIScript_1DBE23

BattleAIScript_1DBE1C: @ 81DBE1C
	score +1
	jump BattleAIScript_1DBE25

BattleAIScript_1DBE23: @ 81DBE23
	score -1

BattleAIScript_1DBE25: @ 81DBE25
	end

BattleAIScript_1DBE26: @ 81DBE26
	if_damage_bonus 10, BattleAIScript_1DBE4B
	if_damage_bonus 20, BattleAIScript_1DBE4B
	if_would_go_first USER, BattleAIScript_1DBE44
	if_hp_more_than USER, 60, BattleAIScript_1DBE4D
	jump BattleAIScript_1DBE4B

BattleAIScript_1DBE44: @ 81DBE44
	if_hp_more_than USER, 80, BattleAIScript_1DBE4D

BattleAIScript_1DBE4B: @ 81DBE4B
	score -1

BattleAIScript_1DBE4D: @ 81DBE4D
	end

BattleAIScript_1DBE4E: @ 81DBE4E
	if_hp_less_than USER, 50, BattleAIScript_1DBE71
	get_type 0
	if_equal TYPE_FIRE, BattleAIScript_1DBE6A
	get_type 2
	if_equal TYPE_FIRE, BattleAIScript_1DBE6A
	jump BattleAIScript_1DBE71

BattleAIScript_1DBE6A: @ 81DBE6A
	score +1
	jump BattleAIScript_1DBE73

BattleAIScript_1DBE71: @ 81DBE71
	score -1

BattleAIScript_1DBE73: @ 81DBE73
	end

BattleAIScript_1DBE74: @ 81DBE74
	if_would_go_first USER, BattleAIScript_1DBE8E
	if_hp_more_than USER, 50, BattleAIScript_1DBE96
	if_random 70, BattleAIScript_1DBE96
	score -1
	jump BattleAIScript_1DBE96

BattleAIScript_1DBE8E: @ 81DBE8E
	if_random 128, BattleAIScript_1DBE96
	score +1

BattleAIScript_1DBE96: @ 81DBE96
	end

AI_TryToFaint: @ 81DBE97
	if_can_faint BattleAIScript_1DBEA4
	is_most_powerful_move
	if_equal 1, BattleAIScript_1DA84C
	end

BattleAIScript_1DBEA4: @ 81DBEA4
	if_effect EFFECT_EXPLOSION, BattleAIScript_1DBEB4
	if_not_effect EFFECT_QUICK_ATTACK, BattleAIScript_1DBEB2
	score +2

BattleAIScript_1DBEB2: @ 81DBEB2
	score +4

BattleAIScript_1DBEB4: @ 81DBEB4
	end

AI_SetupFirstTurn: @ 81DBEB5
	get_turn_count
	if_not_equal 0, BattleAIScript_1DBECE
	get_effect
	if_not_in_bytes MoveEffectList_1DBECF, BattleAIScript_1DBECE
	if_random 80, BattleAIScript_1DBECE
	score +2

BattleAIScript_1DBECE: @ 81DBECE
	end

MoveEffectList_1DBECF: @ 81DBECF
	.byte EFFECT_ATTACK_UP
	.byte EFFECT_DEFENSE_UP
	.byte EFFECT_SPEED_UP
	.byte EFFECT_SPECIAL_ATTACK_UP
	.byte EFFECT_SPECIAL_DEFENSE_UP
	.byte EFFECT_ACCURACY_UP
	.byte EFFECT_EVASION_UP
	.byte EFFECT_ATTACK_DOWN
	.byte EFFECT_DEFENSE_DOWN
	.byte EFFECT_SPEED_DOWN
	.byte EFFECT_SPECIAL_ATTACK_DOWN
	.byte EFFECT_SPECIAL_DEFENSE_DOWN
	.byte EFFECT_ACCURACY_DOWN
	.byte EFFECT_EVASION_DOWN
	.byte EFFECT_CONVERSION
	.byte EFFECT_LIGHT_SCREEN
	.byte EFFECT_SPECIAL_DEFENSE_UP_2
	.byte EFFECT_FOCUS_ENERGY
	.byte EFFECT_CONFUSE
	.byte EFFECT_ATTACK_UP_2
	.byte EFFECT_DEFENSE_UP_2
	.byte EFFECT_SPEED_UP_2
	.byte EFFECT_SPECIAL_ATTACK_UP_2
	.byte EFFECT_SPECIAL_DEFENSE_UP_2
	.byte EFFECT_ACCURACY_UP_2
	.byte EFFECT_EVASION_UP_2
	.byte EFFECT_ATTACK_DOWN_2
	.byte EFFECT_DEFENSE_DOWN_2
	.byte EFFECT_SPEED_DOWN_2
	.byte EFFECT_SPECIAL_ATTACK_DOWN_2
	.byte EFFECT_SPECIAL_DEFENSE_DOWN_2
	.byte EFFECT_ACCURACY_DOWN_2
	.byte EFFECT_EVASION_DOWN_2
	.byte EFFECT_REFLECT
	.byte EFFECT_POISON
	.byte EFFECT_PARALYZE
	.byte EFFECT_SUBSTITUTE
	.byte EFFECT_LEECH_SEED
	.byte EFFECT_MINIMIZE
	.byte EFFECT_CURSE
	.byte EFFECT_SWAGGER
	.byte EFFECT_CAMOUFLAGE
	.byte EFFECT_YAWN
	.byte EFFECT_DEFENSE_CURL
	.byte EFFECT_TORMENT
	.byte EFFECT_FLATTER
	.byte EFFECT_WILL_O_WISP
	.byte EFFECT_INGRAIN
	.byte EFFECT_IMPRISON
	.byte EFFECT_TEETER_DANCE
	.byte EFFECT_TICKLE
	.byte EFFECT_COSMIC_POWER
	.byte EFFECT_BULK_UP
	.byte EFFECT_CALM_MIND
	.byte EFFECT_CAMOUFLAGE
	.byte -1

AI_PreferStrongestMove: @ 81DBF07
	is_most_powerful_move
	if_not_equal 0, BattleAIScript_1DBF16
	if_random 100, BattleAIScript_1DBF16
	score +2

BattleAIScript_1DBF16: @ 81DBF16
	end

AI_Risky: @ 81DBF17
	get_effect
	if_not_in_bytes MoveEffectList_1DBF2A, BattleAIScript_1DBF29
	if_random 128, BattleAIScript_1DBF29
	score +2

BattleAIScript_1DBF29: @ 81DBF29
	end

MoveEffectList_1DBF2A: @ 81DBF2A
	.byte EFFECT_SLEEP
	.byte EFFECT_EXPLOSION
	.byte EFFECT_MIRROR_MOVE
	.byte EFFECT_OHKO
	.byte EFFECT_HIGH_CRITICAL
	.byte EFFECT_CONFUSE
	.byte EFFECT_METRONOME
	.byte EFFECT_PSYWAVE
	.byte EFFECT_COUNTER
	.byte EFFECT_DESTINY_BOND
	.byte EFFECT_SWAGGER
	.byte EFFECT_ATTRACT
	.byte EFFECT_PRESENT
	.byte EFFECT_ALL_STATS_UP_HIT
	.byte EFFECT_BELLY_DRUM
	.byte EFFECT_MIRROR_COAT
	.byte EFFECT_FOCUS_PUNCH
	.byte EFFECT_REVENGE
	.byte EFFECT_TEETER_DANCE
	.byte -1

AI_PreferBatonPass: @ 81DBF3E
	count_alive_pokemon USER
	if_equal 0, BattleAIScript_1DBF62
	is_most_powerful_move
	if_not_equal 0, BattleAIScript_1DBF62
	if_move_effect USER, EFFECT_BATON_PASS, BattleAIScript_1DBF5A
	if_random 80, BattleAIScript_1DBF29

BattleAIScript_1DBF5A: @ 81DBF5A
	if_random 20, BattleAIScript_1DBF29
	score +3

BattleAIScript_1DBF62: @ 81DBF62
	end

AI_Nothing: @ 81DBF63
	end

AI_HPAware: @ 81DBF64
	if_hp_more_than USER, 70, BattleAIScript_1DBF81
	if_hp_more_than USER, 30, BattleAIScript_1DBF90
	get_effect
	if_in_bytes MoveEffectList_1DC024, BattleAIScript_1DBF9F
	jump BattleAIScript_1DBFA7

BattleAIScript_1DBF81: @ 81DBF81
	get_effect
	if_in_bytes MoveEffectList_1DBFEB, BattleAIScript_1DBF9F
	jump BattleAIScript_1DBFA7

BattleAIScript_1DBF90: @ 81DBF90
	get_effect
	if_in_bytes MoveEffectList_1DBFF9, BattleAIScript_1DBF9F
	jump BattleAIScript_1DBFA7

BattleAIScript_1DBF9F: @ 81DBF9F
	if_random 50, BattleAIScript_1DBFA7
	score -2

BattleAIScript_1DBFA7: @ 81DBFA7
	if_hp_more_than TARGET, 70, BattleAIScript_1DBFC4
	if_hp_more_than TARGET, 30, BattleAIScript_1DBFD3
	get_effect
	if_in_bytes MoveEffectList_1DC07D, BattleAIScript_1DBFE2
	jump BattleAIScript_1DBFEA

BattleAIScript_1DBFC4: @ 81DBFC4
	get_effect
	if_in_bytes MoveEffectList_1DC054, BattleAIScript_1DBFE2
	jump BattleAIScript_1DBFEA

BattleAIScript_1DBFD3: @ 81DBFD3
	get_effect
	if_in_bytes MoveEffectList_1DC055, BattleAIScript_1DBFE2
	jump BattleAIScript_1DBFEA

BattleAIScript_1DBFE2: @ 81DBFE2
	if_random 50, BattleAIScript_1DBFEA
	score -2

BattleAIScript_1DBFEA: @ 81DBFEA
	end

MoveEffectList_1DBFEB: @ 81DBFEB
	.byte EFFECT_EXPLOSION
	.byte EFFECT_RESTORE_HP
	.byte EFFECT_REST
	.byte EFFECT_DESTINY_BOND
	.byte EFFECT_FLAIL
	.byte EFFECT_ENDURE
	.byte EFFECT_MORNING_SUN
	.byte EFFECT_SYNTHESIS
	.byte EFFECT_MOONLIGHT
	.byte EFFECT_SOFTBOILED
	.byte EFFECT_MEMENTO
	.byte EFFECT_GRUDGE
	.byte EFFECT_OVERHEAT
	.byte -1

MoveEffectList_1DBFF9: @ 81DBFF9
	.byte EFFECT_EXPLOSION
	.byte EFFECT_ATTACK_UP
	.byte EFFECT_DEFENSE_UP
	.byte EFFECT_SPEED_UP
	.byte EFFECT_SPECIAL_ATTACK_UP
	.byte EFFECT_SPECIAL_DEFENSE_UP
	.byte EFFECT_ACCURACY_UP
	.byte EFFECT_EVASION_UP
	.byte EFFECT_ATTACK_DOWN
	.byte EFFECT_DEFENSE_DOWN
	.byte EFFECT_SPEED_DOWN
	.byte EFFECT_SPECIAL_ATTACK_DOWN
	.byte EFFECT_SPECIAL_DEFENSE_DOWN
	.byte EFFECT_ACCURACY_DOWN
	.byte EFFECT_EVASION_DOWN
	.byte EFFECT_BIDE
	.byte EFFECT_CONVERSION
	.byte EFFECT_LIGHT_SCREEN
	.byte EFFECT_MIST
	.byte EFFECT_FOCUS_ENERGY
	.byte EFFECT_ATTACK_UP_2
	.byte EFFECT_DEFENSE_UP_2
	.byte EFFECT_SPEED_UP_2
	.byte EFFECT_SPECIAL_ATTACK_UP_2
	.byte EFFECT_SPECIAL_DEFENSE_UP_2
	.byte EFFECT_ACCURACY_UP_2
	.byte EFFECT_EVASION_UP_2
	.byte EFFECT_ATTACK_DOWN_2
	.byte EFFECT_DEFENSE_DOWN_2
	.byte EFFECT_SPEED_DOWN_2
	.byte EFFECT_SPECIAL_ATTACK_DOWN_2
	.byte EFFECT_SPECIAL_DEFENSE_DOWN_2
	.byte EFFECT_ACCURACY_DOWN_2
	.byte EFFECT_EVASION_DOWN_2
	.byte EFFECT_CONVERSION_2
	.byte EFFECT_SAFEGUARD
	.byte EFFECT_BELLY_DRUM
	.byte EFFECT_TICKLE
	.byte EFFECT_COSMIC_POWER
	.byte EFFECT_BULK_UP
	.byte EFFECT_CALM_MIND
	.byte EFFECT_DRAGON_DANCE
	.byte -1

MoveEffectList_1DC024: @ 81DC024
	.byte EFFECT_ATTACK_UP
	.byte EFFECT_DEFENSE_UP
	.byte EFFECT_SPEED_UP
	.byte EFFECT_SPECIAL_ATTACK_UP
	.byte EFFECT_SPECIAL_DEFENSE_UP
	.byte EFFECT_ACCURACY_UP
	.byte EFFECT_EVASION_UP
	.byte EFFECT_ATTACK_DOWN
	.byte EFFECT_DEFENSE_DOWN
	.byte EFFECT_SPEED_DOWN
	.byte EFFECT_SPECIAL_ATTACK_DOWN
	.byte EFFECT_SPECIAL_DEFENSE_DOWN
	.byte EFFECT_ACCURACY_DOWN
	.byte EFFECT_EVASION_DOWN
	.byte EFFECT_BIDE
	.byte EFFECT_CONVERSION
	.byte EFFECT_LIGHT_SCREEN
	.byte EFFECT_MIST
	.byte EFFECT_FOCUS_ENERGY
	.byte EFFECT_ATTACK_UP_2
	.byte EFFECT_DEFENSE_UP_2
	.byte EFFECT_SPEED_UP_2
	.byte EFFECT_SPECIAL_ATTACK_UP_2
	.byte EFFECT_SPECIAL_DEFENSE_UP_2
	.byte EFFECT_ACCURACY_UP_2
	.byte EFFECT_EVASION_UP_2
	.byte EFFECT_ATTACK_DOWN_2
	.byte EFFECT_DEFENSE_DOWN_2
	.byte EFFECT_SPEED_DOWN_2
	.byte EFFECT_SPECIAL_ATTACK_DOWN_2
	.byte EFFECT_SPECIAL_DEFENSE_DOWN_2
	.byte EFFECT_ACCURACY_DOWN_2
	.byte EFFECT_EVASION_DOWN_2
	.byte EFFECT_RAGE
	.byte EFFECT_CONVERSION_2
	.byte EFFECT_LOCK_ON
	.byte EFFECT_SAFEGUARD
	.byte EFFECT_BELLY_DRUM
	.byte EFFECT_PSYCH_UP
	.byte EFFECT_MIRROR_COAT
	.byte EFFECT_SOLARBEAM
	.byte EFFECT_ERUPTION
	.byte EFFECT_TICKLE
	.byte EFFECT_COSMIC_POWER
	.byte EFFECT_BULK_UP
	.byte EFFECT_CALM_MIND
	.byte EFFECT_DRAGON_DANCE
	.byte -1

MoveEffectList_1DC054: @ 81DC054
	.byte -1

MoveEffectList_1DC055: @ 81DC055
	.byte EFFECT_ATTACK_UP
	.byte EFFECT_DEFENSE_UP
	.byte EFFECT_SPEED_UP
	.byte EFFECT_SPECIAL_ATTACK_UP
	.byte EFFECT_SPECIAL_DEFENSE_UP
	.byte EFFECT_ACCURACY_UP
	.byte EFFECT_EVASION_UP
	.byte EFFECT_ATTACK_DOWN
	.byte EFFECT_DEFENSE_DOWN
	.byte EFFECT_SPEED_DOWN
	.byte EFFECT_SPECIAL_ATTACK_DOWN
	.byte EFFECT_SPECIAL_DEFENSE_DOWN
	.byte EFFECT_ACCURACY_DOWN
	.byte EFFECT_EVASION_DOWN
	.byte EFFECT_MIST
	.byte EFFECT_FOCUS_ENERGY
	.byte EFFECT_ATTACK_UP_2
	.byte EFFECT_DEFENSE_UP_2
	.byte EFFECT_SPEED_UP_2
	.byte EFFECT_SPECIAL_ATTACK_UP_2
	.byte EFFECT_SPECIAL_DEFENSE_UP_2
	.byte EFFECT_ACCURACY_UP_2
	.byte EFFECT_EVASION_UP_2
	.byte EFFECT_ATTACK_DOWN_2
	.byte EFFECT_DEFENSE_DOWN_2
	.byte EFFECT_SPEED_DOWN_2
	.byte EFFECT_SPECIAL_ATTACK_DOWN_2
	.byte EFFECT_SPECIAL_DEFENSE_DOWN_2
	.byte EFFECT_ACCURACY_DOWN_2
	.byte EFFECT_EVASION_DOWN_2
	.byte EFFECT_POISON
	.byte EFFECT_PAIN_SPLIT
	.byte EFFECT_PERISH_SONG
	.byte EFFECT_SAFEGUARD
	.byte EFFECT_TICKLE
	.byte EFFECT_COSMIC_POWER
	.byte EFFECT_BULK_UP
	.byte EFFECT_CALM_MIND
	.byte EFFECT_DRAGON_DANCE
	.byte -1

MoveEffectList_1DC07D: @ 81DC07D
	.byte EFFECT_SLEEP
	.byte EFFECT_EXPLOSION
	.byte EFFECT_ATTACK_UP
	.byte EFFECT_DEFENSE_UP
	.byte EFFECT_SPEED_UP
	.byte EFFECT_SPECIAL_ATTACK_UP
	.byte EFFECT_SPECIAL_DEFENSE_UP
	.byte EFFECT_ACCURACY_UP
	.byte EFFECT_EVASION_UP
	.byte EFFECT_ATTACK_DOWN
	.byte EFFECT_DEFENSE_DOWN
	.byte EFFECT_SPEED_DOWN
	.byte EFFECT_SPECIAL_ATTACK_DOWN
	.byte EFFECT_SPECIAL_DEFENSE_DOWN
	.byte EFFECT_ACCURACY_DOWN
	.byte EFFECT_EVASION_DOWN
	.byte EFFECT_BIDE
	.byte EFFECT_CONVERSION
	.byte EFFECT_TOXIC
	.byte EFFECT_LIGHT_SCREEN
	.byte EFFECT_OHKO
	.byte EFFECT_SUPER_FANG
	.byte EFFECT_SUPER_FANG
	.byte EFFECT_MIST
	.byte EFFECT_FOCUS_ENERGY
	.byte EFFECT_CONFUSE
	.byte EFFECT_ATTACK_UP_2
	.byte EFFECT_DEFENSE_UP_2
	.byte EFFECT_SPEED_UP_2
	.byte EFFECT_SPECIAL_ATTACK_UP_2
	.byte EFFECT_SPECIAL_DEFENSE_UP_2
	.byte EFFECT_ACCURACY_UP_2
	.byte EFFECT_EVASION_UP_2
	.byte EFFECT_ATTACK_DOWN_2
	.byte EFFECT_DEFENSE_DOWN_2
	.byte EFFECT_SPEED_DOWN_2
	.byte EFFECT_SPECIAL_ATTACK_DOWN_2
	.byte EFFECT_SPECIAL_DEFENSE_DOWN_2
	.byte EFFECT_ACCURACY_DOWN_2
	.byte EFFECT_EVASION_DOWN_2
	.byte EFFECT_POISON
	.byte EFFECT_PARALYZE
	.byte EFFECT_PAIN_SPLIT
	.byte EFFECT_CONVERSION_2
	.byte EFFECT_LOCK_ON
	.byte EFFECT_SPITE
	.byte EFFECT_PERISH_SONG
	.byte EFFECT_SWAGGER
	.byte EFFECT_FURY_CUTTER
	.byte EFFECT_ATTRACT
	.byte EFFECT_SAFEGUARD
	.byte EFFECT_PSYCH_UP
	.byte EFFECT_MIRROR_COAT
	.byte EFFECT_WILL_O_WISP
	.byte EFFECT_TICKLE
	.byte EFFECT_COSMIC_POWER
	.byte EFFECT_BULK_UP
	.byte EFFECT_CALM_MIND
	.byte EFFECT_DRAGON_DANCE
	.byte -1

AI_Unknown: @ 81DC0B9
	if_not_effect EFFECT_SUNNY_DAY, BattleAIScript_1DC0CF
	if_equal 0, BattleAIScript_1DC0CF
	is_first_turn USER
	if_equal 0, BattleAIScript_1DC0CF
	score +5

BattleAIScript_1DC0CF: @ 81DC0CF
	end

AI_Roaming: @ 81DC0D0
	if_status2 USER, S_TEMP_TRAP, BattleAIScript_1DC0FD
	if_status2 USER, S_MEAN_LOOK, BattleAIScript_1DC0FD
	get_ability TARGET
	if_equal ABILITY_SHADOW_TAG, BattleAIScript_1DC0FD
	get_ability USER
	if_equal ABILITY_LEVITATE, BattleAIScript_1DC0FC
	get_ability TARGET
	if_equal ABILITY_ARENA_TRAP, BattleAIScript_1DC0FD

BattleAIScript_1DC0FC: @ 81DC0FC
	flee

BattleAIScript_1DC0FD: @ 81DC0FD
	end

AI_Safari: @ 81DC0FE
	if_random_2 BattleAIScript_1DC104
	flee2

BattleAIScript_1DC104: @ 81DC104
	flee

AI_FleeInDanger: @ 81DC105
	if_hp_equal TARGET, 20, BattleAIScript_1DC114
	if_hp_less_than TARGET, 20, BattleAIScript_1DC114
	end

BattleAIScript_1DC114: @ 81DC114
	flee

AI_Unused: @ 81DC115
	end
