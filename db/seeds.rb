# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Region.destroy_all
Country.destroy_all

Region.create([
	{
		name: "Europe",
		region_id: 1001
	},
	{
		name: "Asia",
		region_id: 1002 
	},
	{
		name: "Africa",
		region_id: 1003 
	},
	{
		name: "Oceania",
		region_id: 1004
	},
	{
		name: "North America",
		region_id: 1005
	},
	{
		name: "South America",
		region_id: 1006
	},
	{
		name: "Central America",
		region_id: 1007
	}
])

Country.create([
	{
		name: "Albania",
		region_id: 1001
	},
	{
		name: "Andorraa",
		region_id: 1001
	},
	{
		name: "Armenia",
		region_id: 1001
	},
	{
		name: "Austria",
		region_id: 1001
	},
	{
		name: "Azerbaijan",
		region_id: 1001
	},
	{
		name: "Belarus",
		region_id: 1001
	},
	{
		name: "Belgium",
		region_id: 1001
	},
	{
		name: "Bosnia and Herzegovina",
		region_id: 1001
	},
	{
		name: "Bulgaria",
		region_id: 1001
	},
	{
		name: "Croatia",
		region_id: 1001
	},
	{
		name: "Cyprus",
		region_id: 1001
	},
	{
		name: "Czech Republic",
		region_id: 1001
	},
	{
		name: "Denmark",
		region_id: 1001
	},
	{
		name: "Estoria",
		region_id: 1001
	},
	{
		name: "Finland",
		region_id: 1001
	},
	{
		name: "France",
		region_id: 1001
	},
	{
		name: "Georgia",
		region_id: 1001
	},
	{
		name: "Germany",
		region_id: 1001
	},
	{
		name: "Greece",
		region_id: 1001
	},
	{
		name: "Hungary",
		region_id: 1001
	},
	{
		name: "Iceland",
		region_id: 1001
	},
	{
		name: "Ireland",
		region_id: 1001
	},
	{
		name: "Italy",
		region_id: 1001
	},
	{
		name: "Kazakhstan",
		region_id: 1001
	},
	{
		name: "Kosovo",
		region_id: 1001
	},
	{
		name: "Latvia",
		region_id: 1001
	},
	{
		name: "Liechtenstein",
		region_id: 1001
	},
	{
		name: "Lithuania",
		region_id: 1001
	},
	{
		name: "Luxembourg",
		region_id: 1001
	},
	{
		name: "Macedonia",
		region_id: 1001
	},
	{
		name: "Malta",
		region_id: 1001
	},
	{
		name: "Moldova",
		region_id: 1001
	},
	{
		name: "Monaco",
		region_id: 1001
	},
	{
		name: "Montenegro",
		region_id: 1001
	},
	{
		name: "Netherlands",
		region_id: 1001
	},
	{
		name: "Norway",
		region_id: 1001
	},
	{
		name: "Poland",
		region_id: 1001
	},
	{
		name: "Portugal",
		region_id: 1001
	},
	{
		name: "Romania",
		region_id: 1001
	},
	{
		name: "Russia",
		region_id: 1001
	},
	{
		name: "San Marino",
		region_id: 1001
	},
	{
		name: "Serbia",
		region_id: 1001
	},
	{
		name: "Slovakia",
		region_id: 1001
	},
	{
		name: "Slovenia",
		region_id: 1001
	},
	{
		name: "Spain",
		region_id: 1001
	},
	{
		name: "Sweden",
		region_id: 1001
	},
	{
		name: "Switzerland",
		region_id: 1001
	},
	{
		name: "Turkey",
		region_id: 1001
	},
	{
		name: "Ukraine",
		region_id: 1001
	},
	{
		name: "United Kingdom",
		region_id: 1001
	},
	{
		name: "Vatican City (Holy Sea)*********",
		region_id: 1001
	},
	{
		name: "Afghanistan",
		region_id: 1002
	},
	{
		name: "Bahrain",
		region_id: 1002
	},
	{
		name: "Bangladesh",
		region_id: 1002
	},
	{
		name: "Bhutan",
		region_id: 1002
	},
	{
		name: "Brunei",
		region_id: 1002
	},
	{
		name: "Cambodia",
		region_id: 1002
	},
	{
		name: "China",
		region_id: 1002
	},
	{
		name: "India",
		region_id: 1002
	},
	{
		name: "Indonesia",
		region_id: 1002
	},
	{
		name: "Iran",
		region_id: 1002
	},
	{
		name: "Iraq",
		region_id: 1002
	},
	{
		name: "Israel",
		region_id: 1002
	},
	{
		name: "Japan",
		region_id: 1002
	},
	{
		name: "Jordan",
		region_id: 1002
	},
	{
		name: "Kuwait",
		region_id: 1002
	},
	{
		name: "Kyrgyzstan",
		region_id: 1002
	},
	{
		name: "Laos",
		region_id: 1002
	},
	{
		name: "Lebanon",
		region_id: 1002
	},
	{
		name: "Malaysia",
		region_id: 1002
	},
	{
		name: "Maldives",
		region_id: 1002
	},
	{
		name: "Mongolia",
		region_id: 1002
	},
	{
		name: "Myanmar (Burma)",
		region_id: 1002
	},
	{
		name: "Nepal",
		region_id: 1002
	},
	{
		name: "North Korea********",
		region_id: 1002
	},
	{
		name: "Algeria",
		region_id: 1003
	},
	{
		name: "Angola",
		region_id: 1003
	},
	{
		name: "Benin",
		region_id: 1003
	},
	{
		name: "Botswana",
		region_id: 1003
	},
	{
		name: "Burkina Faso",
		region_id: 1003
	},
	{
		name: "Burundi",
		region_id: 1003
	},
	{
		name: "Cabo Verde",
		region_id: 1003
	},
	{
		name: "Cameroon",
		region_id: 1003
	},
	{
		name: "Central African Republic",
		region_id: 1003
	},
	{
		name: "Chad",
		region_id: 1003
	},
	{
		name: "Comoros",
		region_id: 1003
	},
	{
		name: "Congo, Republic of the",
		region_id: 1003
	},
	{
		name: "Congo, Democratic Republic of the",
		region_id: 1003
	},
	{
		name: "Cote d'Ivore",
		region_id: 1003
	},
	{
		name: "Djibouti",
		region_id: 1003
	},
	{
		name: "Egypt",
		region_id: 1003
	},
	{
		name: "Equatorial Guinea",
		region_id: 1003
	},
	{
		name: "Eritrea",
		region_id: 1003
	},
	{
		name: "Ethiopia",
		region_id: 1003
	},
	{
		name: "Gabon",
		region_id: 1003
	},
	{
		name: "Gambia",
		region_id: 1003
	},
	{
		name: "Ghana",
		region_id: 1003
	},
	{
		name: "Gambia",
		region_id: 1003
	},
	{
		name: "Ghana",
		region_id: 1003
	},
	{
		name: "Guinea",
		region_id: 1003
	},
	{
		name: "Guinea-Bissau",
		region_id: 1003
	},
	{
		name: "Kenya**********",
		region_id: 1003
	},
	{
		name: "Australia",
		region_id: 1004
	},
	{
		name: "Fiji",
		region_id: 1004
	},
	{
		name: "French Polynesia",
		region_id: 1004
	},
	{
		name: "Guam",
		region_id: 1004
	},
	{
		name: "Kiribati",
		region_id: 1004
	},
	{
		name: "Marshall Islands",
		region_id: 1004
	},
	{
		name: "Micronesia",
		region_id: 1004
	},
	{
		name: "New Caledonia",
		region_id: 1004
	},
	{
		name: "New Zealand",
		region_id: 1004
	},
	{
		name: "Papua New Guinea",
		region_id: 1004
	},
	{
		name: "Samoa",
		region_id: 1004
	},
	{
		name: "Samoa, American",
		region_id: 1004
	},
	{
		name: "Solomon, Islands",
		region_id: 1004
	},
	{
		name: "Tonga",
		region_id: 1004
	},
	{
		name: "Vanuatu**********",
		region_id: 1004
	},
	{
		name: "Bermuda",
		region_id: 1005
	},
	{
		name: "Canada",
		region_id: 1005
	},
	{
		name: "Greenland",
		region_id: 1005
	},
	{
		name: "Saint Pierre and Miquelon",
		region_id: 1005
	},
	{
		name: "United States********",
		region_id: 1005
	},
	{
		name: "Argentina",
		region_id: 1006
	},
	{
		name: "Bolivia",
		region_id: 1006
	},
	{
		name: "Brazil",
		region_id: 1006
	},
	{
		name: "Chile",
		region_id: 1006
	},
	{
		name: "Colombia",
		region_id: 1006
	},
	{
		name: "Ecuador",
		region_id: 1006
	},
	{
		name: "Falkland Islands (Malvinas)",
		region_id: 1006
	},
	{
		name: "French Guiana",
		region_id: 1006
	},
	{
		name: "Guyana",
		region_id: 1006
	},
	{
		name: "Paraguay",
		region_id: 1006
	},
	{
		name: "Peru",
		region_id: 1006
	},
	{
		name: "Suriname",
		region_id: 1006
	},
	{
		name: "Uruguay",
		region_id: 1006
	},
	{
		name: "Venezuela**********",
		region_id: 1006
	},
	{
		name: "Belize",
		region_id: 1007
	},
	{
		name: "Costa Rica",
		region_id: 1007
	},
	{
		name: "El Salvador",
		region_id: 1007
	},
	{
		name: "Guatemala",
		region_id: 1007
	},
	{
		name: "Honduras",
		region_id: 1007
	},
	{
		name: "Mexico",
		region_id: 1007
	},
	{
		name: "Nicaragua",
		region_id: 1007
	},
	{
		name: "Panama",
		region_id: 1007
	}
])