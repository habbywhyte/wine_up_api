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
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/veggies.jpg",
	})
	Food.create({
        name: "roastedvegetables",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/roastedveggies.jpg",
	})
	Food.create({
        name: "soft cheese",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/softcheese.jpg",
	})
	Food.create({
        name: "hard cheese",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/hardcheese.jpg",
	})
	Food.create({
        name: "starches",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/starches.jpg",
	})
	Food.create({
        name: "fish",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/fish.jpg",
	})
	Food.create({
        name: "rich fish",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/richfish.jpg",
	})
	Food.create({
        name: "red meat",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/porterhouse.jpg",
	})
	Food.create({
        name: "white meat",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/whitemeat.jpg",
	})
	Food.create({
        name: "cured meat",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/curedmeat.jpg",
	})
	Food.create({
        name: "sweets",
        photo_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/dessert.jpg",
	})

foods = Food.all

foods.each do |food|
	case food.name
	when "vegetables"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/drywhite.png",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sparkling.jpg",
			food_id: food.id
			})
	when "roastedvegetables"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/drywhite.png",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/mediumred.jpg",
			food_id: food.id
			})
	when "soft cheese"
		Winetype.create({
			typeofwine: "Sweet White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sweetwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sparkling.jpg",			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/dessert.jpg",
			food_id: food.id
			})
	when "hard cheese"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/drywhite.png",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sparkling.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/boldred.jpg",
			food_id: food.id
			})
	when "starches"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/drywhite.png",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sparkling.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/boldred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/dessert.jpg",
			food_id: food.id
			})
	when "fish"
		Winetype.create({
			typeofwine: "Dry White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/drywhite.png",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Sparkling",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sparkling.jpg",
			food_id: food.id
			})
	when "rich fish"
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/richwhite.jpg",
			food_id: food.id
			})
	when "white meat"
		Winetype.create({
			typeofwine: "Rich White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/richwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/lightred.jpg",
			food_id: food.id
			})
	when "red meat"
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/boldred.jpg",
			food_id: food.id
			})
	when "cured meat"
		Winetype.create({
			typeofwine: "Sweet White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sweetwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Light Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/lightred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Medium Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/mediumred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Bold Red",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/boldred.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/dessert.jpg",
			food_id: food.id
			})
	when "sweets"
		Winetype.create({
			typeofwine: "Sweet White",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/sweetwhite.jpg",
			food_id: food.id
			})
		Winetype.create({
			typeofwine: "Dessert",
			graphic_url: "http://img.photobucket.com/albums/v201/BarracksSi/wine_up/dessert.jpg",
			food_id: food.id
			})
	else

	end
end
