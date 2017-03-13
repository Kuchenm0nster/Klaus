User.create! :email => "admin2@FSMNI.THM.de", :password => "imbaimba123", :password_confirmation => "imbaimba123"

usem = Semester.create!(name: "Unbekant")
(0..20).each do |i|
  Semester.create!(name: "#{"%02d" % i}SoSe")
  Semester.create!(name: "#{"%02d" % i}#{"%02d" % (i+1)}WiSe")
end
punbekant = Professor.create!(first_name: 'Unbekant', last_name: 'Unbekant')
HellwigGeisse = Professor.create!(first_name: 'Hellwig', last_name: 'Geisse')
KlausWuest = Professor.create!(first_name: 'Klaus', last_name: 'Wuest')
NormanUlbrich = Professor.create!(first_name: 'Norman', last_name: 'Ulbrich')
AndreasDominik = Professor.create!(first_name: 'Andreas', last_name: 'Dominik')
ArisChristidis = Professor.create!(first_name: 'Aris', last_name: 'Christidis')
AlexanderDworschak = Professor.create!(first_name: 'Alexander', last_name: 'Dworschak')
BertholdFranzen = Professor.create!(first_name: 'Berthold', last_name: 'Franzen')
LutzEichner = Professor.create!(first_name: 'Lutz', last_name: 'Eichner')
BettinaJust = Professor.create!(first_name: 'Bettina', last_name: 'Just')
MichaelJäger = Professor.create!(first_name: 'Michael', last_name: 'Jäger')
AchimKaufmann = Professor.create!(first_name: 'Achim', last_name: 'Kaufmann')
PeterKneisel = Professor.create!(first_name: 'Peter', last_name: 'Kneisel')
ThomasKarlLetschert = Professor.create!(first_name: 'Thomas Karl', last_name: 'Letschert')
PeterLöffler = Professor.create!(first_name: 'Peter', last_name: 'Löffler')
HansRudolfMetz = Professor.create!(first_name: 'Hans Rudolf', last_name: 'Metz')
BerndMüller = Professor.create!(first_name: 'Bernd', last_name: 'Müller')
KlausQuibeldeyCirkel = Professor.create!(first_name: 'Klaus', last_name: 'Quibeldey Cirkel ')
BurkhardtRenz = Professor.create!(first_name: 'Burkhardt', last_name: 'Renz')
WolfgangSchmitt = Professor.create!(first_name: 'Wolfgang', last_name: 'Schmitt')
WolfgangMartin = Professor.create!(first_name: 'Wolfgang', last_name: 'Martin')
WolfgangHenrich = Professor.create!(first_name: 'Wolfgang', last_name: 'Henrich')
ChristianWenzelBenner = Professor.create!(first_name: 'Christian', last_name: 'Wenzel Benner')
MichaelaPeschk = Professor.create!(first_name: 'Michaele', last_name: 'Peschk')
ReinerBurger = Professor.create!(first_name: 'Reiner', last_name: 'Burger')
FlorianvonZabiensky = Professor.create!(first_name: 'Florian', last_name: 'von Zabiensky')
MichaelMenzel = Professor.create!(first_name: 'Michael', last_name: 'Menzel')

DiskreteMathematik = Lesson.create!(name: 'Diskrete Mathematik',short_name:  'DM')
GrundlagenderInformatik = Lesson.create!(name: 'Grundlagen der Informatik',short_name:  'GDI')
NaturwissenschaftlicheundtechnischeGrundlagen = Lesson.create!(name: 'Naturwissenschaftliche und technische Grundlagen',short_name:  'NTG')
ObjektorientierteProgrammierung = Lesson.create!(name: 'Objektorientierte Programmierung',short_name:  'OOP')
RechnernetzeundihreAnwendung = Lesson.create!(name: 'Rechnernetze und ihre Anwendung',short_name:  'RnuA')
AlgorithmenundDatenstrukturen = Lesson.create!(name: 'Algorithmen und Datenstrukturen',short_name:  'AD')
bwl = Lesson.create!(name: 'DV-orientierte Betriebswirtschaftslehre',short_name:  'DV-BWL')
InternetbasierteSysteme = Lesson.create!(name: 'Internetbasierte Systeme',short_name:  'IBS')
LineareAlgebra = Lesson.create!(name: 'Lineare Algebra',short_name:  'LA')
ProgrammierunginteraktiverSysteme = Lesson.create!(name: 'Programmierung interaktiver Systeme',short_name:  'PIS')
RechtfürInformatiker = Lesson.create!(name: 'Recht für Informatiker',short_name:  'Recht')
Compilerbau = Lesson.create!(name: 'Compilerbau',short_name:  'CB')
Datenbanksysteme = Lesson.create!(name: 'Datenbanksysteme',short_name:  'DBS')
KonzeptesystemnaherProgrammierung = Lesson.create!(name: 'Konzepte systemnaher Programmierung',short_name:  'KSP')
Softwaretechnik = Lesson.create!(name: 'Softwaretechnik',short_name:  'SWT')
Stochastik = Lesson.create!(name: 'Stochastik')
Betriebssysteme = Lesson.create!(name: 'Betriebssysteme',short_name:  'BS')
Mikroprozessortechnik = Lesson.create!(name: 'Mikroprozessortechnik',short_name:  'MPT')
OpenSourceProgrammierwerkzeuge = Lesson.create!(name: 'Open Source Programmierwerkzeuge',short_name:  'OSPW')
AnalysisundnumerischeMethoden = Lesson.create!(name: 'Analysis und numerische Methoden', short_name: 'ANM')
Codequalität = Lesson.create!(name: 'Codequalität', short_name: 'CQ')
Projektmanagment = Lesson.create!(name: 'Projektmanagment', short_name: 'PM')
SichereProgrammierung = Lesson.create!(name: 'Sichere Programmierung', short_name: 'SP')
Skriptsprachen = Lesson.create!(name: 'Skriptsprachen', short_name: 'SSP')
SystemsicherheitundDatenschutz = Lesson.create!(name: 'SystemsicherheitundDatenschutz', short_name: 'SSDS')
TechnischesEnglisch = Lesson.create!(name: 'Technisches Englisch', short_name: 'TE')

k = DocType.create!(name: 'Klausur')
kl = DocType.create!(name: 'Klausur + Lösung')
m = DocType.create!(name: 'Mitschrift')
ü = DocType.create!(name: 'Übung')
s = DocType.create!(name: 'Sonstiges')

path = '/home/kuchen/Klaus/document/'

Dir.foreach('/home/kuchen/Klaus/document') do |item|
  next if item == '.' or item == '..'
  i=item.split('_')
  Document.create!(
    lesson: i[0].constantize,
    professor: i[1].constantize,
    semester: Semester.find_by(name: i[2]),
    doc_type: k,
    file: File.open("#{path}#{item}"))
end
