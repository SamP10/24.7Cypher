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
CREATE(Adviser1:Staff{title:"Adviser", name:"Anna McKenzie", DOB:"13/03/96"})
CREATE(Adviser2:Staff{title:"Adviser", name:"James Simmonds", DOB:"01/09/99"})
CREATE(Adviser3:Staff{title:"Adviser", name:"Elizabeth Riley", DOB:"07/01/96"})
CREATE(Adviser4:Staff{title:"Adviser", name:"Carter Smith", DOB:"30/09/98"})
CREATE(Adviser5:Staff{title:"Adviser", name:"Lisa Broderick", DOB:"08/02/94"})
CREATE(Adviser6:Staff{title:"Adviser", name:"Matthew Albert", DOB:"21/12/97"})
CREATE(Adviser7:Staff{title:"Adviser", name:"Bernard Heavers", DOB:"12/10/97"})
CREATE(Adviser8:Staff{title:"Adviser", name:"Kevin O'caroll", DOB:"18/01/96"})

//Contact Seniors
CREATE(Senior1:Staff{title:"Senior", name:"Cameron Newman", DOB:"24/03/95"})
CREATE(Senior2:Staff{title:"Senior", name:"Michael Anderson", DOB:"20/07/92"})
CREATE(Senior3:Staff{title:"Senior", name:"Pauline Sue", DOB:"10/11/96"})
CREATE(Senior4:Staff{title:"Senior", name:"Linda Parkinson", DOB:"09/01/94"})
CREATE(Senior5:Staff{title:"Senior", name:"Mila Treston", DOB:"19/06/96"})

//Contact Social
CREATE(Social1:Staff{title:"Social", name:"Jessup Riley", DOB:"12/03/93"})
CREATE(Social1:Staff{title:"Social", name:"Ian Jerrison", DOB:"28/11/96"})
CREATE(Social1:Staff{title:"Social", name:"Jessica Allen", DOB:"02/02/94"})
CREATE(Social1:Staff{title:"Social", name:"Alex Tamsen", DOB:"18/06/95"})
CREATE(Social1:Staff{title:"Social", name:"LLoyd Stone", DOB:"24/09/95"})

//Contact Management
CREATE(Manager1:Staff{title:"Manager", name:"Brittany Checkyavik", DOB:"20/06/92"})
CREATE(Manager1:Staff{title:"Manager", name:"Sharna Blackley", DOB:"10/02/93"})
CREATE(Manager1:Staff{title:"Manager", name:"Allan Richardson", DOB:"02/12/92"})
CREATE(Manager1:Staff{title:"Manager", name:"Richard Sheeran", DOB:"05/01/89"})

//Staff Relationships
