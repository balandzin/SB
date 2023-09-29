import UIKit
//: # Home Work 4

/*:
 ## Задание 1
 Пользователь открывает вклад (deposit) в банке на 5 лет (period) на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия вклада и вывести результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...> рублей".  Для решения данной задачи используйте цикл for-in.
 
 > Сумма вклада увеличивается с каждым годом и процент нужно считать уже от увеличенной суммы.
  */
let deposit = 500_000
let period = 5
let rate = 11
var profit = 0

for _ in 1...5 {
    profit += deposit * 11 / 100
    profit
}

/*:
 ## Задание 2
 2.1 Создайте целочисленный массив данных с любым набором чисел.
*/



//: 2.2 Выведите на консоль все четные числа из массива



/*: 2.3* В циклах для перехода к следующей итерации без выполнения последующего кода можно использовать оператор `Continue`. В этом случае весь последующий код игнорируется.
 
 Используя оператор `Continue` выведите на консоль все нечетные числа из массива. Для этого нужно выполнить проверку на четность числа, и если оно оказалось четным перейти к следующей итерации.
*/


/*: ## Задание 3
Создайте цикл с интервалом от 1 до 10 в котором случайным образом должно вычисляться число в пределах от 1 до 10. Если выпадет число 5, выведите на консоль сообщение с номером итерации и остановите цикл. Пример сообщения: "Что бы выпало число 5 понадобилось <...> итераций".

Для остановки цикла используйте оператор break. Данный оператор предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется.
 
 Для определения случайного числа используйте функцию random: `Int.random(in: 1...10)`
*/


/*:
 ## Задание 4
  На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на один. Определите при помощи цикла, через сколько дней она заберется на столб? Подумайте над тем, какой цикл использовать в этой ситуации.
 */


