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
CREATE(Pit:Role{title:"Pitboss"})
CREATE(Croupiers:Role{title:"Croupiers"})

//Casino Pitboss
CREATE(Pitboss:Staff{title:"Pitboss", name:"Jim Hawkins", DOB:"11/02/1978"})

//Casino Croupiers
CREATE(Croupier1:Staff{title:"Croupier", name:"Rebecca Stanley", DOB:"09/09/2001", game:"Roulette"})
CREATE(Croupier2:Staff{title:"Croupier", name:"Adam Swanson", DOB:"13/04/1998", game:"Blackjack"})
CREATE(Croupier3:Staff{title:"Croupier", name:"Amelia Dailey", DOB:"29/01/2000", game:"Poker"})
CREATE(Croupier4:Staff{title:"Croupier", name:"Melissa Star", DOB:"09/10/1996", game:"Baccarat"})
CREATE
  (CasinoRoles)-[:ROLE]->(Pit),
  (CasinoRoles)-[:ROLE]->(Croupiers),
  (Pit)-[:PITBOSS]->(Pitboss),
  (Croupiers)-[:DEALER]->(Croupier1),
  (Croupiers)-[:DEALER]->(Croupier2),
  (Croupiers)-[:DEALER]->(Croupier3),
  (Croupiers)-[:DEALER]->(Croupier4)

//Betting Roles
CREATE(Traders:Role{title:"Traders"})


//Traders - bet
CREATE(FootballT:Role{title:"Football"})
CREATE(Trader1:Staff{title:"Trader", name:"Andy Cole", DOB:"01/11/1979", sport:"Football"})
CREATE(Trader2:Staff{title:"Trader", name:"Chris James", DOB:"21/03/1983", sport:"Football"})
CREATE(Trader3:Staff{title:"Trader", name:"Nicole Hammer", DOB:"18/01/1989", sport:"Football"})
CREATE(HorseT:Role{title:"Horse Racing"})
CREATE(Trader4:Staff{title:"Trader", name:"Nat Speaks", DOB:"11/12/1978", sport:"Horse Racing"})
CREATE(Trader5:Staff{title:"Trader", name:"Rebecca Alvesera", DOB:"05/03/1985", sport:"Horse Racing"})
CREATE(Trader6:Staff{title:"Trader", name:"Nadia Pointing", DOB:"14/07/1980", sport:"Horse Racing"})
CREATE(EsportsT:Role{title:"Esports"})
CREATE(Trader7:Staff{title:"Trader", name:"Billy Kid", DOB:"29/09/1990", sport:"Esports"})
CREATE(Trader8:Staff{title:"Trader", name:"Pasca Voscov", DOB:"12/04/1988", sport:"Esports"})

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
CREATE(Technician:Role{title:"Technicians"})
CREATE(Developer:Role{title:"Developers"})
CREATE(Tester:Role{title:"Testers"})

//Technicians
CREATE(Technician1:Staff{title:"Technician", name:"Addesenya Tobias", DOB:"22/04/1994"})
CREATE(Technician2:Staff{title:"Technician", name:"Becky Anne", DOB:"09/09/1996"})
CREATE(Technician3:Staff{title:"Technician", name:"Peter Quill", DOB:"23/10/1990"})

//Developers
CREATE(Developer1:Staff{title:"Developer", name:"Tony Dodrigo", DOB:"19/06/1987"})
CREATE(Developer2:Staff{title:"Developer", name:"Matthew Clarke", DOB:"12/03/1984"})
CREATE(Developer3:Staff{title:"Developer", name:"Jessup Ryan", DOB:"05/10/1980"})
CREATE(Developer4:Staff{title:"Developer", name:"Jessica Smalls", DOB:"23/10/1986"})

//Testers
CREATE(Tester1:Staff{title:"Tester", name:"Sandy Mclain", DOB:"21/12/1996"})
CREATE(Tester2:Staff{title:"Tester", name:"Ian Stern", DOB:"08/01/2000"})

//Betting Role Relationships
CREATE
  (GamingRoles)-[:ROlE]->(Technician),
  (GamingRoles)-[:ROLE]->(Developer),
  (GamingRoles)-[:ROLE]->(Tester),
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
CREATE(Fraud:Department{title:"Fraud"})
CREATE(Security:Department{title:"Security/Safer Gambling"})
CREATE(Promotions:Department{title:"Promotions"})
CREATE(GamblingCommission:Department{title:"The Gambling Commission"})
CREATE(Marketing:Department{title:"Marketing"})

//Fraud team
CREATE(FraudRoles:Role{title:"Fraud Roles"})
CREATE(FraudDoc:Documents{title:"Fraud Documents"})

CREATE(Fraud1:Staff{title:"Fraud Team", name:"Joey Tribi", DOB:"20/05/1987"})
CREATE(Fraud2:Staff{title:"Fraud Team", name:"Ellie Daniels", DOB:"12/09/1990"})
CREATE(Fraud3:Staff{title:"Fraud Team", name:"Pamela Richards", DOB:"29/02/1989"})
CREATE(Fraud4:Staff{title:"Fraud Team", name:"Lewis Reed", DOB:"09/01/1985"})

