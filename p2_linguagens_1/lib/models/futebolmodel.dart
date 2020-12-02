class futModel {
  List<CopaDoBrasil> copaDoBrasil;

  futModel({this.copaDoBrasil});

  futModel.fromJson(Map<String, dynamic> json) {
    if (json['copa-do-brasil'] != null) {
      copaDoBrasil = new List<CopaDoBrasil>();
      json['copa-do-brasil'].forEach((v) {
        copaDoBrasil.add(new CopaDoBrasil.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.copaDoBrasil != null) {
      data['copa-do-brasil'] =
          this.copaDoBrasil.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CopaDoBrasil {
  int partidaId;
  Campeonato campeonato;
  String placar;
  TimeMandante timeMandante;
  TimeMandante timeVisitante;
  int placarMandante;
  int placarVisitante;
  String status;
  String slug;
  String dataRealizacao;
  String horaRealizacao;
  String dataRealizacaoIso;
  Estadio estadio;

  CopaDoBrasil(
      {this.partidaId,
        this.campeonato,
        this.placar,
        this.timeMandante,
        this.timeVisitante,
        this.placarMandante,
        this.placarVisitante,
        this.status,
        this.slug,
        this.dataRealizacao,
        this.horaRealizacao,
        this.dataRealizacaoIso,
        this.estadio});

  CopaDoBrasil.fromJson(Map<String, dynamic> json) {
    partidaId = json['partida_id'];
    campeonato = json['campeonato'] != null
        ? new Campeonato.fromJson(json['campeonato'])
        : null;
    placar = json['placar'];
    timeMandante = json['time_mandante'] != null
        ? new TimeMandante.fromJson(json['time_mandante'])
        : null;
    timeVisitante = json['time_visitante'] != null
        ? new TimeMandante.fromJson(json['time_visitante'])
        : null;
    placarMandante = json['placar_mandante'];
    placarVisitante = json['placar_visitante'];
    status = json['status'];
    slug = json['slug'];
    dataRealizacao = json['data_realizacao'];
    horaRealizacao = json['hora_realizacao'];
    dataRealizacaoIso = json['data_realizacao_iso'];
    estadio =
    json['estadio'] != null ? new Estadio.fromJson(json['estadio']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['partida_id'] = this.partidaId;
    if (this.campeonato != null) {
      data['campeonato'] = this.campeonato.toJson();
    }
    data['placar'] = this.placar;
    if (this.timeMandante != null) {
      data['time_mandante'] = this.timeMandante.toJson();
    }
    if (this.timeVisitante != null) {
      data['time_visitante'] = this.timeVisitante.toJson();
    }
    data['placar_mandante'] = this.placarMandante;
    data['placar_visitante'] = this.placarVisitante;
    data['status'] = this.status;
    data['slug'] = this.slug;
    data['data_realizacao'] = this.dataRealizacao;
    data['hora_realizacao'] = this.horaRealizacao;
    data['data_realizacao_iso'] = this.dataRealizacaoIso;
    if (this.estadio != null) {
      data['estadio'] = this.estadio.toJson();
    }
    return data;
  }
}

class Campeonato {
  int campeonatoId;
  String nome;
  String slug;

  Campeonato({this.campeonatoId, this.nome, this.slug});

  Campeonato.fromJson(Map<String, dynamic> json) {
    campeonatoId = json['campeonato_id'];
    nome = json['nome'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['campeonato_id'] = this.campeonatoId;
    data['nome'] = this.nome;
    data['slug'] = this.slug;
    return data;
  }
}

class TimeMandante {
  int timeId;
  String nomePopular;
  String escudo;

  TimeMandante({this.timeId, this.nomePopular, this.escudo});

  TimeMandante.fromJson(Map<String, dynamic> json) {
    timeId = json['time_id'];
    nomePopular = json['nome_popular'];
    escudo = json['escudo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time_id'] = this.timeId;
    data['nome_popular'] = this.nomePopular;
    data['escudo'] = this.escudo;
    return data;
  }
}

class Estadio {
  int estadioId;
  String nomePopular;

  Estadio({this.estadioId, this.nomePopular});

  Estadio.fromJson(Map<String, dynamic> json) {
    estadioId = json['estadio_id'];
    nomePopular = json['nome_popular'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['estadio_id'] = this.estadioId;
    data['nome_popular'] = this.nomePopular;
    return data;
  }
}