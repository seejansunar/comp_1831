MATCH (s:Student)-[:ATTENDS]->(:Course {name: "COMP1831"})
WHERE EXISTS {
  MATCH (s)-[:WORKED_WITH]->(:Technology {name: "Neo4J"})
}
AND EXISTS {
  MATCH (s)-[:WORKED_WITH]->(:Technology {name: "Python"})
}
RETURN s.name AS StudentName;