//Security and Safer gambling team
CREATE(SecRoles:Role{title:"Security Roles"})
CREATE(SecDoc:Documents{title:"Security Documents"})

CREATE(Security1:Staff{title:"Security Team", name:"Tilly Lewis", DOB:"14/07/1990"})
CREATE(Security2:Staff{title:"Security Team", name:"Harry Hallson", DOB:"10/03/1985"})
CREATE(Security3:Staff{title:"Security Team", name:"Taylor Steward", DOB:"23/09/1989"})
CREATE(Security4:Staff{title:"Security Team", name:"Nelly Anderson", DOB:"30/09/1992"})

CREATE(SaferGamb1:Staff{title:"Safer Gambling", name:"Barry Khan", DOB:"02/04/1984"})
CREATE(SaferGamb2:Staff{title:"Safer Gambling", name:"Terry Pollard", DOB:"17/06/1990"})
CREATE(SaferGamb3:Staff{title:"Safer Gambling", name:"Paul Rudd", DOB:"24/11/1989"})
CREATE(SaferGamb4:Staff{title:"Safer Gambling", name:"Shania Twanette", DOB:"27/01/1985"})

//Promotions team
CREATE(PromoRoles:Role{title:"Promotion Roles"})
CREATE(PromoDoc:Documents{title:"Promotion Documents"})

CREATE(Promo1:Staff{title:"Promotion Team", name:"Sarah Andrews", DOB:"19/02/1992"})
CREATE(Promo2:Staff{title:"Promotion Team", name:"Zarrifsha Ahmed", DOB:"20/12/1997"})
CREATE(Promo3:Staff{title:"Promotion Team", name:"Richard Brett", DOB:"04/08/1990"})
CREATE(Promo4:Staff{title:"Promotion Team", name:"Euan Shelby", DOB:"01/10/1995"})

//Gambling Commission
CREATE(GamCommRoles:Role{title:"Gambling Commission Roles"})
CREATE(GamCommDoc:Documents{title:"Gambling Commission Documents"})

CREATE(GamblingComm1:Staff{title:"Gambling Comission Officer", name:"Ross Jones", DOB:"22/04/1987"})
CREATE(GamblingComm2:Staff{title:"Gambling Comission Officer", name:"Charlie Barks", DOB:"09/07/1985"})
CREATE(GamblingComm3:Staff{title:"Gambling Comission Officer", name:"Melinda Privchenka", DOB:"23/07/1982"})

//Marketing team
CREATE(MarketingRoles:Role{title:"Marketing Roles"})
CREATE(MarketingDoc:Documents{title:"Marketing Documents"})

CREATE(Marketing1:Staff{title:"Marketing Team", name:"Tessa Smithers", DOB:"12/12/1996"})
CREATE(Marketing2:Staff{title:"Marketing Team", name:"Carmel Caroll", DOB:"17/03/1994"})
CREATE(Marketing3:Staff{title:"Marketing Team", name:"Paul Bettany", DOB:"30/09/1992"})

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
  (GamblingCommission)-[:GAMBLING_COMM_ROLES]->(GamCommRoles),
  (GamblingCommission)-[:GAMBLING_COMM_DOCS]->(GamCommDoc),
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

//Website Mapping
CREATE(Website:Website{title:"Website"})
CREATE(Frontend:Website{title:"Front-end"})
CREATE(Backend:Website{title:"Back-end"})
CREATE(Administration:Website{title:"Administration"})
CREATE(StaffPages:Website{title:"Staff Pages"})
CREATE(SLogin:Website{title:"Staff Login"})
CREATE(ULogin:Website{title:"User Login"})
CREATE(Support:Website{title:"Contact Support"})
CREATE(GamesP:Website{title:"Games Page"})
CREATE(CasinoP:Website{title:"Casino Page"})
CREATE(BettingP:Website{title:"Betting Page"})
CREATE(Account:Website{title:"Account Page"})
CREATE(BetAdmin:Website{title:"Bet Admin"})
CREATE(PlayTech:Website{title:"Play-tech"})

//Website Relationships
CREATE
  (BET24)-[:WEBSITE]->(Website),
  (Website)-[:FRONT]->(Frontend),
  (Website)-[:BACK]->(Backend),
  (Frontend)-[:LOGIN]->(ULogin),
  (Backend)-[:LOGIN]->(SLogin),
  (ULogin)-[:ACCOUNT]->(Account),
  (ULogin)-[:SUPPORT]->(Support),
  (ULogin)-[:CASINO]->(CasinoP),
  (ULogin)-[:GAMING]->(GamesP),
  (ULogin)-[:BETTING]->(BettingP),
  (SLogin)-[:BET_ADMIN]->(BetAdmin),
  (SLogin)-[:PLAY_TECH]->(PlayTech),
  (SLogin)-[:ADMIN]->(Administration)

