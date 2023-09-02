class DummyData {
  const DummyData(this.institute, this.subjects,this.location,this.rating, this.distance);

  final String institute;
  final String location;
  final double rating;
  final double distance;
  final List<String> subjects;

}


const data = [
  DummyData("Metro Coaching Center", ['Physics', 'Maths', 'Chemistry', 'JEE'],'Kalka Ji',4.3,5),
  DummyData("New Coaching Center", ['Hindi', 'English', 'Maths', 'SST'],'Delhi Cantt',3.3,6),
  DummyData("Study Point of Success", ['IT', 'Science', 'Biology', 'Maths'],'Karol Bagh',2.5,2),
  DummyData("What are you doing3", ['Home Science', 'Science', 'IIT', 'ITI'],'Patel Nagar', 3.6,9),
  // DummyData("What are you doing4", ['widget', 'module', 'not', 'prompt']),
  // DummyData("What are you doing4", ['widget', 'module', 'not', 'prompt']),
  // DummyData("What are you doing4", ['widget', 'module', 'not', 'prompt']),
  // DummyData("What are you doing4", ['widget', 'module', 'not', 'prompt']),
  // DummyData("What are you doing4", ['widget', 'module', 'not', 'prompt']),
  // DummyData("What are you doing4", ['widget', 'module', 'not', 'prompt']),
];
