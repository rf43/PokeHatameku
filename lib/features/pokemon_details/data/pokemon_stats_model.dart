class PokemonStats {
  final int hp;
  final int atk;
  final int def;
  final int satk;
  final int sdef;
  final int spd;

  const PokemonStats({
    this.hp = 0,
    this.atk = 0,
    this.def = 0,
    this.satk = 0,
    this.sdef = 0,
    this.spd = 0,
  });

  statNames() => <String>{
        'hp',
        'atk',
        'def',
        'satk',
        'sdef',
        'spd',
      };

  asOrderedMap() => <String, int>{
        'hp': hp,
        'atk': atk,
        'def': def,
        'satk': satk,
        'sdef': sdef,
        'spd': spd,
      };
}