//Documents and responsibilities
CREATE(PersonalID:Documents{title:"Personal ID", purpose:"Identity documents needed for account verification"})
CREATE(Bank:Documents{title:"Banking Documents", purpose:"Supporting banking documents"})
CREATE(Handling:Documents{title:"Handling Times Reports", purpose:"Average contact handling line for support staff"})
CREATE(Rota:Documents{title:"Timetable Rotas", purpose:"To schedule and indicate when people are on shift"})
CREATE(Budget:Documents{title:"Budget Reports", purpose:"To indicate the monthly spending budget of the departments"})
CREATE(Agile:Documents{title:"Agile Documents", purpose:"To ensure good project and team naagement following the agile methodology"})
CREATE(NetDeposits:Documents{title:"Net Deposits", purpose:"To review and ensure money laundering is minimal"})
CREATE(Card:Documents{title:"Card Fraud", purpose:"Ensure fraud is not occuring on the cardholders card"})
CREATE(PromotionsR:Documents{title:"Promotions Ts and Cs", purpose:"Any new promotions are readily available for use of public and staff"})
CREATE(MarkCampaign:Documents{title:"Marketing Campaigns", purpose:"All marketing campaign ideas and development"})
CREATE(GameDev:Documents{title:"Game development", purpose:"Adequately develop and test game ideas"})
CREATE(SecReports:Documents{title:"Security Report", purpose:"Developed internal and external security reports and account security"})
CREATE(GamCommReport:Documents{title:"Gambling Commission Report", purpose:"Reports and outlined conditions of the gambling commission"})

//Document Relationship
CREATE
  (FraudDoc)-[:REPORTS]->(Card),
  (Management)-[:CONDUCTS]->(Handling),
  (Management)-[:PRODUCE]->(Rota),
  (Developer)-[:DEVELOPS]->(GameDev),
  (Tester)-[:TESTS]->(GameDev),
  (Management)-[:PRODUCE]->(Budget),
  (PromoDoc)-[:PRODUCE]->(PromotionsR),
  (MarketingDoc)-[:PRODUCE]->(MarkCampaign),
  (SecDoc)-[:PRODUCE]->(SecReports),
  (GamCommDoc)-[:ENFORCE]->(GamCommReport),
  (Management)-[:MANAGES]->(Agile),
  (FraudDoc)-[:OVERSEE]->(NetDeposits)

//Upper Management
CREATE(UpperManagement:Department{title:"Upper Management"})
CREATE(CEO:Staff{title:"Bet 24/7 CEO", name:"Gregory Hozen", DOB:"29/09/1976"})
CREATE(Board:Department{title:"Board of Directors"})
CREATE
  (Department)-[:MANAGEMENT]->(UpperManagement),
  (UpperManagement)-[:CEO]->(CEO),
  (UpperManagement)-[:BOARD]->(Board),
  (CEO)-[:OVERSEES]->(Department),
  (Board)-[:APPROVE]->(Budget),
  (UpperManagement)-[:MANAGES]->(Management),
  (UpperManagement)-[:REVIEW]->(SecReports),
  (UpperManagement)-[:REVIEW]->(MarkCampaign),
  (UpperManagement)-[:APPROVE]->(PromotionsR)

CREATE(Security:Security{title:"Security"})
CREATE(MitM:Security{title:"Man in the middle", description:"Man in the middle attacks are when someone on the network a takes an action on another user's behalf inheriting their privilege. This could a CSRF attack or sniffing packets on a network that is unencrypted. Either way the original connection is controlled and redirected by a malicious user on that network."})
CREATE(Insider:Security{title:"Malicious Insider", description:"A malicious insider is a internal employee who takes a malicious action to the infrastructure directly, this can range from embezzlement to damaging the infrastructure through direct destruction of property or services on a system."})
CREATE(Phishing:Security{title:"Phishing Scams", description:"A phishing scam is where random emails which a impersonating someone of internal or external source, such as an employee or a weekly bulletin. Normally they consist of a CSRF attack attempting to get hold of a user's session or credentials to disrupt a business."})
CREATE(DDOS:Security{title:"Dedicated Denial Of Service", description:"A DDOS attack is where a computer or a network of computers send messages to the server or systems to bring the server down for often extended periods of time, most are used as ransomware to get money to bring the server backup."})
CREATE(Malware:Security{title:"Malware", description:"Malware comes in different forms from rootkits which allow attackers to a variety of tools with keytracers and screen recorders or a virus such a worm which connections and spreads its malicious code once gaining access. Normally their through malicious downloads or a malicious URL from a phishing email or text."})
CREATE
  (Security)-[:RISK]->(MitM),
  (Security)-[:RISK]->(Insider),
  (Security)-[:RISK]->(Phishing),
  (Security)-[:RISK]->(DDOS),
  (Security)-[:RISK]->(Malware)