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
		_id: 1001
	},
	{
		name: "Asia",
		_id: 1002 
	},
	{
		name: "Africa",
		_id: 1003 
	},
	{
		name: "Oceania",
		_id: 1004
	},
	{
		name: "North America",
		_id: 1005
	},
	{
		name: "South America",
		_id: 1006
	},
	{
		name: "Central America",
		_id: 1007
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
		name: "Austria",
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
		name: "Bosnia",
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
		name: "Estonia",
		region_id: 1001
	},
	{
		name: "Faroe Islands",
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
		name: "Germany",
		region_id: 1001
	},
	{
		name: "Gibraltar",
		region_id: 1001
	},
	{
		name: "Greece",
		region_id: 1001
	},
	{
		name: "Guernay and Aldernay",
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
		name: "Island of Man",
		region_id: 1001
	},
	{
		name: "Italy",
		region_id: 1001
	},
	{
		name: "Jersey",
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
		name: "Svalbard and Jan Mayen Islands",
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
		name: "Vatican City (Holy Sea)",
		region_id: 1001
	},
	{
		name: "Afghanistan",
		region_id: 1002
	},
	{
		name: "Armenia",
		region_id: 1002
	},
	{
		name: "Azerbaijan",
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
		name: "Brunei Darussalam",
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
		name: "Georgia",
		region_id: 1002
	},
	{
		name: "Hong Kong",
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
		name: "Korea, North",
		region_id: 1002
	},
	{
		name: "Korea, South",
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
		name: "Macao",
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
		name: "Oman",
		region_id: 1002
	},
	{
		name: "Palestine",
		region_id: 1002
	},
	{
		name: "Pakistan",
		region_id: 1002
	},
	{
		name: "Phillipines",
		region_id: 1002
	},
	{
		name: "Qatar",
		region_id: 1002
	},
	{
		name: "Saudi Arabia",
		region_id: 1002
	},
	{
		name: "Singapore",
		region_id: 1002
	},
	{
		name: "Sri Lanka",
		region_id: 1002
	},
	{
		name: "Syria",
		region_id: 1002
	},
	{
		name: "Taiwan",
		region_id: 1002
	},
	{
		name: "Tajikistan",
		region_id: 1002
	},
	{
		name: "Thailand",
		region_id: 1002
	},
	{
		name: "Timor Leste (West)",
		region_id: 1002
	},
	{
		name: "Turkmenistan",
		region_id: 1002
	},
	{
		name: "United Arab Emirates",
		region_id: 1002
	},
	{
		name: "Uzbekistan",
		region_id: 1002
	},
	{
		name: "Vietnam",
		region_id: 1002
	},
	{
		name: "Yemen",
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
		name: "Kenya",
		region_id: 1003
	},
	{
		name: "Lesotho",
		region_id: 1003
	},
	{
		name: "Liberia",
		region_id: 1003
	},
	{
		name: "Libya",
		region_id: 1003
	},
	{
		name: "Madagascar",
		region_id: 1003
	},
	{
		name: "Malawi",
		region_id: 1003
	},
	{
		name: "Mali",
		region_id: 1003
	},
	{
		name: "Mauritania",
		region_id: 1003
	},
	{
		name: "Mauritius",
		region_id: 1003
	},
	{
		name: "Morocco",
		region_id: 1003
	},
	{
		name: "Mozambique",
		region_id: 1003
	},
	{
		name: "Namibia",
		region_id: 1003
	},
	{
		name: "Niger",
		region_id: 1003
	},
	{
		name: "Nigeria",
		region_id: 1003
	},
	{
		name: "Rwanda",
		region_id: 1003
	},
	{
		name: "Sao Tome and Principe",
		region_id: 1003
	},
	{
		name: "Senegal",
		region_id: 1003
	},
	{
		name: "Seychelles",
		region_id: 1003
	},
	{
		name: "Sierra Leone",
		region_id: 1003
	},
	{
		name: "Somalia",
		region_id: 1003
	},
	{
		name: "South Africa",
		region_id: 1003
	},
	{
		name: "South Sudan",
		region_id: 1003
	},
	{
		name: "Sudan",
		region_id: 1003
	},
	{
		name: "Swaziland",
		region_id: 1003
	},
	{
		name: "Tanzania",
		region_id: 1003
	},
	{
		name: "Togo",
		region_id: 1003
	},
	{
		name: "Tunisia",
		region_id: 1003
	},
	{
		name: "Uganda",
		region_id: 1003
	},
	{
		name: "Zambia",
		region_id: 1003
	},
	{
		name: "Zimbabwe",
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
		name: "Vanuatu",
		region_id: 1004
	},
	{
		name: "Anguilla",
		region_id: 1005
	},
	{
		name: "Antigua and Barbuda",
		region_id: 1005
	},
	{
		name: "Aruba",
		region_id: 1005
	},
	{
		name: "Bahamas",
		region_id: 1005
	},
	{
		name: "Barbados",
		region_id: 1005
	},
	{
		name: "Bermuda",
		region_id: 1005
	},
	{
		name: "Bonaire, Saint Eustatius and Saba",
		region_id: 1005
	},
	{
		name: "British Virgin Islands",
		region_id: 1005
	},
	{
		name: "Canada",
		region_id: 1005
	},
	{
		name: "Cayman Islands",
		region_id: 1005
	},
	{
		name: "Cuba",
		region_id: 1005
	},
	{
		name: "Curacao",
		region_id: 1005
	},
	{
		name: "Dominica",
		region_id: 1005
	},
	{
		name: "Dominican Republic",
		region_id: 1005
	},
	{
		name: "Grenada",
		region_id: 1005
	},
	{
		name: "Greenland",
		region_id: 1005
	},
	{
		name: "Guadeloupe",
		region_id: 1005
	},
	{
		name: "Haiti",
		region_id: 1005
	},
	{
		name: "Jamaica",
		region_id: 1005
	},
	{
		name: "Martinique",
		region_id: 1005
	},
	{
		name: "Monserrat",
		region_id: 1005
	},
	{
		name: "Puerto Rico",
		region_id: 1005
	},
	{
		name: "Saint-Barthelemy",
		region_id: 1005
	},
	{
		name: "St. Kitts and Nevis",
		region_id: 1005
	},
	{
		name: "Saint Lucia",
		region_id: 1005
	},
	{
		name: "Saint Martin",
		region_id: 1005
	},
	{
		name: "Saint Pierre and Miquelon",
		region_id: 1005
	},
	{
		name: "Saint Vincent and the Grenadines",
		region_id: 1005
	},
	{
		name: "Sint Maarten",
		region_id: 1005
	},
	{
		name: "Trinidad and Tobago",
		region_id: 1005
	},
	{
		name: "Turks and Caicos Islands",
		region_id: 1005
	},
	{
		name: "United States",
		region_id: 1005
	},
	{
		name: "Virgin Islands (US)",
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
		name: "Venezuela",
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