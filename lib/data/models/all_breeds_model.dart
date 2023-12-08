class AllBreedsModel {
  Message? message;
  Map<String,dynamic>? mapMessage;
  String? status;

  AllBreedsModel({this.message, this.status});

  AllBreedsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'] != null ? Message.fromJson(json['message']) : null;
    mapMessage = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message;
    }
    data['status'] = status;
    return data;
  }
}

class Message {
  List<String>? affenpinscher;
  List<String>? african;
  List<String>? airedale;
  List<String>? akita;
  List<String>? appenzeller;
  List<String>? australian;
  List<String>? bakharwal;
  List<String>? basenji;
  List<String>? beagle;
  List<String>? bluetick;
  List<String>? borzoi;
  List<String>? bouvier;
  List<String>? boxer;
  List<String>? brabancon;
  List<String>? briard;
  List<String>? buhund;
  List<String>? bulldog;
  List<String>? bullterrier;
  List<String>? cattledog;
  List<String>? cavapoo;
  List<String>? chihuahua;
  List<String>? chippiparai;
  List<String>? chow;
  List<String>? clumber;
  List<String>? cockapoo;
  List<String>? collie;
  List<String>? coonhound;
  List<String>? corgi;
  List<String>? cotondetulear;
  List<String>? dachshund;
  List<String>? dalmatian;
  List<String>? dane;
  List<String>? deerhound;
  List<String>? dhole;
  List<String>? dingo;
  List<String>? doberman;
  List<String>? elkhound;
  List<String>? entlebucher;
  List<String>? eskimo;
  List<String>? finnish;
  List<String>? frise;
  List<String>? gaddi;
  List<String>? germanshepherd;
  List<String>? greyhound;
  List<String>? groenendael;
  List<String>? havanese;
  List<String>? hound;
  List<String>? husky;
  List<String>? keeshond;
  List<String>? kelpie;
  List<String>? kombai;
  List<String>? komondor;
  List<String>? kuvasz;
  List<String>? labradoodle;
  List<String>? labrador;
  List<String>? leonberg;
  List<String>? lhasa;
  List<String>? malamute;
  List<String>? malinois;
  List<String>? maltese;
  List<String>? mastiff;
  List<String>? mexicanhairless;
  List<String>? mix;
  List<String>? mountain;
  List<String>? mudhol;
  List<String>? newfoundland;
  List<String>? otterhound;
  List<String>? ovcharka;
  List<String>? papillon;
  List<String>? pariah;
  List<String>? pekinese;
  List<String>? pembroke;
  List<String>? pinscher;
  List<String>? pitbull;
  List<String>? pointer;
  List<String>? pomeranian;
  List<String>? poodle;
  List<String>? pug;
  List<String>? puggle;
  List<String>? pyrenees;
  List<String>? rajapalayam;
  List<String>? redbone;
  List<String>? retriever;
  List<String>? ridgeback;
  List<String>? rottweiler;
  List<String>? saluki;
  List<String>? samoyed;
  List<String>? schipperke;
  List<String>? schnauzer;
  List<String>? segugio;
  List<String>? setter;
  List<String>? sharpei;
  List<String>? sheepdog;
  List<String>? shiba;
  List<String>? shihtzu;
  List<String>? spaniel;
  List<String>? spitz;
  List<String>? springer;
  List<String>? stbernard;
  List<String>? terrier;
  List<String>? tervuren;
  List<String>? vizsla;
  List<String>? waterdog;
  List<String>? weimaraner;
  List<String>? whippet;
  List<String>? wolfhound;

