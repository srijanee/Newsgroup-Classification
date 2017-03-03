# Newsgroup-Classification
The data and its description is available in UCL data repository. The data has been made available in a format which can be used for classification. There are 2003 news articles belonging to 4 different categories. A naive bayes algorithmis implemented to classify each of the articles into one of news categories.In order to remove zero probabilities Laplace smoothening is done. To take care of underflow issues log likelihood function is used.

word.cpp is used to prepare a dictionary of all the words present in the data.

pre.cpp preprocesses the data and makes feature vector and label vector.

