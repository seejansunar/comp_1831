MATCH (u:User)-[:ATTENDS]->(:Module{name:"Comp1831"})
MATCH (u)-[:WORKED_WITH]->(:Technology {name: 'Python'})
MATCH (u)-[:WORKED_WITH]->(:Technology {name: 'Neo4J'})
RETURN u
