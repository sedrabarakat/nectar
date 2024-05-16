import 'dart:ui';

const greeny=Color.fromARGB(255, 82, 176, 117);
const Off_White=Color.fromARGB(255, 253, 253, 254);

List<Color_Pair>Labels_colors=[
  Color_Pair(light:  Color.fromARGB(255, 236, 246, 241), dark:  Color.fromARGB(255, 170, 215, 188)),
  Color_Pair(light:  Color.fromARGB(255, 253, 244, 237),dark:   Color.fromARGB(255, 251, 219, 189)),
  Color_Pair(light:  Color.fromARGB(255, 251, 230, 227), dark:  Color.fromARGB(255, 247, 200, 191)),
  Color_Pair(light:  Color.fromARGB(255, 242, 233, 246), dark:  Color.fromARGB(255, 218, 189, 229)),
  Color_Pair(light:  Color.fromARGB(255, 252, 246, 228), dark:  Color.fromARGB(255, 251, 232, 174)),
  Color_Pair(light:  Color.fromARGB(255, 235, 245, 251), dark:  Color.fromARGB(255, 201, 230, 246))

];

class Color_Pair {
  Color dark;
  Color light;
  Color_Pair({required this.light,required this.dark});
}



List<Color>DarkerLabels_colors=[
  Color.fromARGB(255, 170, 215, 188),
  Color.fromARGB(255, 251, 219, 189),
  Color.fromARGB(255, 247, 200, 191),
  Color.fromARGB(255, 218, 189, 229),
  Color.fromARGB(255, 251, 232, 174),
  Color.fromARGB(255, 201, 230, 246),
];