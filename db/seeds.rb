# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Winetype.destroy_all
Food.destroy_all
	Food.create({
        name: "vegetables",
        photo_url: "",
	})
	Food.create({
        name: "roastedvegetables",
        photo_url: "",
	})
	Food.create({
        name: "soft cheese",
        photo_url: "",
	})
	Food.create({
        name: "hard cheese",
        photo_url: "",
	})
	Food.create({
        name: "starches",
        photo_url: "",
	})
	Food.create({
        name: "fish",
        photo_url: "",
	})
	Food.create({
        name: "rich fish",
        photo_url: "",
	})
	Food.create({
        name: "red meat",
        photo_url: "",
	})
	Food.create({
        name: "white meat",
        photo_url: "",
	})
	Food.create({
        name: "cured meat",
        photo_url: "",
	})
	Food.create({
        name: "sweets",
        photo_url: "",
	})

foods = Food.all
	
foods.each do |food|
	case food.name
	when "vegetables"
		Winetype.create({
			typeofwine: "Dry White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			food_id: food.id
			})
	when "roastedvegetables"
		Winetype.create({
			typeofwine: "Dry White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			food_id: food.id
			})
	when "soft cheese"
		Winetype.create({
			typeofwine: "Sweet White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			food_id: food.id
			})
	when "hard cheese"
		Winetype.create({
			typeofwine: "Dry White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			food_id: food.id
			})
	when "starches"
		Winetype.create({
			typeofwine: "Dry White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			food_id: food.id
			})
	when "fish"
		Winetype.create({
			typeofwine: "Dry White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			food_id: food.id
			})
	when "rich fish"
		Winetype.create({
			typeofwine: "Light Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			food_id: food.id
			})
	when "white meat"
		Winetype.create({
			typeofwine: "Rich White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			food_id: food.id
			})
	when "red meat"
		Winetype.create({
			typeofwine: "Medium Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			food_id: food.id
			})
	when "cured meat"
		Winetype.create({
			typeofwine: "Sweet White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			food_id: food.id
			})
	when "sweets"
		Winetype.create({
			typeofwine: "Sweet White",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			food_id: food.id
			})
	else

	end
end
