CREATE(BET24:COMPANY {name:"BET 24/7", founded:1998, webURL:"www.Bet24/7.co.uk"})

//Departments within the company
CREATE(Department:Department {title:"Departments", total:4})
CREATE(Betting:Department {title:"Betting"})
CREATE(Gaming:Department {title:"Gaming"})
CREATE(Casino:Department {title:"Casino"})

//Roles Within each department
CREATE(BetRoles:Role {title:"Bet Roles"})
CREATE(GamingRoles:Role {title:"Gaming Roles"})
CREATE(CasinoRoles:Role {title:"Casino Roles"})

CREATE
  (BET24)-[:DEPARTMENTS]->(Department),
  (Department)-[:BET]->(Betting),
  (Department)-[:GAMING]->(Gaming),
  (Department)-[:CASINO]->(Casino),
  (Betting)-[:JOBS]->(BetRoles),
  (Gaming)-[:JOBS]->(GamingRoles),
  (Casino)-[:JOBS]->(CasinoRoles)

//Contact Roles
CREATE(Contact:Contact {title:"Contact"})
CREATE(Seniors:Contact {title:"Seniors"})
CREATE(Advisers:Contact {title:"Advisers"})
CREATE(Social:Contact {title:"Social Media"})
CREATE(Management:Contact {title:"Management"})

CREATE
  (BetRoles)-[:SUPPORT]->(Contact),
  (GamingRoles)-[:SUPPORT]->(Contact),
  (CasinoRoles)-[:SUPPORT]->(Contact),
  (Contact)-[:ROLE]->(Seniors),
  (Contact)-[:ROLE]->(Advisers),
  (Contact)-[:ROLE]->(Social),
  (Contact)-[:ROLE]->(Management)

//Contact Advisers
CREATE(Adviser1:Staff{title:"Adviser", name:"Anna McKenzie", DOB:"13/03/1996"})
CREATE(Adviser2:Staff{title:"Adviser", name:"James Simmonds", DOB:"01/09/1999"})
CREATE(Adviser3:Staff{title:"Adviser", name:"Elizabeth Riley", DOB:"07/01/1996"})
CREATE(Adviser4:Staff{title:"Adviser", name:"Carter Smith", DOB:"30/09/1998"})
CREATE(Adviser5:Staff{title:"Adviser", name:"Lisa Broderick", DOB:"08/02/1994"})
CREATE(Adviser6:Staff{title:"Adviser", name:"Matthew Albert", DOB:"21/12/1997"})
CREATE(Adviser7:Staff{title:"Adviser", name:"Bernard Heavers", DOB:"12/10/1997"})
CREATE(Adviser8:Staff{title:"Adviser", name:"Kevin O'caroll", DOB:"18/01/1996"})

//Contact Seniors
CREATE(Senior1:Staff{title:"Senior", name:"Cameron Newman", DOB:"24/03/1995"})
CREATE(Senior2:Staff{title:"Senior", name:"Michael Anderson", DOB:"20/07/1992"})
CREATE(Senior3:Staff{title:"Senior", name:"Pauline Sue", DOB:"10/11/1996"})
CREATE(Senior4:Staff{title:"Senior", name:"Linda Parkinson", DOB:"09/01/1994"})
CREATE(Senior5:Staff{title:"Senior", name:"Mila Treston", DOB:"19/06/1996"})

//Contact Social
CREATE(Social1:Staff{title:"Social", name:"Jessup Riley", DOB:"12/03/1993"})
CREATE(Social2:Staff{title:"Social", name:"Ian Jerrison", DOB:"28/11/1996"})
CREATE(Social3:Staff{title:"Social", name:"Jessica Allen", DOB:"02/02/1994"})
CREATE(Social4:Staff{title:"Social", name:"Alex Tamsen", DOB:"18/06/1995"})
CREATE(Social5:Staff{title:"Social", name:"LLoyd Stone", DOB:"24/09/1995"})

//Contact Management
CREATE(Manager1:Staff{title:"Manager", name:"Brittany Checkyavik", DOB:"20/06/1992"})
CREATE(Manager2:Staff{title:"Manager", name:"Sharna Blackley", DOB:"10/02/1993"})
CREATE(Manager3:Staff{title:"Manager", name:"Allan Richardson", DOB:"02/12/1992"})
CREATE(Manager4:Staff{title:"Manager", name:"Richard Sheeran", DOB:"05/01/1989"})

