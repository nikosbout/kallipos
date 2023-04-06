#lang pollen
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="" xml:lang="">
<head>
  <meta charset="utf-8" />
  <meta name="generator" content="pandoc" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
  <title>Ο Προγραμματισμός της Διάδρασης</title>
  <style>
    html {
      color: #1a1a1a;
      background-color: #fdfdfd;
    }
    body {
      margin: 0 auto;
      max-width: 36em;
      padding-left: 50px;
      padding-right: 50px;
      padding-top: 50px;
      padding-bottom: 50px;
      hyphens: auto;
      overflow-wrap: break-word;
      text-rendering: optimizeLegibility;
      font-kerning: normal;
    }
    @media (max-width: 600px) {
      body {
        font-size: 0.9em;
        padding: 12px;
      }
      h1 {
        font-size: 1.8em;
      }
    }
    @media print {
      html {
        background-color: white;
      }
      body {
        background-color: transparent;
        color: black;
        font-size: 12pt;
      }
      p, h2, h3 {
        orphans: 3;
        widows: 3;
      }
      h2, h3, h4 {
        page-break-after: avoid;
      }
    }
    p {
      margin: 1em 0;
    }
    a {
      color: #1a1a1a;
    }
    a:visited {
      color: #1a1a1a;
    }
    img {
      max-width: 100%;
    }
    h1, h2, h3, h4, h5, h6 {
      margin-top: 1.4em;
    }
    h5, h6 {
      font-size: 1em;
      font-style: italic;
    }
    h6 {
      font-weight: normal;
    }
    ol, ul {
      padding-left: 1.7em;
      margin-top: 1em;
    }
    li > ol, li > ul {
      margin-top: 0;
    }
    blockquote {
      margin: 1em 0 1em 1.7em;
      padding-left: 1em;
      border-left: 2px solid #e6e6e6;
      color: #606060;
    }
    code {
      font-family: Menlo, Monaco, Consolas, 'Lucida Console', monospace;
      font-size: 85%;
      margin: 0;
      hyphens: manual;
    }
    pre {
      margin: 1em 0;
      overflow: auto;
    }
    pre code {
      padding: 0;
      overflow: visible;
      overflow-wrap: normal;
    }
    .sourceCode {
     background-color: transparent;
     overflow: visible;
    }
    hr {
      background-color: #1a1a1a;
      border: none;
      height: 1px;
      margin: 1em 0;
    }
    table {
      margin: 1em 0;
      border-collapse: collapse;
      width: 100%;
      overflow-x: auto;
      display: block;
      font-variant-numeric: lining-nums tabular-nums;
    }
    table caption {
      margin-bottom: 0.75em;
    }
    tbody {
      margin-top: 0.5em;
      border-top: 1px solid #1a1a1a;
      border-bottom: 1px solid #1a1a1a;
    }
    th {
      border-top: 1px solid #1a1a1a;
      padding: 0.25em 0.5em 0.25em 0.5em;
    }
    td {
      padding: 0.125em 0.5em 0.25em 0.5em;
    }
    header {
      margin-bottom: 4em;
      text-align: center;
    }
    #TOC li {
      list-style: none;
    }
    #TOC ul {
      padding-left: 1.3em;
    }
    #TOC > ul {
      padding-left: 0;
    }
    #TOC a:not(:hover) {
      text-decoration: none;
    }
    code{white-space: pre-wrap;}
    span.smallcaps{font-variant: small-caps;}
    div.columns{display: flex; gap: min(4vw, 1.5em);}
    div.column{flex: auto; overflow-x: auto;}
    div.hanging-indent{margin-left: 1.5em; text-indent: -1.5em;}
    ul.task-list{list-style: none;}
    ul.task-list li input[type="checkbox"] {
      width: 0.8em;
      margin: 0 0.8em 0.2em -1.6em;
      vertical-align: middle;
    }
    .display.math{display: block; text-align: center; margin: 0.5rem auto;}
  </style>
  <!--[if lt IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv-printshiv.min.js"></script>
  <![endif]-->
</head>
<body>
<header id="title-block-header">
<h1 class="title">Ο Προγραμματισμός της Διάδρασης</h1>
</header>
<h1 id="πρόλογος">Πρόλογος</h1>
<blockquote>
<p>Τα πράγματα που πρέπει να κάνεις τα μαθαίνεις κάνοντάς τα.
Αριστοτέλης</p>
</blockquote>
<p>Ο σκοπός αυτού του βιβλίου είναι να δώσει μια σύντομη εισαγωγή στα
συστήματα διάδρασης ανθρώπου και υπολογιστή και κυρίως να ενθαρρύνει ένα
κριτικό διάλογο αναφορικά με τις ατομικές και συλλογικές επιλογές που
έχουν διαμορφώσει τα σύγχρονα συστήματα. Η μελέτη των παλιότερων
συστημάτων έχει ιστορικό χαρακτήρα μόνο σε μια πρώτη επιφανειακή
ανάγνωση, γιατί ο βασικός σκοπός είναι να εντοπιστούν εκείνες οι
συνθήκες, οι δυνάμεις, και τα υλικά που θα επιτρέψουν την κατασκευή νέων
συστημάτων. Μέσα από την κριτική ανάλυση των παλιότερων συστήματων
προκύπτουν ερμηνείες για την μορφή τους. Επιπλέον, η μελέτη των
παλιότερων συστημάτων αποκαλύπτει τις διαχρονικές αξίες και τις
βέλτιστες πρακτικές που μπορούν να οδηγήσουν σε καλύτερα συστήματα
διάδρασης, με τρόπο συστηματικό και με τεκμηριωμένες παραδοχές.</p>
<p>Μια προσεκτική μελέτη των παραδοσιακών και των σύγχρονων συστημάτων
διάδρασης δείχνει πως δημιουργήθηκαν σε ένα συγκεκριμένο τεχνολογικό και
πολιτισμικό πλαίσιο και πως εξυπηρετούν συγκεκριμένα κίνητρα και
στόχους. Αυτή η διαπίστωση απελευθερώνει τον αναγνώστη, καθώς του
επιτρέπει να κατανοήσει όλα τα σύγχρονα συστήματα, απλά ως ένα
στιγμιότυπο μιας διαδρομής με πολλές εναλλακτικές, και όχι ως κάτι
αναπόφεκτο, ούτε καν ως αναγκαίο βήμα, για αυτά που θα μπορούσαν να
δημιουργηθούν. Ακόμη περισσότερο από μια κριτική ανάγνωση της
τεχνολογικής εξέλιξης, το κυρίαρχο αφήγημα που διατρέχει το σώμα του
κειμένου, αλλά και το συμπληρωματικό περιεχόμενο, είναι μια έμφαση σε
εκείνες τις διαχρονικές τεχνολογίες και τεχνικές που επιτρέπουν την
κατασκευή νέων εναλλακτικών συστημάτων διάδρασης για τις ανάγκες του
σήμερα αλλά και του αύριο.</p>
<p>Αυτό που παραμένει διαχρονικό δεν είναι τόσο κάποια δεδομένη γραφική
διεπαφή, όπως αυτή του κινητού ή επιτραπέζιου συστήματος, αλλά κυρίως
εκείνη η σύνθεση υλικών και δυνάμεων όπως, διαδραστικών αξιών, μεθόδων,
αρχετύπων, τεχνικών, και μοντέλων που δημιούργησαν εκείνες τις διεπαφές.
Με αυτόν τον τρόπο, ο αναγνώστης μαθαίνει κυρίως να σκέφτεται για τις
συνθήκες και για τον τρόπο που κατασκευάστηκαν τα υπάρχοντα διαδραστικά
συστήματα, έτσι ώστε να μπορέσει στην συνέχεια, αφού κρίνει και
ερμηνεύσει το παρελθόν, να συνθέσει τις δυνάμεις της σύγχρονης εποχής
για την κατασκευή μελλοντικών συστημάτων διάδρασης.</p>
<p>Οι παραπάνω παραδοχές επηρεάζουν το περιεχόμενο και την μορφή του
βιβλίου. Το περιεχόμενο φαίνεται σαν να γράφτηκε κάπου την δεκαετία του
2000, έτσι ώστε σε δέκα χρόνια από σήμερα να έχει την ίδια αξία, αφού η
κατανόηση μας για εκείνα τα συστήματα λίγο θα έχει αλλάξει στο μεταξύ.
Επιπλέον, δίνεται έμφαση στα κλασικά συστήματα διάδρασης γιατί με την
βοήθεια της χρονικής απόστασης που έχουμε μπορούμε να ξεχωρίσουμε
καθαρότερα τις ιδιότητες εκείνες που είναι διαχρονικές από εκείνες που
απλά εξυπηρετούσαν παλιά κίνητρα, ή ταίριαζαν στο οργανωσιακό πλαίσιο
μιας εποχής ή οργανισμού. Αντίστοιχα, και η μορφή του βιβλίου ακολουθεί
το περιεχόμενο του και συνοδεύεται από εικόνες συστημάτων που θεωρούνται
κλασικά, ανεξάρτητα από την εμπορική αποδοχή τους, αρκεί να περιέχουν
αξίες και ιδέες που τελικά συναντάμε διαχρονικά.</p>
<p>Συνοπτικά, σε αυτό το βιβλίο γίνεται μια σύνθεση γνώσεων με στόχο την
έμπνευση του αναγνωστή, ο οποίος θα αναζητήσει περισσότερα έξω από αυτό,
και γιατί όχι θα μπει σε ένα διάλογο με τον συγγραφέα, στο αποθετήριο
ανοικτού πηγαίου κειμένου του βιβλίου που υπάρχει για αυτόν τον σκοπό.
Με αυτόν τον τρόπο, τόσο η συγγραφή όσο και η ανάγνωση αυτού του
βιβλίου, γίνονται με μορφή κριτικού διαλόγου, όπως ακριβώς δηλαδή και το
πνεύμα που διατρέχει το βιβλίο απέναντι στις τεχνολογίες των συστημάτων
διάδρασης.</p>
<h1 id="εισαγωγή">Εισαγωγή</h1>
<blockquote>
<p>Η μάθηση δεν είναι το αποτέλεσμα της διδασκαλίας, αλλά το αποτέλεσμα
της δραστηριότητας του μαθητή. John Holt</p>
</blockquote>
<p>Η κατασκευή της διάδρασης είναι μια σχετικά νέα γνωστική περιοχή, η
οποία δημιουργήθηκε από τη μεγάλη αποδοχή που γνώρισαν τα συστήματα
διάδρασης ανθρώπου και υπολογιστή σε ένα ευρύτατο φάσμα εφαρμογών της
καθημερινότητας και της εργασίας. Είναι τόσες πολλές οι ψηφιακές ανάγκες
των ανθρώπων σε διαφορετικές πτυχές της ζωής τους (π.χ., ευζωία,
ψυχαγωγία, μάθηση, εμπόριο, εργασία, κτλ.) και ταυτόχρονα δημιουργούνται
συνέχεια τόσο νέες συσκευές όσο και νέες συνδέσεις μεταξύ τους, ώστε η
κατασκευή της διάδρασης αναδεικνύεται οργανικά σε πρωταγωνιστή στη
σχεδίαση και κατασκευή νέων ανθρώπινων και κοινωνικών δραστηριοτήτων. Το
βιβλίο αυτό βασίζεται στην άποψη ότι η κατασκευή της διάδρασης, εκτός
του ότι είναι κάτι περισσότερο από το άθροισμα των επιμέρους τμημάτων,
είναι κυρίως ένα νέο τεχνολογικό επίπεδο το οποίο έχει τη δυνατότητα να
επαναπροσδιορίσει με καλό ή κακό τρόπο όλες τις ανθρώπινες και
κοινωνικές δραστηριότητες.</p>
<p>Συνήθως, όταν έχουμε μια νέα γνωστική περιοχή οι επιστήμονες θα
προσπαθήσουν να την προσεγγίσουν μεθοδικά, σύμφωνα με τις τεχνικές που
έχουν δουλέψει σε παρόμοιες περιοχές στο παρελθόν. Για παράδειγμα, ο
προγραμματισμός αντιμετωπίζεται ως υποπερίπτωση της ευρύτερης περιοχής
των μηχανικών (π.χ., μηχανολόγοι μηχανικοί), αφού έχει να κάνει με την
κατασκευή και λειτουργία μιας μηχανής. Ταυτόχρονα, είναι λογικό η
διάδραση να αντιμετωπίζεται ως υποπερίπτωση της ευρύτερης περιοχής του
βιομηχανικού σχεδιασμού (όπως π.χ. η γραφιστική και η εργονομία). Στην
ειδική περίπτωση της κατασκευής της διάδρασης και με δεδομένο ότι
αναφερόμαστε σε μια σύνθετη περιοχή, διαφορετικού επιπέδου από τις
επιμέρους, δεν έχουμε την ευχέρεια να κάνουμε τις παραπάνω
απλουστεύσεις.</p>
<p>Οι συσκευές διάδρασης με τους υπολογιστές, και αντίστοιχα η κατασκευή
της διάδρασής τους, είναι έννοιες φευγαλέες τουλάχιστον για την περίοδο
από τη δεκαετία του 1970 μέχρι και τη δεκαετία του 2010, αφού η διάδραση
με τους υπολογιστές ξεκινάει από το τραπέζι και περνάει στα κινητά,
φορετά, και διάχυτα συστήματα. Tη δεκαετία του 1970, η τυπική μορφή του
προσωπικού υπολογιστή ήταν ο επιτραπέζιος υπολογιστής χωρίς γραφικό
περιβάλλον εργασίας, το οποίο υπήρξε αντικείμενο έρευνας στα εργαστήρια.
Τη δεκαετία του 1980, η γραφική επιφάνεια εργασίας έγινε εμπορικά
διαθέσιμη, ενώ παράλληλα, το μεγαλύτερο μέρος του λογισμικού είχε
περάσει από τη γραμμή εντολών στα μενού και στις φόρμες, οπότε το
πληκτρολόγιο παρέμεινε η πιο δημοφιλής συσκευή εισόδου. Τη δεκαετία του
1990, η γραφική επιφάνεια εργασίας και το ποντίκι έγιναν ο κυρίαρχος
τρόπος διάδρασης με τον προσωπικό υπολογιστή, οπότε η συσκευή εισόδου
ποντίκι και η έμμεση διάδραση με αντικείμενα στην οθόνη μέσω του δείκτη
καθόρισε τα πιο δημοφιλή στυλ διάδρασης. Στα τέλη της δεκαετίας του
2000, ο κινητός υπολογιστής με οθόνη αφής έφερε στο προσκήνιο τις
χειρονομίες και την άμεση διάδραση στην οθόνη, ενώ τη δεκαετία του 2010,
ο υπολογιστής διαχέεται πέρα από το γραφείο, τόσο στο περιβάλλον όσο και
στο ανθρώπινο σώμα, δημιουργώντας έτσι ένα οικοσύστημα συσκευών και
εφαρμογών για τον χρήστη. Αντίστοιχα, η κατασκευή της διάδρασης
εξελίσσεται έτσι ώστε τα βασικά αρχέτυπα και εργαλεία να διευκολύνουν
τον χειρισμό των νέων συσκευών του χρήστη, όπως είναι το πληκτρολόγιο, η
οθόνη, το ποντίκι, η οθόνη αφής, κτλ.</p>
<p>Παράλληλα και πάντα αλληλένδετα με την εξέλιξη του υλικού και της
φυσικής μορφής του υπολογιστή, έχουμε μια εξέλιξη του λογισμικού και του
στυλ διάδρασης με τον υπολογιστή, η οποία σχετίζεται περισσότερο με τις
εφαρμογές και τις διεργασίες του χρήστη. Οι πρώτες δημοφιλείς εφαρμογές
του προσωπικού υπολογιστή ήταν ο επεξεργαστής κειμένου και τα φύλλα
εργασίας, τα οποία αποτελούσαν το βασικό κίνητρο αγοράς κατά τις
δεκαετίες του 1970 και του 1980. Τη δεκαετία του 1990 είχαμε τη μεγάλη
υπόσχεση των εκπαιδευτικών και ψυχαγωγικών πολυμέσων, τα οποία τελικά
δεν έφτασαν στον τελικό χρήστη όπως αρχικά είχε σχεδιαστεί (μέσω της
καλωδιακής τηλεόρασης), αλλά περισσότερο μέσω του οπτικού δίσκου, των
κονσολών για βιντεο-παιχνίδια, και του διαδικτύου. Από το τέλος της
δεκαετίας του 2000, έχουμε την επικράτηση των κοινωνικών μέσων δικτύωσης
ως κύριαρχο στυλ διάδρασης με τον υπολογιστή. Πλέον, όλες οι εφαρμογές,
ανεξάρτητα από το αν έχουν στόχο την παραγωγικότητα, την εκπαίδευση, την
ψυχαγωγία, τις εμπορικές συναλλαγές ή την πληροφόρηση, βασίζονται ή
τουλάχιστον έχουν μια διάσταση κοινωνικού δικτύου. Αντίστοιχα, η
κατασκευή της διάδρασης εξελίσσεται, έτσι ώστε τα βασικά αρχέτυπα και
εργαλεία να διευκολύνουν τον χειρισμό των οντοτήτων του χρήστη, όπως
είναι τα τοπικά αρχεία, τα πολυμέσα, τα υπερμέσα, το κοινωνικό δίκτυο,
κτλ.</p>
<p>Η κατασκευή της διάδρασης ανθρώπου και υπολογιστή, όπως είδαμε
συνοπτικά παραπάνω, έχει παραμείνει για πολύ καιρό μια φευγαλέα περιοχή,
επειδή σε κάθε χρονική περίοδο έχουμε διαφορετικές τεχνολογικές μορφές
υπολογιστών (π.χ., επιτραπέζιος, κινητός, φορετός, διάχυτος) διεπαφών με
τους χρήστες (π.χ., γραμμή εντολών, γραφικό περιβάλλον, χειρονομίες,
φυσική γλώσσα) και εφαρμογών (π.χ., προσομοίωση, γραφείο, πλοήγηση,
φωτογραφία). Για παράδειγμα, ένας χρήστης υπολογιστών που έλαβε τη
βασική, δευτεροβάθμια, και τριτοβάθμια εκπαίδευση τη δεκαετία του 1970,
ή το πολύ μέχρι τα μισά της δεκαετίας του 1980, είναι πολύ πιθανό να
έχει μεγάλη εξοικείωση με τη γραμμή εντολών και τους επιτραπέζιους
υπολογιστές, αφού αυτή ήταν η βασική μορφή στα χρόνια της εκπαίδευσής
του. Αντίθετα, ένας χρήστης που έλαβε την εκπαίδευσή του μετά το 2000
και κατά τη δεκαετία του 2010, είναι πολύ πιθανό να μην έχει καθόλου
προσωπικό επιτραπέζιο υπολογιστή, αφού οι βασικές διεργασίες του χρήστη
αυτήν τη χρονική περίοδο (π.χ., αναζήτηση στον παγκόσμιο ιστό, κοινωνική
δικτύωση, ψηφιακό περιεχόμενο, κτλ.) μπορούν να γίνουν εξίσου καλά, αν
όχι καλύτερα, με έναν κινητό υπολογιστή με διεπαφή χειρονομίας, η οποία
δεν απαιτεί σχεδόν καμία ανάπτυξη νέων δεξιοτήτων. Η αποδοχή και η
επικράτηση της έννοιας της ευχρηστίας περισσότερο ως οικειότητα με τις
πρώτες εμπειρίες μας έχει αυξήσει μεν την προσβασιμότητα στην πληροφορία
αλλά ταυτόχρονα έχει μειώσει την διαφάνεια των τεχνολογιών διάδρασης
καθώς και τις δεξιότητες στην κατασκευή της διάδρασης.</p>
<p>Βλέπουμε, λοιπόν, ότι στην πράξη, τόσο ο υπολογιστικός όσο και ο
ψηφιακός αλφαβητισμός είναι έννοιες περισσότερο σχετικές με τη
δημογραφία και την ημερομηνία γέννησης, παρά με μια διαχρονική αξία. Για
παράδειγμα, ο όρος υπολογιστής για πολλές δεκαετίες πριν την δημιουργία
των πρώτων ηλεκτρονικών και ψηφιακών υπολογιστών αναφερόταν στον άνθρωπο
που έκανε μαθηματικούς υπολογισμούς για να φτιάξει τριγωνομετρικούς και
λογαριθμικούς πίνακες. Για αυτό τον λόγο, το περιεχόμενο του βιβλίου,
σκόπιμα αποφεύγει τις πιο νέες εξελίξεις και προϊόντα, έτσι ώστε να
είναι όσο γίνεται πιο διαχρονικό. Η έμφαση δίνεται σε παλαιότερα
συστήματα, όχι επειδή υπάρχει μια ρετρολαγνεία, αλλά επειδή υπάρχουν
διαχρονικές τάσεις, που είναι παρούσες και σε σύγχρονα προϊόντα και οι
οποίες ενδέχεται να επηρεάσουν τα μελλοντικά. Η μελέτη παλαιότερων
συστημάτων δεν έχει απλά ιστορικό χαρακτήρα, αλλά σκοπεύει να φωτίσει
εκείνα τα τεχνολογικά και ανθρωπιστικά μοτίβα που εμφανίζονται και σε
σύγχρονα συστήματα, και πολύ πιθανόν και σε μελλοντικά.</p>
<p>Εκτός από την έμφαση στα σύγχρονα και επίκαιρα συστήματα, τα
περισσότερα βιβλία σε θέματα τεχνολογίας προσπαθούν να χωρέσουν όσο
γίνεται περισσότερο περιέχομενο στο τυπικό μέγεθος ενός τυπωμένου ή
ηλεκτρονικού βιβλίου. Σε αυτό το βιβλίο, ο στόχος ήταν να καλύψουμε όσο
γίνεται περισσότερα θέματα σε όσο γίνεται μικρότερο χώρο, άρα και σε
λιγότερο χρόνο για τον αναγνώστη. Επιπλέον, το ύφος της γραφής παραμένει
προφορικό και σκόπιμα αποφεύγει το εγκυπλοπαιδικό, αφού όλες οι
πληροφορίες είναι πλέον διαθέσιμες σε ηλεκτρονικά μέσα, καθώς και στα
κλαδικά βιβλία αναφοράς του τομέα. Ακόμη, το βιβλίο συνοδεύεται από
πολλές εικόνες συσκευών και λογισμικού διάδρασης με τον χρήστη. Οι
εικόνες αυτές σκόπιμα παρουσιάζονται σε ζευγάρια με σχετικά εκτενείς
λεζάντες στην ίδια σελίδα, έτσι ώστε να παρέχουν μια παράλληλη διεπαφή
ανάγνωσης, η οποία είναι σίγουρα πολύ οικεία στην εποχή της εικόνας.
Ακόμη περισσότερες εικόνες και πρόσθετους τρόπους οργάνωσής τους θα βρει
ο αναγνώστης στην ιστοσελίδα του βιβλίου, όπου υπάρχουν εικόνες σε
χρονολόγια και σε διαφάνειες. Με αυτόν τον τρόπο, το βιβλίο γίνεται
περισσότερο προσβάσιμο για τον αναγνώστη, αλλά και συμπληρωματικό με
άλλες προσπάθειες.</p>
<p>Αυτό το βιβλίο απευθύνεται σε όσους εμπλέκονται με οποιονδήποτε ρόλο
στην σχεδιάση και κατασκευή συστημάτων διάδρασης ανθρώπου και
υπολογιστή. Επομένως, είναι χρήσιμο τόσο σε επαγγελματίες όσο και σε
φοιτητές μαθημάτων πληροφορικής, μηχανικής και σχεδίασης, που θέλουν να
αποκτήσουν μια εισαγωγή στην περιοχή ή θέλουν να τακτοποιήσουν σκόρπιες
γνώσεις. Επιπλέον, με δεδομένη την εξάπλωση των εργαλείων της
πληροφορικής σε πολλούς συγγενείς τεχνολογικούς και επιστημονικούς
κλάδους, αλλά και σε ακόμη περισσότερους κλάδους που ωφελούνται ή ακόμη
και επηρεάζονται από τις εφαρμογές της, το βιβλίο αυτό απευθύνεται σε
όλους αυτούς που συμμετέχουν σε μια ομάδα που καλείται να σχεδιάσει ή να
βελτιώσει ένα διαδραστικό σύστημα που εμπλέκεται σε μια ανθρώπινη
δραστηριότητα, ανεξάρτητα από τον ρόλο τους και ανεξάρτητα από τη βασική
τους δεξιότητα.</p>
<p>Υπάρχουν πολλά βιβλία και ακόμη περισσότερες ελεύθερες πηγές στο
δίκτυο τα οποία είναι πλούσια σε περιεχόμενο και εγκυκλοπαιδικές
γνώσεις, και στα οποία αξίζει να ανατρέξουμε κάθε φορά που θα έχουμε ένα
καλά ορισμένο ερώτημα και θέλουμε να ενημερωθούμε σε βάθος. Η ανάγνωση
ενός βιβλίου είναι μεν αναγκαία συνθήκη, αλλά όχι και ικανή για να
μεταδώσει πρακτικές γνώσεις, ακόμη και όταν ο αναγνώστης μπορεί να
θυμάται το περιεχόμενο. Για αυτόν τον σκοπό, το βιβλίο συνοδεύεται με
συμπληρωματικό πολυμεσικό περιεχόμενο και κυρίως με την δυνατότητα για
την προσθήκη περιεχομένου από τους αναγνώστες σε δικό τους αντίγραφο του
πηγαίου κώδικα. Η εποικοδομητική μελετή του συμπληρωματικού περιεχόμενου
δίνει την δυνατότητα στον αναγνώστη να μεταβεί σταδιακά στην
δραστηριότητα της σκέψης και της συγγραφής και μέσα από αυτήν την
προσπάθεια να κατανόησει καλύτερα όχι απλά το περιεχόμενο, αλλά και την
ευρύτερη γνωστική περιοχή. Η ουσιαστική όμως κατανόηση πρακτικών
ζητημάτων, όπως η κατασκευή της διάδρασης απαιτεί και την πρακτική
ενασχόληση με τα αντίστοιχα ζητήματα, το οποίο γίνεται με τις προτάσεις
για πρόσθετες δραστηριότητες κατασκευής διαδραστικών συστημάτων.</p>
<p>Στα επόμενα κεφάλαια αυτού του βιβλίου μελετάμε εκείνα τα θέματα που
ανεξάρτητα από τις τεχνολογικές εξελίξεις των τελευταίων δεκαετιών
παραμένουν διαχρονικά και επίκαιρα.</p>
<h1 id="ιστοσελίδα-και-συνοδευτικό-περιεχόμενο">Ιστοσελίδα και
συνοδευτικό περιεχόμενο</h1>
<blockquote>
<p>Συνέχεια προσπαθώ να κάνω αυτό που δεν μπορώ, έτσι ώστε κάποια στιγμή
να μπορώ να το κάνω. Πάμπλο Πικάσο</p>
</blockquote>
<p>Αν και φτάσατε στην τελευταία σελίδα, το βιβλίο αυτό δεν τελειώνει
εδώ, αλλά συνεχίζεται στην συνοδευτική ηλεκτρονική του έκδοση, η οποία
περιέχει πολυμεσικό και διαδραστικό περιεχόμενο, όπως είναι θεματικές
διαφάνειες και τα χρονολόγια. Επίσης, σκόπιμα το βιβλίο δεν περιέχει μια
σειρά από ενότητες όπως οι ασκήσεις και οι εργασίες, γιατί αυτές
βρίσκονται στην ιστοσελίδα, έτσι ώστε να μπορούν να ενημερώνονται
συνέχεια: <a href="https://pibook.epidro.me"
class="uri">https://pibook.epidro.me</a></p>
<h1 id="σύντομο-βιογραφικό">Σύντομο βιογραφικό</h1>
<h2 id="κωνσταντίνος-χωριανόπουλος">Κωνσταντίνος Χωριανόπουλος</h2>
<p>Ο συγγραφέας αυτού του βιβλίου έχει εργαστεί για περισσότερα από
είκοσι χρόνια στην έρευνα και ανάπτυξη συστημάτων διάδρασης μεταξύ
ανθρώπου και υπολογιστή. Στις αρχές της πρώτης δεκαετίας αυτού του
αιώνα, έκανε σημαντικές συνεισφορές για τον μετασχηματισμό της παθητικής
κατανάλωσης τηλεοπτικού περιεχομένου προς μια περισσότερο διαδραστική
κατεύθυνση. Μια δεκαετία αργότερα, διαπίστωσε, με έκπληξη, ότι η
πλειονότητα των χρηστών είχε στραφεί σε νέες ψηφιακές υπηρεσίες, οι
οποίες θεωρούν τα σύγχρονα επιτραπέζια και κινητά συστήματα σαν συσκευές
κατανάλωσης, παρόμοια με την παραδοσιακή τηλεόραση. Τα τελευταία δέκα
χρόνια, εργάζεται για την διάδοση συστημάτων και πρακτικών που
υποστηρίζουν περισσότερο υγιείς και βιώσιμες ανθρώπινες αξίες και
βασίζονται σε ανθρωπιστικές και διαφανείς τεχνολογίες.</p>
</body>
</html>