/*

Defendiendo planetas
Revisando antiguos pergaminos encontramos información sobre los más variados seres que se distribuían en el universo.

R2-D2 (Arturito)
Este robot tan simpático es capaz de defenderse con valentía. Cuenta con una batería interna, inicialmente con media carga. Su potencia se calcula como el nivel de carga de la dicha batería por su valentía (que siempre es igual a 10). La batería debe poder cargarse totalmente o descargarse de a poco…

Han Solo
Tuvo la mala suerte de ser congelado en Carbonita hace poco. Hasta donde sabemos aún está congelado y esperamos que pueda ser descongelado antes de que deba entrar en acción. En caso de estar congelado, su potencia es nula. Pero sabemos que en circunstancias normales su potencia depende del arma que tenga, ya que siempre tiene un arma. Hay muchas armas y todas aportan una determinada energía. Por ejemplo, si tiene un blaster con energia 70 la potencia de Han sería 140; si tiene otra arma, también su potencia es el doble de la energía de dicha arma.

Planetas
Existen numerosos planetas, cada uno de ellos con una determinada población. Las fuerzas oscuras quieren invadirlos, pero cuentan con valientes guerreros que la defienden. Por ejemplo, Tatooine cuenta con una numerosa población calculada en 1000000 y en cierto momento podria estar defendida por Han Solo y Arturito, pero si luego ellos deciden irse, podría quedar sin defensores

Cuando se produce una invasión, si la suma de potencia de sus defensores es mayor que la intensidad del ataque, el planeta se defiende satisfactoriamente y no pierde población. En cambio, si el ataque fuera más intenso, pierde el 10% de su población. Se asume que la intensidad del ataque se representa con un valor numérico que se indica al momento de la invasión

Modelar los diferentes personajes, de manera que se pueda representar una invasión a tatooine
Encontrar al personaje más potente del planeta
Inventar nuevos personajes que sean líderes de la rebelión (por ejemplo, la princesa Leia) y que también puedan defender a un planeta. (En la implementación de los lideres se debe enviarle un mensaje a algún objeto de los definidos anteriormente.)
Agregar otro tipo de armas que pueda ser utilizada por Han Solo. (En la implementación de estas nuevas armas hay que usar una colección.)
Probarlo con diferentes escenarios.
Maestros Jedi y Sith

Existen personajes que como a cualquiera de nosotros, pasan por diferentes situaciones que les hacen replantearse su vida. Se los conoce como "maestros".

El lado oscuro y luminoso de la vida
Todo maestro puede participar de la defensa de su planeta. Posee una gran concentración de midiclorianos en su cuerpo. Cuenta con un sable de luz que sabe manejar con destreza y precisión. Tiene control sobre la fuerza, la cual es tan poderosa como peligrosa y a lo largo de su vida la utiliza de diferentes maneras.
Estando del lado luminoso, usa la fuerza para el bien del universo y se lo considera Jedi. Su potencia se calcula como la milésima parte de la cantidad de midiclorianos en su cuerpo más la energia que le otorga su sable de luz, todo eso multiplicado por 10.
Estando del lado oscuro se lo considera Sith y sus intenciones son cuestionables, pero, sin embargo, su potencia podría verse afectada. Se calcula como la milésima parte de la cantidad de midiclorianos en su cuerpo más la energia que le otorga su sable de luz, todo eso multiplicado por un valor que depende del nivel de la fuerza que haya en ese momento en el lado oscuro.

Sucesos cargados emocionalmente
Existen sucesos que tienen una gran carga emocional que pueden alterar la forma en que un maestro ve el mundo y eventualmente cambiar el lado de la fuerza que sigue.
La carga emocional que provoca un suceso se representa con un número que puede ser positivo o negativo. Empiezan como Jedi, esperanzados (con esperanza 50), pero los sucesos que viven pueden ir disminuyendo su esperanza o, en cambio, aumentándola. Si como consecuencia de un suceso la esperanza se anulase por completo, su corazón se vería perturbado por el odio y su reacción sería pasarse al lado oscuro y convertirse en Sith. Además, el lado oscuro aumentaría el nivel de la fuerza en una unidad.
Estando del lado oscuro su esperanza ya no se altera por nada, pero si vive un suceso de muy alta carga emocional (mayor a 100) la coraza de su corazón se rompe, ve el camino de destrucción que ha dejado, se arrepiente de sus actos y vuelve al camino de la luz convirtiéndose en un Jedi. Ademas, su esperanza retorna al valor inicial y el lado oscuro disminuye a la mitad el nivel de su fuerza.
Anakin SkyWaker es uno de ellos, pero también hubo otros maestros que cambiaron de lado como el Conde Dooku o Kylo Ren. Por otra parte, algunos de ellos nunca vivieron sucesos tan significativos que los hagan cambiar de lado, como el maestro Obi-Wan, Rey o el mismísimo Yoda que fueron toda su vida Jedi… pero nunca se sabe qué puede llegar a pasar en un nuevo episodio.

Algunos ejemplos:

Conseguir un amigo brinda tanta carga emocional como la potencia de dicho amigo.
Participar en una batalla le da una carga emocional negativa, dependiendo de la cantidad de bajas que haya
Ganar una carrera le da 5 unidades de carga emocional positiva
[Spoiler Alert]
Hay dos sucesos importantes que le pueden pasar a cualquier maestro

Luego de años entrenando para ser un mejor Jedi, siente la impotencia frente a su ser amado que muere sin que pueda hacer nada para evitarlo, lo que le genera una gran carga emocional negativa.
Luego de muchos años en el lado oscuro, se encuentra en una situación extrema en la cual lo intentan convencer de asesinar a alguien de su familia, este suceso tiene una carga emocional muy grande.


Modelar algunos maestros y todos los objetos necesarios para permitir que además de sumarse a la defensa de tatooine, puedan vivir diferentes sucesos con las correspondientes consecuencias
Inventar un nuevo tipo de suceso, que consista en un conjunto de otros sucesos.
Hacer pruebas unitarias variadas
Hacer un programa donde se simule el desarrollo completo de una película.

*/