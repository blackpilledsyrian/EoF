NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 36
NDefines.NGame.GAME_SPEED_SECONDS = { 0.5, 0.3, 0.2, 0.1, 0.0 }	-- game speeds for each level. Must be 5 entries with last one 0 for unbound

NDefines.NMilitary.UNIT_LEADER_USE_NONLINEAR_XP_GAIN = false	-- Whether unit leader XP gain is scaled by 1/<nr_of_traits>
NDefines.NMilitary.MAX_NUM_TRAITS = 8				-- cant have more, -1 to disable

NDefines.NMilitary.MAX_DIVISION_BRIGADE_WIDTH = 6		-- Max width of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_BRIGADE_HEIGHT = 5		-- Max height of regiments in division designer.
NDefines.NMilitary.MIN_DIVISION_BRIGADE_HEIGHT = 4		-- Min height of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_WIDTH = 1		-- Max width of support in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_HEIGHT = 7		-- Max height of support in division designer.

NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 0 	--Base cost to unlock a regiment slot,
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 0	--Base cost to change a regiment column.
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 0 		--Base cost to unlock a support slot

NDefines.NMilitary.LAND_COMBAT_STR_DAMAGE_MODIFIER = 0.060	-- global damage modifier... but some equipment is returned at end of battles see : EQUIPMENT_COMBAT_LOSS_FACTOR
NDefines.NMilitary.LAND_COMBAT_ORG_DAMAGE_MODIFIER = 0.045	-- global damage modifier

NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY = -1		-- over combat width penalty per %.
NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY_MAX = -0.15	-- over combat width max (when you cant join no more).
NDefines.NMilitary.COMBAT_STACKING_START = 5			-- at what nr of divisions stacking penalty starts
NDefines.NMilitary.COMBAT_STACKING_EXTRA = 2                    -- extra stacking from directions
NDefines.NMilitary.COMBAT_STACKING_PENALTY = -0.1		-- how much stacking penalty per division

NDefines.NMilitary.TRAINING_ATTRITION = 0		  	-- amount of extra attrition from being in training
NDefines.NMilitary.TRAINING_EXPERIENCE_SCALE = 6.0

NDefines.NMilitary.SLOWEST_SPEED = 1

NDefines.NMilitary.ANTI_AIR_TARGETTING_TO_CHANCE = 0.01		-- Balancing value to determine the chance of ground AA hitting an attacking airplane, affecting both the effective average damage done by AA to airplanes, and the reduction of damage done by airplanes due to AA support
NDefines.NMilitary.ANTI_AIR_ATTACK_TO_AMOUNT = 0.005		-- Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit.
NDefines.NAir.ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR = 1.8	-- Balancing value to convert equipment stat anti_air_attack to the damage reduction modifier apply to incoming air attacks against units with AA.
NDefines.NAir.ANTI_AIR_MAXIMUM_DAMAGE_REDUCTION_FACTOR = 0.90	-- Maximum damage reduction factor applied to incoming air attacks against units with AA.

NDefines.NAir.COMBAT_DAMAGE_SCALE = 0.3				-- Higher value = more shot down planes
NDefines.NAir.COMBAT_DAMAGE_SCALE_CARRIER = 5			-- same as above but used inside naval combat for carrier battles

NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 2	-- extra damage dice if our armor outclasses enemy
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 6	-- extra damage dice if our armor outclasses enemy

NDefines.NMilitary.PIERCING_THRESHOLDS = {			-- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
		1.00,
		0.90,
		0.80,
		0.70,
		0.60,
		0.50,
		0.40,
		0.30,
		0.20,
		0.00, 						--there isn't much point setting this higher than 0
	}
NDefines.NMilitary.PIERCING_THRESHOLD_DAMAGE_VALUES = {		-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		1.00,
		0.90,
		0.80,
		0.70,
		0.60,
		0.50,
		0.40,
		0.30,
		0.20,
		0.10,
	}

NDefines.NMilitary.ARMOR_VS_AVERAGE = 0.2			-- how to weight in highest armor & pen vs the division average
NDefines.NMilitary.PEN_VS_AVERAGE = 0.2

NDefines.NMilitary.DAMAGE_SPLIT_ON_FIRST_TARGET = 0.35		--% of damage dealt to the first target in a combat. The rest will be split amongst subsequent targets. Modifiers can affect this up to a maximum of 0.9. That value must not be exposed as a define.

NDefines.NProduction.BASE_FACTORY_SPEED_MIL = 4.5		-- Base factory speed multiplier (how much hoi3 style IC each factory gives).

NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 0		-- XP cost for adding a new equipment module in an empty slot when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 0	-- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 0	-- XP cost for converting one equipment module to a related module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 0	-- XP cost for removing an equipment module and leaving the slot empty when creating an equipment variant.

NDefines.NProduction.MINIMUM_NUMBER_OF_FACTORIES_TAKEN_BY_CONSUMER_GOODS_VALUE = 0		-- The minimum number of factories we have to put on consumer goods, by value.
NDefines.NProduction.BASE_LICENSE_IC_COST = 0			-- Base IC cost for lended license
NDefines.NProduction.LICENSE_IC_COST_YEAR_INCREASE = 0		-- IC cost equipment for every year of equipment after 1936

NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 1000000	-- How many deployment lines minimum can be training

NDefines.NCountry.AIR_SUPPLY_CONVERSION_SCALE = 0.1		-- Conversion scale for planes to air supply

NDefines.NCountry.AIR_VOLUNTEER_PLANES_RATIO = 0		-- Ratio for volunteer planes available for sending in relation to sender air force
NDefines.NCountry.AIR_VOLUNTEER_BASES_CAPACITY_LIMIT = 1	-- Ratio for volunteer planes available for sending in relation to receiver air base capacity

