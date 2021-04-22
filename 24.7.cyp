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
CREATE(FootballT:FootballT{title:"Football"})
CREATE(Trader1:FootballT{title:"Trader", name:"Andy Cole", DOB:"01/11/1979", sport:"Football"})
CREATE(Trader2:FootballT{title:"Trader", name:"Chris James", DOB:"21/03/1983", sport:"Football"})
CREATE(Trader3:FootballT{title:"Trader", name:"Nicole Hammer", DOB:"18/01/1989", sport:"Football"})
CREATE(HorseT:HorseT{title:"Horse Racing"})
CREATE(Trader4:HorseT{title:"Trader", name:"Nat Speaks", DOB:"11/12/1978", sport:"Horse Racing"})
CREATE(Trader5:HorseT{title:"Trader", name:"Rebecca Alvesera", DOB:"05/03/1985", sport:"Horse Racing"})
CREATE(Trader6:HorseT{title:"Trader", name:"Nadia Pointing", DOB:"14/07/1980", sport:"Horse Racing"})
CREATE(EsportsT:EsportsT{title:"Esports"})
CREATE(Trader7:EsportsT{title:"Trader", name:"Billy Kid", DOB:"29/09/1990", sport:"Esports"})
CREATE(Trader8:EsportsT{title:"Trader", name:"Pasca Voscov", DOB:"12/04/1988", sport:"Esports"})

CREATE
  (BetRoles)-[:TRADERS]->(Traders),
  (Traders)-[:FOOTBALL]->(FootballT),
  (FootballT)-[:TRADER]->(Trader1),
  (FootballT)-[:TRADER]->(Trader2),
  (FootballT)-[:TRADER]->(Trader3),
  (Traders)-[:HORSE]->(HorseT),
  (HorseT)-[:TRADER]->(Trader4),
  (HorseT)-[:TRADER]->(Trader5),
  (HorseT)-[:TRADER]->(Trader6),
  (Traders)-[:ESPORTS]->(EsportsT),
  (EsportsT)-[:TRADER]->(Trader7),
  (EsportsT)-[:TRADER]->(Trader8)

//Gaming Roles
CREATE(Technician:Gaming{title:"Technicians"})
CREATE(Developer:Gaming{title:"Developers"})
CREATE(Tester:Gaming{title:"Testers"})

//Technicians
CREATE(Technician1:Technician{title:"Technician", name:"Addesenya Tobias", DOB:"22/04/1994"})
CREATE(Technician2:Technician{title:"Technician", name:"Becky Anne", DOB:"09/09/1996"})
CREATE(Technician3:Technician{title:"Technician", name:"Peter Quill", DOB:"23/10/1990"})

//Developers
CREATE(Developer1:Developer{title:"Developer", name:"Tony Dodrigo", DOB:"19/06/1987"})
CREATE(Developer2:Developer{title:"Developer", name:"Matthew Clarke", DOB:"12/03/1984"})
CREATE(Developer3:Developer{title:"Developer", name:"Jessup Ryan", DOB:"05/10/1980"})
CREATE(Developer4:Developer{title:"Developer", name:"Jessica Smalls", DOB:"23/10/1986"})

//Testers
CREATE(Tester1:Tester{title:"Tester", name:"Sandy Mclain", DOB:"21/12/1996"})
CREATE(Tester2:Tester{title:"Tester", name:"Ian Stern", DOB:"08/01/2000"})

//Betting Role Relationships
CREATE
  (GamingRoles)-[:TECH]->(Technician),
  (GamingRoles)-[:DEV]->(Developer),
  (GamingRoles)-[:TEST]->(Tester),
  (Technician)-[:TECHNICIAN]->(Technician1),
  (Technician)-[:TECHNICIAN]->(Technician2),
  (Technician)-[:TECHNICIAN]->(Technician3),
  (Developer)-[:DEVELOPER]->(Developer1),
  (Developer)-[:DEVELOPER]->(Developer2),
  (Developer)-[:DEVELOPER]->(Developer3),
  (Developer)-[:DEVELOPER]->(Developer4),
  (Tester)-[:TESTER]->(Tester1),
  (Tester)-[:TESTER]->(Tester2)


//FRAUD SECURITY SAFER GAMBLING PROMOTIONS/MARKETING OVERSEEN BY THE GAMBLING COMMISSION
CREATE(Fraud:Fraud{title:"Fraud"})
CREATE(Security:Security{title:"Security/Safer Gambling"})
CREATE(Promotions:Promotions{title:"Promotions"})
CREATE(GamblingCommission:GamblingCommission{title:"The Gambling Commission"})
CREATE(Marketing:Marketing{title:"Marketing"})

//Fraud team
CREATE(FraudRoles:FraudR{title:"Fraud Roles"})
CREATE(FraudDoc:FraudD{title:"Fraud Documents"})

CREATE(Fraud1:FraudR{title:"Fraud Team", name:"Joey Tribi", DOB:"20/05/1987"})
CREATE(Fraud2:FraudR{title:"Fraud Team", name:"Ellie Daniels", DOB:"12/09/1990"})
CREATE(Fraud3:FraudR{title:"Fraud Team", name:"Pamela Richards", DOB:"29/02/1989"})
CREATE(Fraud4:FraudR{title:"Fraud Team", name:"Lewis Reed", DOB:"09/01/1985"})

//Security and Safer gambling team
CREATE(SecRoles:SecR{title:"Security Roles"})
CREATE(SecDoc:SecD{title:"Security Documents"})

