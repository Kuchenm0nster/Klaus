User.create! :email => "admin@FSMNI.THM.de", :password => "imbaimba123", :password_confirmation => "imbaimba123"

usem = Semester.create!(name: "Unbekant")
(5..15).each do |i|
  Semester.create!(name: "#{"%02d" % i} SoSe")
  Semester.create!(name: "#{"%02d" % i}/#{"%02d" % (i+1)} WiSe")
end
punbekant = Professor.create!(first_name: 'Unbekant', last_name: 'Unbekant')
geisse = Professor.create!(first_name: 'Hellwig', last_name: 'Geisse')
wuest = Professor.create!(first_name: 'Klaus', last_name: 'Wuest')
ulbrich = Professor.create!(first_name: 'Norman', last_name: 'Ulbrich')
dominik = Professor.create!(first_name: 'Andreas', last_name: 'Dominik')
fmueller = Professor.create!(first_name: 'Fabian', last_name: 'Müller')
christidis = Professor.create!(first_name: 'Aris', last_name: 'Christidis')
dworschak = Professor.create!(first_name: 'Alexander', last_name: 'Dworschak')
franzen = Professor.create!(first_name: 'Berthold', last_name: 'Franzen')
eichner = Professor.create!(first_name: 'Lutz', last_name: 'Eichner')
just = Professor.create!(first_name: 'Bettina', last_name: 'Just')
jäger = Professor.create!(first_name: 'Michael', last_name: 'Jäger')
kaufmann = Professor.create!(first_name: 'Achim', last_name: 'Kaufmann')
kneisel = Professor.create!(first_name: 'Peter', last_name: 'Kneisel')
letschert = Professor.create!(first_name: 'Thomas Karl', last_name: 'Letschert')
löffler = Professor.create!(first_name: 'Peter', last_name: 'Löffler')
metz = Professor.create!(first_name: 'Hans-Rudolf', last_name: 'Metz')
bmüller = Professor.create!(first_name: 'Bernd', last_name: 'Müller')
kqc = Professor.create!(first_name: 'Klaus', last_name: 'Quibeldey-Cirkel ')
renz = Professor.create!(first_name: 'Burkhardt', last_name: 'Renz')
schmitt = Professor.create!(first_name: 'Wolfgang', last_name: 'Schmitt')
martin = Professor.create!(first_name: 'Wolfgang', last_name: 'Martin')
oop_team = Professor.create!(first_name: 'Team', last_name: 'OOP')
henrich = Professor.create!(first_name: 'Wolfgang', last_name: 'Henrich')

dm = Lesson.create!(name: 'Diskrete Mathematik',short_name:  'DM')
gdi = Lesson.create!(name: 'Grundlagen der Informatik',short_name:  'GDI')
ntg = Lesson.create!(name: 'Naturwissenschaftliche und technische Grundlagen',short_name:  'NTG')
oop = Lesson.create!(name: 'Objektorientierte Programmierung',short_name:  'OOP')
rnua = Lesson.create!(name: 'Rechnernetze und ihre Anwendung',short_name:  'RnuA')
ad = Lesson.create!(name: 'Algorithmen und Datenstrukturen',short_name:  'AD')
bwl = Lesson.create!(name: 'DV-orientierte Betriebswirtschaftslehre',short_name:  'DV-BWL')
ibs = Lesson.create!(name: 'Internetbasierte Systeme',short_name:  'IBS')
la = Lesson.create!(name: 'Lineare Algebra',short_name:  'LA')
pis = Lesson.create!(name: 'Programmierung interaktiver Systeme',short_name:  'PIS')
recht = Lesson.create!(name: 'Recht für Informatiker',short_name:  'Recht')
cb = Lesson.create!(name: 'Compilerbau',short_name:  'CB')
dbs = Lesson.create!(name: 'Datenbanksysteme',short_name:  'DBS')
ksp = Lesson.create!(name: 'Konzepte systemnaher Programmierung',short_name:  'KSP')
swt = Lesson.create!(name: 'Softwaretechnik',short_name:  'SWT')
stochastik = Lesson.create!(name: 'Stochastik')
bs = Lesson.create!(name: 'Betriebssysteme',short_name:  'BS')
mpt = Lesson.create!(name: 'Mikroprozessortechnik',short_name:  'MPT')
ospw = Lesson.create!(name: 'Open-Source-Programmierwerkzeuge',short_name:  'OSPW')
cg = Lesson.create!(name: 'Computer Grafiken',short_name:  'CG')
npp = Lesson.create!(name: 'Nichtprozedurale Programmierung',short_name:  'NPP')
fp = Lesson.create!(name: 'Funktionale Programmierung',short_name:  'FP')
nvp = Lesson.create!(name: 'Nebenläufige und verteilte Programme',short_name:  'NVP')
c = Lesson.create!(name: 'C#',short_name:  'C#')
kuf = Lesson.create!(name: 'Komponenten & Frameworks', short_name:  'KuF')

