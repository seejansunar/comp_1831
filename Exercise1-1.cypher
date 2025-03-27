// Create University Node
CREATE (uni:University {name: "University of Greenwich"});

// Create Module Nodes
CREATE 
(comp1831:Module {name: "Comp1831"}),
(comp1830:Module {name: "Comp1830"});

// Create Technology Nodes
CREATE 
(ml:Technology {name: "ML"}),
(neo4j:Technology {name: "Neo4J"}),
(python:Technology {name: "Python"});

// Create Student Nodes
CREATE 
(julia:Student {name: "Julia"}),
(olivia:Student {name: "Olivia"}),
(peter:Student {name: "Peter"}),
(george:Student {name: "George"}),
(katie:Student {name: "Katie"}),
(rasvan:Student {name: "Rasvan"}),
(rajesh:Student {name: "Rajesh"});

// Create relationships for University
MATCH (u:Student), (uni:University)
CREATE (u)-[:STUDIES_IN]->(uni);

// Create relationships for Modules
CREATE 
(julia)-[:ATTENDS]->(comp1831),
(olivia)-[:ATTENDS]->(comp1831),
(peter)-[:ATTENDS]->(comp1831),
(george)-[:ATTENDS]->(comp1831),
(katie)-[:ATTENDS]->(comp1830),
(rasvan)-[:ATTENDS]->(comp1830),
(rajesh)-[:ATTENDS]->(comp1830),
(george)-[:ATTENDS]->(comp1830);

// Create relationships for Technologies
CREATE 
(george)-[:WORKED_WITH]->(neo4j),
(george)-[:WORKED_WITH]->(python),
(peter)-[:WORKED_WITH]->(ml),
(rajesh)-[:WORKED_WITH]->(python);

// Verify graph creation
MATCH (n) RETURN n;