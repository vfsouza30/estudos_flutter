void main() {

final caixaBola = Caixa<Bola>();
final caixaBoneca = Caixa<Boneca>();

caixaBola.adicionar(Bola());
Bola? itemBola = caixaBola.getItems();
print(caixaBola.alturaItem());

caixaBoneca.adicionar(Boneca());
Boneca? itemBoneca = caixaBoneca.getItems();
print(caixaBoneca.alturaItem());

}

class Caixa<I extends Item> {

  I? _item;

  void adicionar(I item){
    _item = item;
  }

  I? getItems() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0;
  }
}

abstract class Item {
  double altura();
}
class Bola extends Item {
  @override
  double altura() {
   return 20.0;
  }

}
class Boneca extends Item{
   @override
  double altura() {
   return 40.0;
  }
}
class Telefone extends Item{
   @override
  double altura() {
   return 60.0;
  }
}