NDefines.NCountry.REINFORCEMENT_MANPOWER_DELIVERY_SPEED = 50.0	-- Modifier for army manpower reinforcement delivery speed (travel time)

NDefines.NDiplomacy.VOLUNTEERS_PER_TARGET_PROVINCE = 1		-- Each province owned by the target country contributes this amount of volunteers to the limit.
NDefines.NDiplomacy.VOLUNTEERS_PER_COUNTRY_ARMY = 0		-- Each army unit owned by the source country contributes this amount of volunteers to the limit.

NDefines.NBuildings.MAX_SHARED_SLOTS = 50			-- Max slots shared by factories
NDefines.NBuildings.AIRBASE_CAPACITY_MULT = 100			-- Each level of airbase building multiplied by this, gives capacity (max operational value). Value is int. 1 for each airplane.

NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_STR = 2.0			-- Balancing value to convert damage ( naval_strike_attack * hits ) to Strength reduction.
NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_ORG = 3.0			-- Balancing value to convert damage ( naval_strike_attack * hits ) to Organisation reduction.
NDefines.NAir.NAVAL_STRIKE_CARRIER_MULTIPLIER = 4.0		-- damage bonus when planes are in naval combat where their carrier is present (and can thus sortie faster and more effectively)
NDefines.NNavy.CARRIER_STACK_PENALTY = 0			-- The most efficient is 4 carriers in combat. 5+ brings the penalty to the amount of wings in battle.
NDefines.NNavy.CARRIER_STACK_PENALTY_EFFECT = 0.02		-- Each carrier above the optimal amount decreases the amount of airplanes being able to takeoff by such %.

NDefines.NNavy.MISSION_SUPREMACY_RATIOS = {
		0.0, -- HOLD
		1.0, -- PATROL
		0.1, -- STRIKE FORCE
		0.3, -- CONVOY RAIDING
		0.3, -- CONVOY ESCORT
		0.0, -- MINES PLANTING
		0.0, -- MINES SWEEPING
		0.0, -- TRAIN
		0.0, -- RESERVE_FLEET
		0.1, -- NAVAL_INVASION_SUPPORT
	}
NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.1 				-- this screen ratio to num convoys is needed for full screening beyond screen line
NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.05 				-- this capital ratio to num convoys is needed for full screening beyond screen line
NDefines.NNavy.TRAINING_ACCIDENT_CHANCES = 0			-- Chances one ship get damage each hour while on training

NDefines.NNavy.HIT_PROFILE_MULT = 50.0				-- multiplies hit profile of every ship

-- defines that are used for supply reach for built nodes
NDefines.NSupply.NODE_INITIAL_SUPPLY_FLOW = 3.0
NDefines.NSupply.NODE_STARTING_PENALTY_PER_PROVINCE = 0.30
NDefines.NSupply.NODE_ADDED_PENALTY_PER_PROVINCE = 0.50

-- defines that are used for supply reach for dockyards
NDefines.NSupply.NAVAL_BASE_INITIAL_SUPPLY_FLOW = 3.0
NDefines.NSupply.NAVAL_BASE_STARTING_PENALTY_PER_PROVINCE = 1.1
NDefines.NSupply.NAVAL_BASE_ADDED_PENALTY_PER_PROVINCE = 0.50

-- Node Flow (i.e. province caps) increase by this amount per railway level of the node's bottleneck
NDefines.NSupply.NODE_FLOW_BONUS_PER_RAIL_LEVEL = 0.6

-- defines that are used for supply reach for floating harbors
NDefines.NSupply.FLOATING_HARBOR_INITIAL_SUPPLY_FLOW = 3.0
NDefines.NSupply.FLOATING_HARBOR_STARTING_PENALTY_PER_PROVINCE = 0.8
NDefines.NSupply.FLOATING_HARBOR_ADDED_PENALTY_PER_PROVINCE = 0.5

NDefines.NSupply.FLOATING_HARBOR_BASE_SUPPLY = 15.0		-- supply given by a floating harbor
NDefines.NSupply.FLOATING_HARBOR_BASE_DURATION = 21		-- duration of a full hp floating harbor
NDefines.NSupply.FLOATING_HARBOR_DURATION_RATIO_AT_MIN_HP = 0.0					-- duration mult for a harbor that was reduced to 0 hp

-- The range bonus added to a fully motorized hub. This supply is added on top of the XXX_INITIAL_SUPPLY_FLOW defined above.
NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_BONUS = 3.0
-- How many trucks does it cost to fully motorize a hub
NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_TRUCK_COST = 120.0
-- For each additional level of motorization on a hub (i.e. contry with set motoriazation) reduce max bonus for next level by this amount
NDefines.NSupply.SUPPLY_HUB_MOTORIZATION_MARGINAL_EFFECT_DECAY = 1.0


-- used for calculating "flow" for railways.
NDefines.NSupply.RAILWAY_BASE_FLOW = 15.0			-- how much base flow railway gives when a node connected to its capital/a naval node by a railway
NDefines.NSupply.RAILWAY_FLOW_PER_LEVEL = 5.0			-- how much additional flow a railway level gives
NDefines.NSupply.RAILWAY_FLOW_PENALTY_PER_DAMAGED = 3.0		-- penalty to flow per damaged railway
NDefines.NSupply.RAILWAY_MIN_FLOW = 15.0			-- minimum railway flow can be reduced to

-- used for calculating "flow" from a naval node to another naval node when it is connected via a convoy route
NDefines.NSupply.NAVAL_BASE_FLOW = 10.0				-- max output/input of a naval node is limited by this base value + additional ratio for each level
NDefines.NSupply.NAVAL_FLOW_PER_LEVEL = 3.0			-- max output/input of a naval node is limited by previous base value + this define per its level
