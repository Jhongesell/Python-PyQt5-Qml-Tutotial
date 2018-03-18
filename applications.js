function bodmas(string) {
    var total;
    var operators = [')','(', 'of', '/', '*', '+', '-'];
    var operations = ['']
    var answer = [];
    var semi_total = 0;

    for(var x=5; x>0; x--) {
        var outcome = string.split(operators[x]);
        if(outcome[0] != string) {
            console.log(outcome);
            switch(x) {
            case 0:
                // Sub
                answer = [];
                // repeat bodmas on it
                for(var y=0; y<len(outcome); y++) {
                    answer.push(bodmas(outcome[y]));
                }

                // now the operation itself
                semi_total = 0
                for(var z=0; z<len(answer); z++) {
                    semi_total = -answer[z] - (-semi_total);
                }
                total = semi_total;

                break;

            case 1:
                // Add
                answer = [];

                // repeat bodmas on it
                for(var y=0; y<len(outcome); y++) {
                    answer.push(bodmas(outcome[y]));
                }

                // now the operation itself
                semi_total = 0
                for(var z=0; z<len(answer); z++) {
                    semi_total += answer[z]
                }
                total = semi_total;

                break;

            case 2:
                // Multiply
                answer = [];

                // repeat bodmas on it
                for(var y=0; y<len(outcome); y++) {
                    answer.push(bodmas(outcome[y]));
                }

                // now the operation itself
                semi_total = 1
                for(var z=0; z<len(answer); z++) {
                    semi_total *= answer[z]
                }
                total = semi_total;
                break;

            case 3:
                // Division
                answer = [];

                // repeat bodmas on it
                for(var y=0; y<len(outcome); y++) {
                    answer.push(bodmas(outcome[y]));
                }

                // now the operation itself
                semi_total = 1
                for(var z=0; z<len(answer); z++) {
                    semi_total /= answer[z]
                }
                total = semi_total;
                break;

            case 4:
                // of
                answer = [];

                // repeat bodmas on it
                for(var y=0; y<len(outcome); y++) {
                    answer.push(bodmas(outcome[y]));
                }

                // now the operation itself
                semi_total = 1
                for(var z=0; z<len(answer); z++) {
                    semi_total *= answer[z]
                }
                total = semi_total;
                break;

            case 5:
                // left Brackets
                answer = [];

                // repeat bodmas on it
                for(var y=0; y<len(outcome); y++) {
                    answer.push(bodmas(outcome[y]));
                }

                // now the operation itself
                semi_total = 1
                for(var z=0; z<len(answer); z++) {
                    semi_total *= answer[z]
                }
                total = semi_total;
                break;
           case 6:
               // right brackets
               answer = [];

               // repeat bodmas on it
               for(var y=0; y<len(outcome); y++) {
                   answer.push(bodmas(outcome[y]));
               }

               // now the operation itself
               semi_total = answer;
               total = semi_total;
               break;
            }
        } else {
            total = string;
        }
    }

    return total;

}
