
// Load person2 csv from the given source and create person
LOAD CSV WITH HEADERS FROM
"https://gist.githubusercontent.com/apogiatzis/237146155b85be73e25d775e487f4d8c/raw/7a440b1f4b7885ea425d5db0ce6aae041b8ea42a/persons2.csv" AS personCSV
CREATE (:Person{id:toInteger(personCSV.personId),firstName:personCSV.firstName,lastName:personCSV.lastName})


// Load loan csv from the provided source and merge bank and loan with relation from
LOAD CSV WITH HEADERS FROM
"https://gist.githubusercontent.com/apogiatzis/93927b266820ce9696b94055e896b1f9/raw/fdfdd19194b2afc1f78b01e4ddd783826b676878/loans.csv" AS loanCSV
MERGE(b:Bank{name:loanCSV.bank})
CREATE (l:Loan{id:toInteger(loanCSV.loanId),amount:toInteger(loanCSV.amount)})
CREATE(l)-[:FROM]->(b)


// Load status csv from the give source and create relation between person and loan from the data set provided
LOAD CSV WITH HEADERS FROM
"https://gist.githubusercontent.com/apogiatzis/dbc8f04359311257cd84e216ae8fedc4/raw/19fa315206573cab427d8b13e641c403a45852c6/status.csv" AS statusCSV
MATCH(p:Person{id:toInteger(statusCSV.personId)})
MATCH(l:Loan{id:toInteger(statusCSV.loanId)})
CREATE(p)-[:RECEIVED]->(l)


// Finally select all person, loan and bank
MATCH(p:Person)
MATCH(l:Loan)
MATCH(b:Bank)
RETURN p,l,b