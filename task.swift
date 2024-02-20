let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

print("\n\tВывод количества дней в каждом месяце: ")
for days in daysInMonths {
    print("Количество дней: \(days)")
}

print("\n\tВывод названия месяца + количество дней:")
for (index, month) in monthNames.enumerated() {
    print("\(month): \(daysInMonths[index]) дней")
}

print("\n\tИспользование массива кортежей (tuples) для хранения имени месяца и количества дней:")
var monthInfo: [(name: String, days: Int)] = []
for (index, month) in monthNames.enumerated() {
    monthInfo.append((name: month, days: daysInMonths[index]))
}
print(monthInfo)


print("\n\tВывод дней в обратном порядке:")
for days in daysInMonths.reversed() {
    print("Количество дней: \(days)")
}


print("\n\tПодсчет количества дней до произвольной даты от начала года: Предположим, что выбранная дата - 15 марта: ")
let selectedMonth = 3 // Март
let selectedDay = 15

var totalDays = 0
for i in 0..<selectedMonth - 1 {
    totalDays += daysInMonths[i]
}
totalDays += selectedDay
print("Количество дней с начала года до 15 марта: \(totalDays)")
