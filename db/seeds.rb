# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all
Passage.destroy_all

hp_text = %q{Mr. and Mrs. Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much. They were the last people you'd expect to be involved in anything strange or mysterious, because they just didn't hold with such nonsense.  Mr. Dursley was the director of a firm called Grunnings, which made drills. He was a big, beefy man with hardly any neck, although he did have a very large mustache. Mrs. Dursley was thin and blonde and had nearly twice the usual amount of neck, which came in very useful as she spent so much of her time craning over garden fences, spying on the neighbors. The Dursleys had a small son called Dudley and in their opinion there was no finer boy anywhere.

The Dursleys had everything they wanted, but they also had a secret, and their greatest fear was that somebody would discover it. They didn't think they could bear it if anyone found out about the Potters. Mrs. Potter was Mrs. Dursley's sister, but they hadn't met for several years; in fact, Mrs. Dursley pretended she didn't have a sister, because her sister and her good-for-nothing husband were as unDursleyish as it was possible to be. The Dursleys shuddered to think what the neighbors would say if the Potters arrived in the street. The Dursleys knew that the Potters had a small son, too, but they had never even seen him. This boy was another good reason for keeping the Potters away; they didn't want Dudley mixing with a child like that.

When Mr. and Mrs. Dursley woke up on the dull, gray Tuesday our story starts, there was nothing about the cloudy sky outside to suggest that strange and mysterious things would soon be happening all over the country. Mr. Dursley hummed as he picked out his most boring tie for work, and Mrs. Dursley gossiped away happily as she wrestled a screaming Dudley into his high chair.

None of them noticed a large, tawny owl flutter past the window.

At half past eight, Mr. Dursley picked up his briefcase, pecked Mrs. Dursley on the cheek, and tried to kiss Dudley good-bye but missed, because Dudley was now having a tantrum and throwing his cereal at the walls. \"Little tyke,\" chortled Mr. Dursley as he left the house. He got into his car and backed out of number four's drive.

It was on the corner of the street that he noticed the first sign of something peculiar -- a cat reading a map. For a second, Mr. Dursley didn't realize what he had seen -- then he jerked his head around to look again. There was a tabby cat standing on the corner of Privet Drive, but there wasn't a map in sight. What could he have been thinking of? It must have been a trick of the light. Mr. Dursley blinked and stared at the cat. It stared back. As Mr. Dursley drove around the corner and up the road, he watched the cat in his mirror. It was now reading the sign that said Privet Drive -- no, looking at the sign; cats couldn't read maps or signs. Mr. Dursley gave himself a little shake and put the cat out of his mind. As he drove toward town he thought of nothing except a large order of drills he was hoping to get that day.}

macbeth_solil = %q{Is this a dagger which I see before me,
The handle toward my hand? Come, let me clutch thee.
I have thee not, and yet I see thee still.
Art thou not, fatal vision, sensible
To feeling as to sight? or art thou but
A dagger of the mind, a false creation,
Proceeding from the heat-oppressed brain?
I see thee yet, in form as palpable
As this which now I draw.
Thou marshall’st me the way that I was going;
And such an instrument I was to use.
Mine eyes are made the fools o’ the other senses,
Or else worth all the rest; I see thee still,
And on thy blade and dudgeon gouts of blood,
Which was not so before. There’s no such thing:
It is the bloody business which informs
Thus to mine eyes. Now o’er the one halfworld
Nature seems dead, and wicked dreams abuse
The curtain’d sleep; witchcraft celebrates
Pale Hecate’s offerings, and wither’d murder,
Alarum’d by his sentinel, the wolf,
Whose howl’s his watch, thus with his stealthy pace.
With Tarquin’s ravishing strides, towards his design
Moves like a ghost. Thou sure and firm-set earth,
Hear not my steps, which way they walk, for fear
Thy very stones prate of my whereabout,
And take the present horror from the time,
Which now suits with it. Whiles I threat, he lives:
Words to the heat of deeds too cold breath gives.}

metamorphosis = %q{One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked.

"What's happened to me?" he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer.

Gregor then turned to look out the window at the dull weather. Drops of rain could be heard hitting the pane, which made him feel quite sad. "How about if I sleep a little bit longer and forget all this nonsense", he thought, but that was something he was unable to do because he was used to sleeping on his right, and in his present state couldn't get into that position. However hard he threw himself onto his right, he always rolled back to where he was. He must have tried it a hundred times, shut his eyes so that he wouldn't have to look at the floundering legs, and only stopped when he began to feel a mild, dull pain there that he had never felt before.

"Oh, God", he thought, "what a strenuous career it is that I've chosen! Travelling day in and day out. Doing business like this takes much more effort than doing your own business at home, and on top of that there's the curse of travelling, worries about making train connections, bad and irregular food, contact with different people all the time so that you can never get to know anyone or become friendly with them. It can all go to Hell!" He felt a slight itch up on his belly; pushed himself slowly up on his back towards the headboard so that he could lift his head better; found where the itch was, and saw that it was covered with lots of little white spots which he didn't know what to make of; and when he tried to feel the place with one of his legs he drew it quickly back because as soon as he touched it he was overcome by a cold shudder.}

p1 = Passage.create(text: metamorphosis, name: "The Metamorphosis", language: "English", skill_level: 2, time_allotted: 60)
p2 = Passage.create(text: hp_text, name: "Harry Potter", language: "English", skill_level: 2, time_allotted: 60)
p3 = Passage.create(text: macbeth_solil, name: "Macbeth Soliloquy", language: "English", skill_level: 3, time_allotted: 60)
# p4 = Passage.create(text: declaration_text, name: "Declaration of Independence", language: "English", skill_level: 2, time_allotted: 60)


50.times do
  # joining aray of strings
  text = Faker::Lorem.paragraphs(number: 30).join()
  Passage.create(text: text, language: "English", skill_level: 1, time_allotted: 60)
end



u1 = User.create(username: "Elisheva", password: "1234")
u2 = User.create(username: "Dina", password: "1234")

# seeding some games for the leadeboard
# p2 = Passage.first
g1 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 35, accuracy: 93)
g2 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 40, accuracy: 81)
g3 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 26, accuracy: 67.42)
g4 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 30, accuracy: 86.45)
g5 = Game.create(user_id: u2.id, passage_id: p2.id, speed: 30, accuracy: 82.3)
