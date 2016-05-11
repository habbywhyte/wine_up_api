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
        photo_url: "/assets/images/veggies.jpg",
	})
	Food.create({
        name: "roastedvegetables",
        photo_url: "/assets/images/roastedveggies.jpg",
	})
	Food.create({
        name: "soft cheese",
        photo_url: "/assets/images/softcheese.jpg",
	})
	Food.create({
        name: "hard cheese",
        photo_url: "/assets/images/hardcheese.jpg",
	})
	Food.create({
        name: "starches",
        photo_url: "/assets/images/starches.jpg",
	})
	Food.create({
        name: "fish",
        photo_url: "/assets/images/fish.jpg",
	})
	Food.create({
        name: "rich fish",
        photo_url: "/assets/images/richfish.jpg",
	})
	Food.create({
        name: "red meat",
        photo_url: "/assets/images/porterhouse.jpg",
	})
	Food.create({
        name: "white meat",
        photo_url: "/assets/images/whitemeat.jpg",
	})
	Food.create({
        name: "cured meat",
        photo_url: "/assets/images/curedmeat.jpg",
	})
	Food.create({
        name: "sweets",
        photo_url: "/assets/images/dessert.jpg",
	})

foods = Food.all
	
foods.each do |food|
	case food.name
	when "vegetables"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "/assets/images/drywhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "/assets/images/sparkling.jpg",
			food_id: food.id
			})
	when "roastedvegetables"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "/assets/images/drywhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "/assets/images/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "/assets/images/mediumred.jpg",
			food_id: food.id
			})
	when "soft cheese"
		Winetype.create({
			typeofwine: "Sweet White",
			graphic_url: "/assets/images/sweetwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "/assets/images/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "/assets/images/sparkling.jpg",			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "/assets/images/dessert.jpg",
			food_id: food.id
			})
	when "hard cheese"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "/assets/images/drywhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "/assets/images/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "/assets/images/sparkling.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "/assets/images/boldred.jpg",
			food_id: food.id
			})
	when "starches"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "/assets/images/drywhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "/assets/images/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "/assets/images/sparkling.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "/assets/images/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "/assets/images/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "/assets/images/boldred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "/assets/images/dessert.jpg",
			food_id: food.id
			})
	when "fish"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "/assets/images/drywhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "/assets/images/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "/assets/images/sparkling.jpg",
			food_id: food.id
			})
	when "rich fish"
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "/assets/images/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "/assets/images/richwhite.jpg",
			food_id: food.id
			})
	when "white meat"
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "/assets/images/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "/assets/images/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "/assets/images/lightred.jpg",
			food_id: food.id
			})
	when "red meat"
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "/assets/images/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "/assets/images/boldred.jpg",
			food_id: food.id
			})
	when "cured meat"
		Winetype.create({
			typeofwine: "Sweet White",
			graphic_url: "/assets/images/sweetwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "/assets/images/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "/assets/images/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "/assets/images/boldred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "/assets/images/dessert.jpg",
			food_id: food.id
			})
	when "sweets"
		Winetype.create({
			typeofwine: "Sweet White",
			graphic_url: "/assets/images/sweetwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "/assets/images/dessert.jpg",
			food_id: food.id
			})
	else

	end
end
