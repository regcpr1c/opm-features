#language: ru

Функциональность: Удаление пакетов

Как разработчик
Я хочу удалять установленные пакеты
Чтобы экономить место на диске и не засорять рабочие каталоги

Контекст:
  Допустим установлен пакетный менеджер opm

Сценарий: Удаление пакета
  Когда я выполняю команду "opm uninstall" с параметром "ИмяПакета"
  Тогда папка "ИмяПакета" отсутствует в каталоге "oscript_modules"

#Сценарий: Удаление пакета глобально?
