# BDNoSQL
Bases de dados NoSql -> Neo4J e MongoDB

## QUERIES Neo4J

### 1 -> Retorna o Presidente 
match (n:Employee) -[:TRABALHA_EM]-> (:Job{jobTitle:"President"})
return n.firstName as Name, n.hireDate as HireDate, n.salary as Salary  

### 2 ->  Retorna o numero de trabalhos antigos de cada funcionário
match (e:Employee) <-[r:ANTIGO_JOB]- (a:Job_History)
return e.firstName as Name, count(r) as NumberJobs

