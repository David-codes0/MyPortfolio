class Project {
  final String? title,descrption;
  Project({this.title, this.descrption});
}

List<Project> details = [
  Project(
  title: 'My Note with Firebase',
  descrption: '''In this project,
  I used the Bloc as the  State management,\n
  I implement firebase authentication to register and sign in users,\n
  I also implement firebase cloud firestore for store databbase on the cloud,\n
  It has an Excellent code Architechure.
     ''' 
  ),
  Project(
    title: 'Mi Card web app UI', 
    descrption: 'I implement the use of animations in this project'
    ),
  Project(
    title: 'Food Store REST API (Node.js)',
    descrption: '''This is web accessible with Private and Public key \n
     implementation of Authentication and Authorisation'''
  ),
];