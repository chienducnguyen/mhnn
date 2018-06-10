function I = e(x,t)
    X1 = ["you", "are", "probably", "familiar", "with", "the", "idea", "that", "transitions", "may", "be", "needed", "between", "paragraphs", "or", "sections", "in", "a", "paper", ";", "sometimes", "they", "are", "also", "helpful", "within", "the", "body", "of", "a", "single", "paragraph", ";", "within", "a", "paragraph" ,";", "transitions", "are", "often", "single", "words", "or", "short", "phrases", "that", "help", "to", "establish", "relationships", "between", "ideas", "and", "to", "create", "a", "logical", "progression", "of", "those", "ideas", "in", "a", "paragraph", ";","this", "is", "especially", "likely", "to", "be", "true", "within", "paragraphs", "that", "discuss", "multiple", "examples", ";", "let's", "take", "a", "look", "at", "a", "version", "of", "our", "piranha", "paragraph", "that", "uses", "transitions", "to", "orient", "the", "reader"];
    Y1 = ["PP", "VB", "RB", "JJ", "IN", "D", "NN", "IN", "NN", "VB", "VB", "VB", "IN", "NN", "CC", "NN", "IN", "D", "NN", "STOP", "RB", "PP", "VB", "RB", "JJ", "IN", "D", "NN", "IN", "D", "JJ", "NN", "STOP", "IN", "D", "NN", "STOP", "NN", "VB", "RB", "JJ", "NN", "CC", "JJ", "NN", "D", "VB", "IN", "VB", "NN", "IN", "NN", "CC", "IN", "VB", "D", "JJ", "NN", "IN", "D", "NN", "IN", "D", "NN", "STOP", "D", "VB", "RB", "JJ", "IN", "VB", "JJ", "IN", "NN", "D", "VB", "JJ", "NN", "STOP", "VB", "VB", "D", "NN", "IN", "D", "NN", "IN", "PP", "NN", "NN", "D", "VB", "NN", "IN", "VB", "D", "NN", "STOP"];
    X2 =["I","like","the","blue","house","at","the","end","of","the","street",";","there","is","nothing","else","that","I","care","about",";","he","agree","with","you",";","she","shook","her","head",";","it","is","music","you","will","love","to","hate",";","I","do","not","hate","you",";","after","many","adventures","I","reached","Omaha","only","to","find","that","all","my","old","friends","were","dead","or","had","moved","away",";","she","had","been","under","a","lot","of","stress"];
    Y2=["PP","VB","D","JJ","NN","IN","D","NN","IN","D","NN","STOP","D","VB","NN","RB","IN","PP","VB","IN","STOP","PP","VB","IN","PP","STOP","PP","VB","PP","NN","STOP","PP","VB","NN","PP","VB","VB","IN","VB","STOP","PP","VB","RB","VB","PP", "STOP","IN","JJ","NN","PP","VB","NN","RB","IN","VB","IN","D","PP","JJ","NN","VB","JJ","CC","VB","VB","RB","STOP","PP","VB","VB","IN","D","NN","IN","NN"];
    
    X = [X1,";",X2];
    Y=[Y1,Y2];
    c1 = 0;
    c0 = 0;
    n = size(X, 2);
    for i= 1:n
        if (X(i)== x && Y(i)== t) c1=c1+1;
        end
        if (Y(i)== t) c0=c0+1;
        end
    end
    I = c1/c0;
end