k = DocType.create!(name: 'Klausur')
kl = DocType.create!(name: 'Klausur + Lösung')
m = DocType.create!(name: 'Mitschrift')
ü = DocType.create!(name: 'Übung')
s = DocType.create!(name: 'Sonstiges')

path = '/home/murao/Documents/altklausuren/fin'

Document.create!(
  semester: Semester.find_by(name: '07/08 WiSe'),
  professor: christidis, lesson: cg, doc_type: k,
  file: File.open("#{path}/A. Christidis - CG - S0708 - Teile.PDF"))
Document.create!(
  semester: Semester.find_by(name: '07/08 WiSe'),
  professor: punbekant, lesson: bwl, doc_type: k,
  file: File.open("#{path}/? - DV-orientierte Betriebswirtschaft - WiSe0708.PDF"))
Document.create!(
  semester: Semester.find_by(name: '13 SoSe'),
  professor: geisse, lesson: bs, doc_type: k,
  file: File.open("#{path}/H. Geisse - Betriebssysteme - SoSe13.PDF"))
Document.create!(
  semester: Semester.find_by(name: '13/14 WiSe'),
  professor: geisse, lesson: bs, doc_type: k,
  file: File.open("#{path}/H. Geisse - Betriebssysteme - WiSe1314.PDF"))
Document.create!(
  semester: Semester.find_by(name: '06/07 WiSe'),
  professor: geisse, lesson: gdi, doc_type: k,
  file: File.open("#{path}/H. Geisse - Grundlagen der Informatik - WiSe0607.PDF"))
Document.create!(
  semester: Semester.find_by(name: '07 SoSe'),
  professor: geisse, lesson: npp, doc_type: k,
  file: File.open("#{path}/H . Geisse - Nichtprozedurale Programmierung - SoSe07.PDF"))
Document.create!(
  semester: Semester.find_by(name: '07 SoSe'),
  professor: metz, lesson: la, doc_type: k,
  file: File.open("#{path}/H.-R. Metz - Lineare Algebra - SoSe07.PDF"))
Document.create!(
  semester: Semester.find_by(name: '07/08 WiSe'),
  professor: wuest, lesson: mpt, doc_type: k,
  file: File.open("#{path}/K. Wuest - Mikroprozessortechnik - WiSe0708.PDF"))
Document.create!(
  semester: Semester.find_by(name: '11/12 WiSe'),
  professor: letschert, lesson: oop, doc_type: k,
  file: File.open("#{path}/Letschert - OOP - WiSe1112.PDF"))
Document.create!(
  semester: Semester.find_by(name: '12/13 WiSe'),
  professor: ulbrich, lesson: fp, doc_type: k,
  file: File.open("#{path}/N. Ulbrich - Funktionale Programmierung - WiSe1213.PDF"))
Document.create!(
  semester: Semester.find_by(name: '09 SoSe'),
  professor: ulbrich, lesson: ospw, doc_type: k,
  file: File.open("#{path}/N. Ulbrich - Open-Source-Programmierwerkzeuge - SoSe09.PDF"))
Document.create!(
  semester: Semester.find_by(name: '10 SoSe'),
  professor: ulbrich, lesson: ospw, doc_type: k,
  file: File.open("#{path}/N. Ulbrich - Open-Source-Programmierwerkzeuge - SoSe10.PDF"))
Document.create!(
  semester: Semester.find_by(name: '12 SoSe'),
  professor: ulbrich, lesson: ospw, doc_type: k,
  file: File.open("#{path}/N. Ulbrich - Open-Source-Programmierwerkzeuge - SoSe12.PDF"))
Document.create!(
  semester: usem,
  professor: punbekant, lesson: oop, doc_type: s,
  file: File.open("#{path}/OOP - allgemeine Fragen&diverses.PDF"))
Document.create!(
  semester: Semester.find_by(name: '13 SoSe'),
  professor: oop_team, lesson: oop, doc_type: k,
  file: File.open("#{path}/OOP_Team - OOP - SoSe13.PDF"))
Document.create!(
  semester: usem,
  professor: punbekant, lesson: oop, doc_type: ü,
  file: File.open("#{path}/OOP-Uebungen.PDF"))
Document.create!(
  semester: Semester.find_by(name: '07/08 WiSe'),
  professor: letschert, lesson: nvp, doc_type: k,
  file: File.open("#{path}/T. Letschert - NVP - WiSe0708.PDF"))
Document.create!(
  semester: Semester.find_by(name: '06/07 WiSe'),
  professor: henrich, lesson: c, doc_type: k,
  file: File.open("#{path}/W. Henrich - C# - WiSe0607.PDF"))
Document.create!(
  semester: Semester.find_by(name: '07 SoSe'),
  professor: henrich, lesson: kuf, doc_type: k,
  file: File.open("#{path}/W. Henrich - KuF - SoSe07.PDF"))
Document.create!(
  semester: Semester.find_by(name: '07/08 WiSe'),
  professor: henrich, lesson: kuf, doc_type: k,
  file: File.open("#{path}/W. Henrich - KuF - WiSe0708.PDF"))