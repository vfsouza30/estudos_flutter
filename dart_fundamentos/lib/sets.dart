void main(){

  var numerosLista =[];

    numerosLista.add(1);
    numerosLista.add(2);
    numerosLista.add(3);
    numerosLista.add(3);
    numerosLista.add(null);
    numerosLista.add(1);
    numerosLista.add(2);

  var numerosSet = <int?>{};

    numerosSet.add(1);
    numerosSet.add(2);
    numerosSet.add(3);
    numerosSet.add(3);
    numerosSet.add(null);
    numerosSet.add(1);
    numerosSet.add(2);

    print(numerosSet); // o set é representado pelo {} ou chamando a propria função Set(); ele retira os elementos duplicados
    print(numerosLista.toSet());

    numerosSet.forEach(print);

    var numeros1 = {1,2,3,4,5};
    var numeros2 = {1,2,3};

    print('.difference()');
    print(numeros1.difference(numeros2));

    print('.intersection()');
    print(numeros1.intersection(numeros2));


    //para extrair dados de um set, precisamos usar .elementAt()
  
}