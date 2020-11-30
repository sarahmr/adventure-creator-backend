# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([
  {
    name: "Paul",
    email: "paul@gmail.com",
    username: "mysterpaul",
    password: "ladybug",
    bio: "I like to code, write cool stories, and hang out with my cat."
  },
  {
    name: "Sarah",
    email: "sarah@gmail.com",
    username: "sarahrocks",
    password: "ladybug",
    bio: 'I like to write horror and ghost stories.'
  },
  {
    name: "Teresa",
    email: "teresa@gmail.com",
    username: "saintteresa",
    password: "bellatrix",
    bio: "I write stories for a living and for fun. Am open to story suggestions!"
  },
  {
    name: "Jessica",
    email: "jessica@gmail.com",
    username: "jesszur",
    password: "phoebe",
    bio: "What is in a bio? What can I tell you that you need to know?"
  }
])

Story.create([
  {
    title: "A Story about a House",
    user_id: 1,
    published: true,
    brief_description: "This is a house you don't want to call home."
  },
  {
    title: "A Castle",
    user_id: 2,
    published: true,
    brief_description: "It seems like paradise...but is it?"
  }
])

Scene.create([
  {
    title: "Beginning",
    story_id: 1,
    text: "You are standing in the street looking up at a house. Where should you start exploring?",
    paths: [
      {
        "scene_id": 2,
        "choice_text": "Explore the Yard"
      },
      {
        "scene_id": 3,
        "choice_text": "Walk through the Front Door"
      }
    ],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Yard",
    story_id: 1,
    text: "Walking through the yard you find doors leading down to a cellar. They are unlocked. What would you like to do next?",
    paths: [
      {
        "scene_id": 4,
        "choice_text": "Explore the cellar"
      },
      {
        "scene_id": 3,
        "choice_text": "Explore the House"
      }
    ],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Inside the House",
    story_id: 1,
    text: "You decide to see if the front door is unlocked. It is and you enter the house. Standing in the foyer, you can go left or right into the living room or the kitchen. What's your decision?",
    paths: [
      {
        "scene_id": 5,
        "choice_text": "Enter the kitchen"
      },
      {
        "scene_id": 6,
        "choice_text": "Go into the Living Room"
      }
    ],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Cellar",
    story_id: 1,
    text: "You open the doors and walk down into the cellar. It's dark and you can't see where you're going. You know that this type of cellar often has a lightbulb with a string in the middle of the room, so you walk forward with your arms outstretched. You encounter something sticky and find yourself trapped. The light turns on and you see that you're stuck in some kind of giant spider web. Looking around you see several long logs of web and you know your fate.",
    paths: [],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Kitchen",
    story_id: 1,
    text: "It's always a good idea to start in the kitchen, right? Feeling a bit hungry you decide to see what's in the fridge. You reach in and feel a tug that starts in the bottom of your stomach. You're pulled through the open door and find yourself floating in space. Looking around you see a few others playing rock, paper, scissors. They wave you over saying 'Welcome to your new life.'",
    paths: [],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Living Room",
    story_id: 1,
    text: "Turning left, you enter the living room. In the middle of the room, with couches in a semi-circle in front, there is a fireplace. You walk closer and look inside. You find yourself on a street looking at a house. Even though you feel pulled toward it, your stomach growls and you keep walking, headed towards your home and dinner.",
    paths: [],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Morning", 
    story_id: 2,
    text: "You wake up in a four-poster bed. You get up and stretch, looking around to examine your surroundings. There's a window with a view of a lake and two doors. Would you like the one on the left or the right?",
    paths: [
      {
        "scene_id": 8,
        "choice_text": "Take the Door on the Left"
      },
      {
        "scene_id": 9,
        "choice_text": "Take the Door on the Right"
      }
    ],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Stairs Down the Tower", 
    story_id: 2,
    text: "You open the door on the left and it reveals circular stairs leading down the tower. You follow them down and enter a large hall. In front of you a doorway leads into a dining room where someone is waving to you to join them. In the other direction are large doors thar presumably lead outside. Do you leave the castle or join the others in the dining room?",
    paths: [
      {
        "scene_id": 11,
        "choice_text": "Join the Others"
      },
      {
        "scene_id": 10,
        "choice_text": "Leave the Castle"
      }
    ],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Hallway to the Library", 
    story_id: 2,
    text: "You open the door revealing a short hallway between this room and what looks like a library. You look around and see a desk with papers strewn across it. Looking through them you notice that one describes your kidnap and sedation for the past month. With rising panic, you frantically look around and see an open window. There doesn't seem to be another option.",
    paths: [
      {
        "scene_id": 12,
        "choice_text": "Jump"
      }
    ],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Leave the Castle", 
    story_id: 2,
    text: "Quickly you walk to the doors and struggle to pull one open. You run outside and sprint across the drawbridge. You hear someone running behind you, getting closer. You push yourself, trying to run faster, but you have nothing left to give. Someone grabs you and covers your nose and mouth with cloth. The next thing you see is a four-poster bed in a tower. This time there's one door and it's locked.",
    paths: [],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Dining Room", 
    story_id: 2, 
    text: "The smell of bacon draws you into the dining room. You sit down in the chair that someone is holding out for you. 'Coffee, lady?' 'Yes, please.' As coffee and a warm plate are set down before you, you decide to stay. You may not remember who you are or why you're there, but it seems like a nice place to be.",
    paths: [],
    position: {
      left: 0,
      top: 0
    }
  },
  {
    title: "Take the Window", 
    story_id: 2,
    text: "Panicking, you run to the window and leap. For three long seconds you fall, arms outstretched, looking out over the lake. Desperately, you flap your arms and you stop falling. You flap again and move forward towards the lake. Looking left and right, you stop flapping and take in your new wings. As you start to fall, you get over your shock and fly away, free.",
    paths: [],
    position: {
      left: 0,
      top: 0
    }
  }
])