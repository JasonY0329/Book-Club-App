import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/book.dart';

class BookCubit extends Cubit<List<Book>> {
  BookCubit() : super([]);

  void loadBooks() {
    emit([
      Book(
        title: 'Charmer and Grit',
        author: 'Sarah Jean Horwitz',
        description: 'Aspiring inventor and magician’s apprentice Felix Carmer III would rather be tinkering with his latest experiments than sawing girls in half on stage, but with Antoine the Amazifier’s show a tomato’s throw away from going under, Carmer is determined to win the cash prize in the biggest magic competition in Skemantis. When fate throws Carmer across the path of fiery, flightless faerie princess Grit (do not call her Grettifrida), they strike a deal. If Carmer will help Grit investigate a string of faerie disappearances, she’ll use her very real magic to give his mechanical illusions a much-needed boost against the competition. But Carmer and Grit soon discover they’re not the only duo trying to pair magic with machine – and the combination can be deadly.In this story perfect for readers of the Lockwood & Co and Wildwood series, Sarah Jean Horwitz takes readers on a thrilling journey through a magical wooded fairyland and steampunk streets where terrifying automata cats lurk in the shadows and a mad scientist’s newest mechanical invention might be more menace than miracle.',
        imageUrl: 'https://www.hachettebookgroup.com/wp-content/uploads/2023/02/9781616208028.jpg?resize=401,600'
        ),
      Book(
        title: 'Little Gods',
        author: 'Meng Jin',
        description: 'On the night of June 4th, a woman gives birth in a Beijing hospital alone. Thus begins the unraveling of Su Lan, a brilliant physicist who until this moment has successfully erased her past, fighting what she calls the mind’s arrow of time.Seventeen years later, Su Lan’s daughter, Liya, brings her mother’s ashes to China, along with the silences and contradictions of Su Lan’s life. In a territory inhabited by the ghosts of the living and the dead, Liya’s memories are joined by those of two others: Zhu Wen, the woman last to know Su Lan before she left China, and Yongzong, the father Liya has never known. In this way a portrait of Su Lan emerges: an ambitious scientist, an ambivalent mother, and a woman whose relationship to her own history shapes and ultimately unmakes Liya’s own sense of displacement.A story of migrations literal and emotional, spanning time, space, and class, Little Gods is a sharp yet expansive exploration of the aftermath of unfulfilled dreams, an immigrant story in negative that grapples with our tenuous connections to memory, history, and self.',
        imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1568647683i/44890075.jpg',
      ),
      Book(
        title: 'A Clockwork Orange',
        author: 'Anthony Burgess',
        description: 'A vicious fifteen-year-old droog is the central character of this 1963 classic. In Anthony Burgess nightmare vision of the future, where the criminals take over after dark, the story is told by the central character, Alex, who talks in a brutal invented slang that brilliantly renders his and his friends social pathology. A Clockwork Orange is a frightening fable about good and evil, and the meaning of human freedom. When the state undertakes to reform Alex to "redeem" him, the novel asks, "At what cost?" This edition includes the controversial last chapter not published in the first edition.',
        imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1549260060i/41817486.jpg',
      ),
      Book(
        title: 'Memory',
        author: 'Angelina Almond',
        description: 'A tale of loss and memory.',
        imageUrl: 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/contemporary-fiction-night-time-book-cover-design-template-1be47835c3058eb42211574e0c4ed8bf_screen.jpg?ts=1698210220',
      ),
      Book(
        title: 'James and the Giant Peach',
        author: 'Roald Dahl',
        description: 'James Trotter loses his parents in a horrible accident and is forced to live-miserably-with his two wicked aunts. Then James is given some magic crystals that give him hope. But when he accidentally spills these crystals on an old peach tree, strange things begin to happen. A peach starts to grow and grow until James is able to climb inside and escape his awful aunts! And through this adventure, he makes some interesting friends, including Grasshopper, Earthworm, Miss Spider, and Centipede, and finally finds a place where he belongs.',
        imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1320412586i/6689.jpg',
      ),
    ]);
  }
  void sortByAuthor() {
    final sortedBooks = List<Book>.from(state)
      ..sort((a, b) => a.author.compareTo(b.author));
    emit(sortedBooks);
  }

  void sortByTitle() {
    final sortedBooks = List<Book>.from(state)
      ..sort((a, b) => a.title.compareTo(b.title));
    emit(sortedBooks);
  }
}