CREATE(Security1:SecR{title:"Security Team", name:"Tilly Lewis", DOB:"14/07/1990"})
CREATE(Security2:SecR{title:"Security Team", name:"Harry Hallson", DOB:"10/03/1985"})
CREATE(Security3:SecR{title:"Security Team", name:"Taylor Steward", DOB:"23/09/1989"})
CREATE(Security4:SecR{title:"Security Team", name:"Nelly Anderson", DOB:"30/09/1992"})

CREATE(SaferGamb1:SecR{title:"Safer Gambling", name:"Barry Khan", DOB:"02/04/1984"})
CREATE(SaferGamb2:SecR{title:"Safer Gambling", name:"Terry Pollard", DOB:"17/06/1990"})
CREATE(SaferGamb3:SecR{title:"Safer Gambling", name:"Paul Rudd", DOB:"24/11/1989"})
CREATE(SaferGamb4:SecR{title:"Safer Gambling", name:"Shania Twanette", DOB:"27/01/1985"})

//Promotions team
CREATE(PromoRoles:PromoR{title:"Promotion Roles"})
CREATE(PromoDoc:PromoDoc{title:"Promotion Documents"})

CREATE(Promo1:PromoR{title:"Promotion Team", name:"Sarah Andrews", DOB:"19/02/1992"})
CREATE(Promo2:PromoR{title:"Promotion Team", name:"Zarrifsha Ahmed", DOB:"20/12/1997"})
CREATE(Promo3:PromoR{title:"Promotion Team", name:"Richard Brett", DOB:"04/08/1990"})
CREATE(Promo4:PromoR{title:"Promotion Team", name:"Euan Shelby", DOB:"01/10/1995"})

//Gambling Commission
CREATE(GamCommRoles:GamComR{title:"Gambling Commission Roles"})
CREATE(GamCommDoc:GamComD{title:"Gambling Commission Documents"})

CREATE(GamblingComm1:GamComR{title:"Gambling Comission Officer", name:"Ross Jones", DOB:"22/04/1987"})
CREATE(GamblingComm2:GamComR{title:"Gambling Comission Officer", name:"Charlie Barks", DOB:"09/07/1985"})
CREATE(GamblingComm3:GamComR{title:"Gambling Comission Officer", name:"Melinda Privchenka", DOB:"23/07/1982"})

//Marketing team
CREATE(MarketingRoles:MarkR{title:"Marketing Roles"})
CREATE(MarketingDoc:MarkD{title:"Marketing Documents"})

CREATE(Marketing1:MarkR{title:"Marketing Team", name:"Tessa Smithers", DOB:"12/12/1996"})
CREATE(Marketing2:MarkR{title:"Marketing Team", name:"Carmel Caroll", DOB:"17/03/1994"})
CREATE(Marketing3:MarkR{title:"Marketing Team", name:"Paul Bettany", DOB:"30/09/1992"})

//Relationships
CREATE
  (Department)-[:FRAUD]->(Fraud),
  (Department)-[:MARKETING]->(Marketing),
  (Department)-[:GAMBLING_COMMISSION]->(GamblingCommission),
  (Department)-[:PROMOTIONS]->(Promotions),
  (Department)-[:SECURITY]->(Security),
  (Fraud)-[:FRAUD_ROLES]->(FraudRoles),
  (Fraud)-[:FRAUD_DOCUMENTS]->(FraudDoc),
  (Marketing)-[:MARKETING_ROLES]->(MarketingRoles),
  (Marketing)-[:MARKETING_DOCUMENTS]->(MarketingDoc),
  (GamblingCommission)-[:GAMBLING_COMM_ROLES]->(GambCommRoles),
  (GamblingCommission)-[:GAMBLING_COMM_DOCS]->(GambCommDoc),
  (Promotions)-[:PROMOTION_ROLES]->(PromoRoles),
  (Promotions)-[:PROMOTION_DOCUMENTS]->(PromoDoc),
  (Security)-[:SECURITY_ROLES]->(SecRoles),
  (Security)-[:SECURITY_DOCUMENTS]->(SecDoc),
  (FraudRoles)-[:MEMBER]->(Fraud1),
  (FraudRoles)-[:MEMBER]->(Fraud2),
  (FraudRoles)-[:MEMBER]->(Fraud3),
  (FraudRoles)-[:MEMBER]->(Fraud4),
  (MarketingRoles)-[:MEMBER]->(Marketing1),
  (MarketingRoles)-[:MEMBER]->(Marketing2),
  (MarketingRoles)-[:MEMBER]->(Marketing3),
  (GamCommRoles)-[:MEMBER]->(GamblingComm1),
  (GamCommRoles)-[:MEMBER]->(GamblingComm2),
  (GamCommRoles)-[:MEMBER]->(GamblingComm3),
  (PromoRoles)-[:MEMBER]->(Promo1),
  (PromoRoles)-[:MEMBER]->(Promo2),
  (PromoRoles)-[:MEMBER]->(Promo3),
  (PromoRoles)-[:MEMBER]->(Promo4),
  (SecRoles)-[:MEMBER]->(Security1),
  (SecRoles)-[:MEMBER]->(Security2),
  (SecRoles)-[:MEMBER]->(Security3),
  (SecRoles)-[:MEMBER]->(Security4),
  (SecRoles)-[:MEMBER]->(SaferGamb1),
  (SecRoles)-[:MEMBER]->(SaferGamb2),
  (SecRoles)-[:MEMBER]->(SaferGamb3),
  (SecRoles)-[:MEMBER]->(SaferGamb4)