  Message(
      {this.affenpinscher,
        this.african,
        this.airedale,
        this.akita,
        this.appenzeller,
        this.australian,
        this.bakharwal,
        this.basenji,
        this.beagle,
        this.bluetick,
        this.borzoi,
        this.bouvier,
        this.boxer,
        this.brabancon,
        this.briard,
        this.buhund,
        this.bulldog,
        this.bullterrier,
        this.cattledog,
        this.cavapoo,
        this.chihuahua,
        this.chippiparai,
        this.chow,
        this.clumber,
        this.cockapoo,
        this.collie,
        this.coonhound,
        this.corgi,
        this.cotondetulear,
        this.dachshund,
        this.dalmatian,
        this.dane,
        this.deerhound,
        this.dhole,
        this.dingo,
        this.doberman,
        this.elkhound,
        this.entlebucher,
        this.eskimo,
        this.finnish,
        this.frise,
        this.gaddi,
        this.germanshepherd,
        this.greyhound,
        this.groenendael,
        this.havanese,
        this.hound,
        this.husky,
        this.keeshond,
        this.kelpie,
        this.kombai,
        this.komondor,
        this.kuvasz,
        this.labradoodle,
        this.labrador,
        this.leonberg,
        this.lhasa,
        this.malamute,
        this.malinois,
        this.maltese,
        this.mastiff,
        this.mexicanhairless,
        this.mix,
        this.mountain,
        this.mudhol,
        this.newfoundland,
        this.otterhound,
        this.ovcharka,
        this.papillon,
        this.pariah,
        this.pekinese,
        this.pembroke,
        this.pinscher,
        this.pitbull,
        this.pointer,
        this.pomeranian,
        this.poodle,
        this.pug,
        this.puggle,
        this.pyrenees,
        this.rajapalayam,
        this.redbone,
        this.retriever,
        this.ridgeback,
        this.rottweiler,
        this.saluki,
        this.samoyed,
        this.schipperke,
        this.schnauzer,
        this.segugio,
        this.setter,
        this.sharpei,
        this.sheepdog,
        this.shiba,
        this.shihtzu,
        this.spaniel,
        this.spitz,
        this.springer,
        this.stbernard,
        this.terrier,
        this.tervuren,
        this.vizsla,
        this.waterdog,
        this.weimaraner,
        this.whippet,
        this.wolfhound});

