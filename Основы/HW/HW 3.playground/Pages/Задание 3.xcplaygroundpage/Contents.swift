import Foundation

/*:
 ## Задание 3*
 С помощью блоков `case` определяются возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо отсортировать конфеты M&M's по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку соберите все желтые конфеты с орехами. А в третью кучку коричневые с шоколадом и зеленые с шоколадом. Нужно реализовать только логику для сортировки конфет. Использовать кортежи при этом не нужно.
 
 */
let color = "green"
let filling = "chocolate"

switch color {
case "red" where filling == "chocolate":
    print("Первая кучка")
case "yelow" where filling == "nuts":
    print("Вторая кучка")
case "brown" where filling == "chocolate",
    "green" where filling == "chocolate":
    print("Третья кучка")
default:
    print("Incorrectly specified input parameters")
}

//: [Ранее: Задание 2](@previous)  |  задание 3 из 3  |
