require 'rest-client'
require 'byebug'
Question.destroy_all
User.destroy_all

film_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=11'
film_array = JSON.parse(film_rq)["results"]

film_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}

geo_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=22'
geo_array = JSON.parse(geo_rq)["results"]

geo_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}

music_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=12'
music_array = JSON.parse(music_rq)["results"]

music_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}

comp_sci_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=18'
comp_sci_array = JSON.parse(comp_sci_rq)["results"]


comp_sci_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}

sports_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=21'
sports_array = JSON.parse(sports_rq)["results"]

sports_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}

history_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=23'
history_array = JSON.parse(history_rq)["results"]

history_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}

mythology_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=20'
mythology_array = JSON.parse(mythology_rq)["results"]

mythology_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}



science_nature_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=17'
science_nature_array = JSON.parse(science_nature_rq)["results"]

science_nature_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}

politics_rq = RestClient.get "https://opentdb.com/api.php?amount=50&category=24"
politics_array = JSON.parse(politics_rq)["results"]

politics_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}


video_games_rq = RestClient.get 'https://opentdb.com/api.php?amount=50&category=15'
video_games_array = JSON.parse(video_games_rq)["results"]

video_games_array.each { |question|
    Question.create!(
    question: question["question"], 
    difficulty: question["difficulty"], 
    category: question["category"],
    q_type: question["type"],
    correct_answer: question["correct_answer"],
    incorrect_answers: question["incorrect_answers"]
    )
}


User.create!(name: "tim", password: "1234")
User.create!(name: "russ", password: "1234")