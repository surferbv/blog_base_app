# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = {
    "UAC REPORT FILE H8UM66S" => "In the first age, in the first battle, when the shadows first lengthened, one stood. Burned by the embers of Armageddon, his soul blistered by the fires of Hell and tainted beyond ascension, he chose the path of perpetual torment. In his ravenous hatred he found no peace; and with boiling blood he scoured the Umbral Plains seeking vengeance against the dark lords who had wronged him. He wore the crown of the Night Sentinels, and those that tasted the bite of his sword named him... the Doom Slayer.",
    "UAC REPORT FILE 9REIZDUR" => "Tempered by the fires of Hell, his iron will remained steadfast through the passage that preys upon the weak. For he alone was the Hell Walker, the Unchained Predator, who sought retribution in all quarters, dark and light, fire and ice, in the beginning and the end, and he hunted the slaves of Doom with barbarous cruelty; for he passed through the divide as none but demon had before.",
    "UAC REPORT FILE HR93TE1F" => "And in his conquest against the blackened souls of the doomed, his prowess was shown. In his crusade, the seraphim bestowed upon him terrible power and speed, and with his might he crushed the obsidian pillars of the Blood Temples. He set forth without pity upon the beasts of the nine circles. Unbreakable, incorruptible, unyielding, the Doom Slayer sought to end the dominion of the dark realm."
}

posts.each do |key, value|
    Post.create!(title: key, text: value)
end