//Staff Relationships
CREATE
//Advisers
  (Advisers)-[:STAFF]->(Adviser1),
  (Advisers)-[:STAFF]->(Adviser2),
  (Advisers)-[:STAFF]->(Adviser3),
  (Advisers)-[:STAFF]->(Adviser4),
  (Advisers)-[:STAFF]->(Adviser5),
  (Advisers)-[:STAFF]->(Adviser6),
  (Advisers)-[:STAFF]->(Adviser7),
  (Advisers)-[:STAFF]->(Adviser8),
//Seniors
  (Seniors)-[:STAFF]->(Senior1),
  (Seniors)-[:STAFF]->(Senior2),
  (Seniors)-[:STAFF]->(Senior3),
  (Seniors)-[:STAFF]->(Senior4),
  (Seniors)-[:STAFF]->(Senior5),
//Social
  (Social)-[:STAFF]->(Social1),
  (Social)-[:STAFF]->(Social2),
  (Social)-[:STAFF]->(Social3),
  (Social)-[:STAFF]->(Social4),
  (Social)-[:STAFF]->(Social5),
//Management
  (Management)-[:STAFF]->(Manager1),
  (Management)-[:STAFF]->(Manager2),
  (Management)-[:STAFF]->(Manager3),
  (Management)-[:STAFF]->(Manager4),
//Relationship between management and staff
  (Manager1)-[:MANAGES]->(Adviser1),
  (Manager1)-[:MANAGES]->(Adviser2),
  (Manager1)-[:MANAGES]->(Senior2),
  (Manager1)-[:MANAGES]->(Social4),
  (Manager1)-[:MANAGES]->(Social5),
//
  (Manager2)-[:MANAGES]->(Adviser3),
  (Manager2)-[:MANAGES]->(Adviser4),
  (Manager2)-[:MANAGES]->(Senior3),
  (Manager2)-[:MANAGES]->(Senior1),
  (Manager2)-[:MANAGES]->(Social3),
//
  (Manager3)-[:MANAGES]->(Adviser5),
  (Manager3)-[:MANAGES]->(Adviser6),
  (Manager3)-[:MANAGES]->(Senior4),
  (Manager3)-[:MANAGES]->(Social1),
//
  (Manager4)-[:MANAGES]->(Adviser7),
  (Manager4)-[:MANAGES]->(Adviser8),
  (Manager4)-[:MANAGES]->(Senior5),
  (Manager4)-[:MANAGES]->(Social2)


//Casino Roles
CREATE(Pit:Casino{title:"Pitboss"})
CREATE(Croupiers:Casino{title:"Croupiers"})

//Casino Pitboss
CREATE(Pitboss:Pitboss{title:"Pitboss", name:"Jim Hawkins", DOB:"11/02/1978"})

//Casino Croupiers
CREATE(Croupier1:Croupier{title:"Croupier", name:"Rebecca Stanley", DOB:"09/09/2001", game:"Roulette"})
CREATE(Croupier2:Croupier{title:"Croupier", name:"Adam Swanson", DOB:"13/04/1998", game:"Blackjack"})
CREATE(Croupier3:Croupier{title:"Croupier", name:"Amelia Dailey", DOB:"29/01/2000", game:"Poker"})
CREATE(Croupier4:Croupier{title:"Croupier", name:"Melissa Star", DOB:"09/10/1996", game:"Baccarat"})
CREATE
  (CasinoRoles)-[:ROLE]->(Pit),
  (CasinoRoles)-[:ROLE]->(Croupiers),
  (Pit)-[:PITBOSS]->(Pitboss),
  (Croupiers)-[:DEALER]->(Croupier1),
  (Croupiers)-[:DEALER]->(Croupier2),
  (Croupiers)-[:DEALER]->(Croupier3),
  (Croupiers)-[:DEALER]->(Croupier4)

//Betting Roles
CREATE(Traders:Betting{title:"Traders"})


//Traders - bet