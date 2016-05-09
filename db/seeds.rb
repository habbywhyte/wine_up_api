# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


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
	


