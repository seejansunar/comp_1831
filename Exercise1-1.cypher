// Create Nodes for University

CREATE (:University {name: "University of Greenwich"});
CREATE (:Course {name: "COMP1830"});
CREATE (:Course {name: "COMP1831"});


// Create nodes for students

CREATE (:Student {name: "Rasvan"});
CREATE (:Student {name: "Olivia"});
CREATE (:Student {name: "George"});
CREATE (:Student {name: "Peter"});
CREATE (:Student {name: "Rajesh"});
CREATE (:Student {name: "Katie"});
CREATE (:Student {name: "Julia"});

// Create nodes for tech

CREATE (:Technology {name: "Neo4J"});
CREATE (:Technology {name: "Python"});
CREATE (:Technology {name: "ML"});


// Relationship Course Attendance

MATCH (s:Student {name: "Julia"}), (c:Course {name: "COMP1831"})
CREATE (s)-[:ATTENDS]->(c);

MATCH (s:Student {name: "Olivia"}), (c:Course {name: "COMP1831"})
CREATE (s)-[:ATTENDS]->(c);

MATCH (s:Student {name: "Peter"}), (c:Course {name: "COMP1831"})
CREATE (s)-[:ATTENDS]->(c);

MATCH (s:Student {name: "George"}), (c:Course {name: "COMP1831"})
CREATE (s)-[:ATTENDS]->(c);

MATCH (s:Student {name: "Katie"}), (c:Course {name: "COMP1830"})
CREATE (s)-[:ATTENDS]->(c);

MATCH (s:Student {name: "Rasvan"}), (c:Course {name: "COMP1830"})
CREATE (s)-[:ATTENDS]->(c);

MATCH (s:Student {name: "Rajesh"}), (c:Course {name: "COMP1830"})
CREATE (s)-[:ATTENDS]->(c);

// Relationship University enroll

MATCH (s:Student), (u:University {name: "University of Greenwich"})
CREATE (s)-[:STUDIES_IN]->(u);


 
// Relationship for working with tech

MATCH (s:Student {name: "Peter"}), (t:Technology {name: "ML"})
CREATE (s)-[:WORKED_WITH]->(t);

MATCH (s:Student {name: "George"}), (t:Technology {name: "Python"})
CREATE (s)-[:WORKED_WITH]->(t);

MATCH (s:Student {name: "George"}), (t:Technology {name: "Neo4J"})
CREATE (s)-[:WORKED_WITH]->(t);

MATCH (s:Student {name: "Rajesh"}), (t:Technology {name: "Python"})
CREATE (s)-[:WORKED_WITH]->(t);

// to see relations

MATCH (n) RETURN n; 


// Viewing

MATCH (n)-[r]->(m) RETURN n, r, m;