  Message.fromJson(Map<String, dynamic> json) {

    if (json['affenpinscher'] != null) {
      affenpinscher = <String>[];
      json['affenpinscher'].forEach((v) {
        affenpinscher!.add(v);
      });
    }
    if (json['african'] != null) {
      african = <String>[];
      json['african'].forEach((v) {
        african!.add(v);
      });
    }
    if (json['airedale'] != null) {
      airedale = <String>[];
      json['airedale'].forEach((v) {
        airedale!.add(v);
      });
    }
    if (json['akita'] != null) {
      akita = <String>[];
      json['akita'].forEach((v) {
        akita!.add(v);
      });
    }
    if (json['appenzeller'] != null) {
      appenzeller = <String>[];
      json['appenzeller'].forEach((v) {
        appenzeller!.add(v);
      });
    }
    australian = json['australian'].cast<String>();
    bakharwal = json['bakharwal'].cast<String>();
    if (json['basenji'] != null) {
      basenji = <String>[];
      json['basenji'].forEach((v) {
        basenji!.add(v);
      });
    }
    if (json['beagle'] != null) {
      beagle = <String>[];
      json['beagle'].forEach((v) {
        beagle!.add(v);
      });
    }
    if (json['bluetick'] != null) {
      bluetick = <String>[];
      json['bluetick'].forEach((v) {
        bluetick!.add(v);
      });
    }
    if (json['borzoi'] != null) {
      borzoi = <String>[];
      json['borzoi'].forEach((v) {
        borzoi!.add(v);
      });
    }
    if (json['bouvier'] != null) {
      bouvier = <String>[];
      json['bouvier'].forEach((v) {
        bouvier!.add(v);
      });
    }
    if (json['boxer'] != null) {
      boxer = <String>[];
      json['boxer'].forEach((v) {
        boxer!.add(v);
      });
    }
    if (json['brabancon'] != null) {
      brabancon = <String>[];
      json['brabancon'].forEach((v) {
        brabancon!.add(v);
      });
    }
    if (json['briard'] != null) {
      briard = <String>[];
      json['briard'].forEach((v) {
        briard!.add(v);
      });
    }
    buhund = json['buhund'].cast<String>();
    bulldog = json['bulldog'].cast<String>();
    bullterrier = json['bullterrier'].cast<String>();
    cattledog = json['cattledog'].cast<String>();
    if (json['cavapoo'] != null) {
      cavapoo = <String>[];
      json['cavapoo'].forEach((v) {
        cavapoo!.add(v);
      });
    }
    if (json['chihuahua'] != null) {
      chihuahua = <String>[];
      json['chihuahua'].forEach((v) {
        chihuahua!.add(v);
      });
    }
    chippiparai = json['chippiparai'].cast<String>();
    if (json['chow'] != null) {
      chow = <String>[];
      json['chow'].forEach((v) {
        chow!.add(v);
      });
    }
    if (json['clumber'] != null) {
      clumber = <String>[];
      json['clumber'].forEach((v) {
        clumber!.add(v);
      });
    }
    if (json['cockapoo'] != null) {
      cockapoo = <String>[];
      json['cockapoo'].forEach((v) {
        cockapoo!.add(v);
      });
    }
    collie = json['collie'].cast<String>();
    if (json['coonhound'] != null) {
      coonhound = <String>[];
      json['coonhound'].forEach((v) {
        coonhound!.add(v);
      });
    }
    corgi = json['corgi'].cast<String>();
    if (json['cotondetulear'] != null) {
      cotondetulear = <String>[];
      json['cotondetulear'].forEach((v) {
        cotondetulear!.add(v);
      });
    }
    if (json['dachshund'] != null) {
      dachshund = <String>[];
      json['dachshund'].forEach((v) {
        dachshund!.add(v);
      });
    }
    if (json['dalmatian'] != null) {
      dalmatian = <String>[];
      json['dalmatian'].forEach((v) {
        dalmatian!.add(v);
      });
    }
    dane = json['dane'].cast<String>();
    deerhound = json['deerhound'].cast<String>();
    if (json['dhole'] != null) {
      dhole = <String>[];
      json['dhole'].forEach((v) {
        dhole!.add(v);
      });
    }
    if (json['dingo'] != null) {
      dingo = <String>[];
      json['dingo'].forEach((v) {
        dingo!.add(v);
      });
    }
    if (json['doberman'] != null) {
      doberman = <String>[];
      json['doberman'].forEach((v) {
        doberman!.add(v);
      });
    }
    elkhound = json['elkhound'].cast<String>();
    if (json['entlebucher'] != null) {
      entlebucher = <String>[];
      json['entlebucher'].forEach((v) {
        entlebucher!.add(v);
      });
    }
    if (json['eskimo'] != null) {
      eskimo = <String>[];
      json['eskimo'].forEach((v) {
        eskimo!.add(v);
      });
    }
    finnish = json['finnish'].cast<String>();
    frise = json['frise'].cast<String>();
    gaddi = json['gaddi'].cast<String>();
    if (json['germanshepherd'] != null) {
      germanshepherd = <String>[];
      json['germanshepherd'].forEach((v) {
        germanshepherd!.add(v);
      });
    }
    greyhound = json['greyhound'].cast<String>();
    if (json['groenendael'] != null) {
      groenendael = <String>[];
      json['groenendael'].forEach((v) {
        groenendael!.add(v);
      });
    }
    if (json['havanese'] != null) {
      havanese = <String>[];
      json['havanese'].forEach((v) {
        havanese!.add(v);
      });
    }
    hound = json['hound'].cast<String>();
    if (json['husky'] != null) {
      husky = <String>[];
      json['husky'].forEach((v) {
        husky!.add(v);
      });
    }
    if (json['keeshond'] != null) {
      keeshond = <String>[];
      json['keeshond'].forEach((v) {
        keeshond!.add(v);
      });
    }
    if (json['kelpie'] != null) {
      kelpie = <String>[];
      json['kelpie'].forEach((v) {
        kelpie!.add(v);
      });
    }
    if (json['kombai'] != null) {
      kombai = <String>[];
      json['kombai'].forEach((v) {
        kombai!.add(v);
      });
    }
    if (json['komondor'] != null) {
      komondor = <String>[];
      json['komondor'].forEach((v) {
        komondor!.add(v);
      });
    }
    if (json['kuvasz'] != null) {
      kuvasz = <String>[];
      json['kuvasz'].forEach((v) {
        kuvasz!.add(v);
      });
    }
    if (json['labradoodle'] != null) {
      labradoodle = <String>[];
      json['labradoodle'].forEach((v) {
        labradoodle!.add(v);
      });
    }
    if (json['labrador'] != null) {
      labrador = <String>[];
      json['labrador'].forEach((v) {
        labrador!.add(v);
      });
    }
    if (json['leonberg'] != null) {
      leonberg = <String>[];
      json['leonberg'].forEach((v) {
        leonberg!.add(v);
      });
    }
    if (json['lhasa'] != null) {
      lhasa = <String>[];
      json['lhasa'].forEach((v) {
        lhasa!.add(v);
      });
    }
    if (json['malamute'] != null) {
      malamute = <String>[];
      json['malamute'].forEach((v) {
        malamute!.add(v);
      });
    }
    if (json['malinois'] != String) {
      malinois = <String>[];
      json['malinois'].forEach((v) {
        malinois!.add(v);
      });
    }
    if (json['maltese'] != null) {
      maltese = <String>[];
      json['maltese'].forEach((v) {
        maltese!.add(v);
      });
    }
    mastiff = json['mastiff'].cast<String>();
    if (json['mexicanhairless'] != null) {
      mexicanhairless = <String>[];
      json['mexicanhairless'].forEach((v) {
        mexicanhairless!.add(v);
      });
    }
    if (json['mix'] != null) {
      mix = <String>[];
      json['mix'].forEach((v) {
        mix!.add(v);
      });
    }
    mountain = json['mountain'].cast<String>();
    mudhol = json['mudhol'].cast<String>();
    if (json['newfoundland'] != null) {
      newfoundland = <String>[];
      json['newfoundland'].forEach((v) {
        newfoundland!.add(v);
      });
    }
    if (json['otterhound'] != null) {
      otterhound = <String>[];
      json['otterhound'].forEach((v) {
        otterhound!.add(v);
      });
    }
    ovcharka = json['ovcharka'].cast<String>();
    if (json['papillon'] != null) {
      papillon = <String>[];
      json['papillon'].forEach((v) {
        papillon!.add(v);
      });
    }
    pariah = json['pariah'].cast<String>();
    if (json['pekinese'] != null) {
      pekinese = <String>[];
      json['pekinese'].forEach((v) {
        pekinese!.add(v);
      });
    }
    if (json['pembroke'] != null) {
      pembroke = <String>[];
      json['pembroke'].forEach((v) {
        pembroke!.add(v);
      });
    }
    pinscher = json['pinscher'].cast<String>();
    if (json['pitbull'] != null) {
      pitbull = <String>[];
      json['pitbull'].forEach((v) {
        pitbull!.add(v);
      });
    }
    pointer = json['pointer'].cast<String>();
    if (json['pomeranian'] != null) {
      pomeranian = <String>[];
      json['pomeranian'].forEach((v) {
        pomeranian!.add(v);
      });
    }
    poodle = json['poodle'].cast<String>();
    if (json['pug'] != null) {
      pug = <String>[];
      json['pug'].forEach((v) {
        pug!.add(v);
      });
    }
    if (json['puggle'] != null) {
      puggle = <String>[];
      json['puggle'].forEach((v) {
        puggle!.add(v);
      });
    }
    if (json['pyrenees'] != null) {
      pyrenees = <String>[];
      json['pyrenees'].forEach((v) {
        pyrenees!.add(v);
      });
    }
    rajapalayam = json['rajapalayam'].cast<String>();
    if (json['redbone'] != null) {
      redbone = <String>[];
      json['redbone'].forEach((v) {
        redbone!.add(v);
      });
    }
    retriever = json['retriever'].cast<String>();
    ridgeback = json['ridgeback'].cast<String>();
    if (json['rottweiler'] != null) {
      rottweiler = <String>[];
      json['rottweiler'].forEach((v) {
        rottweiler!.add(v);
      });
    }
    if (json['saluki'] != null) {
      saluki = <String>[];
      json['saluki'].forEach((v) {
        saluki!.add(v);
      });
    }
    if (json['samoyed'] != null) {
      samoyed = <String>[];
      json['samoyed'].forEach((v) {
        samoyed!.add(v);
      });
    }
    if (json['schipperke'] != null) {
      schipperke = <String>[];
      json['schipperke'].forEach((v) {
        schipperke!.add(v);
      });
    }
    schnauzer = json['schnauzer'].cast<String>();
    segugio = json['segugio'].cast<String>();
    setter = json['setter'].cast<String>();
    if (json['sharpei'] != null) {
      sharpei = <String>[];
      json['sharpei'].forEach((v) {
        sharpei!.add(v);
      });
    }
    sheepdog = json['sheepdog'].cast<String>();
    if (json['shiba'] != null) {
      shiba = <String>[];
      json['shiba'].forEach((v) {
        shiba!.add(v);
      });
    }
    if (json['shihtzu'] != null) {
      shihtzu = <String>[];
      json['shihtzu'].forEach((v) {
        shihtzu!.add(v);
      });
    }
    spaniel = json['spaniel'].cast<String>();
    spitz = json['spitz'].cast<String>();
    springer = json['springer'].cast<String>();
    if (json['stbernard'] != null) {
      stbernard = <String>[];
      json['stbernard'].forEach((v) {
        stbernard!.add(v);
      });
    }
    terrier = json['terrier'].cast<String>();
    if (json['tervuren'] != null) {
      tervuren = <String>[];
      json['tervuren'].forEach((v) {
        tervuren!.add(v);
      });
    }
    if (json['vizsla'] != null) {
      vizsla = <String>[];
      json['vizsla'].forEach((v) {
        vizsla!.add(v);
      });
    }
    waterdog = json['waterdog'].cast<String>();
    if (json['weimaraner'] != null) {
      weimaraner = <String>[];
      json['weimaraner'].forEach((v) {
        weimaraner!.add(v);
      });
    }
    if (json['whippet'] != null) {
      whippet = <String>[];
      json['whippet'].forEach((v) {
        whippet!.add(v);
      });
    }
    wolfhound = json['wolfhound'].cast<String>();
  }
}
