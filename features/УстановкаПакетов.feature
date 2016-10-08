#language: ru

Функциональность: Установка пакетов

Как разработчик
Я хочу иметь инструмент, который позволит мне удобно устанавливать пакеты
Чтобы быстро получать доступ к уже написанному коду

Контекст:
  Допустим установлен пакетный менеджер opm

Сценарий: Установка пакета локально
  Когда я выполняю команду "opm install" с параметром "ИмяПакета"
  Тогда пакет "ИмяПакета" скачивается с хаба пакетов
  И устанавливается в каталог "oscript_modules"

Сценарий: Установка пакета локально с добавлением в зависимости
  Когда я выполняю команду "opm install" с параметром "ИмяПакета --save"
  Тогда пакет "ИмяПакета" скачивается с хаба пакетов
  И устанавливается в каталог "oscript_modules"
  И в текущем каталоге в файле с описаниями зависимостей пакетов появляется зависимость от "ИмяПакета"

Сценарий: Установка пакета глобально
  Когда я выполняю команду "opm install" с параметром "-g ИмяПакета"
  Тогда пакет "ИмяПакета" скачивается с хаба пакетов
  И устанавливается в системный каталог библиотек

Сценарий: Установка бандла пакетов
  Допустим существует файл зависимостей
  И в файле зависимостей указаны зависимости
  Когда я выполняю команду "opm install"
  Тогда все пакеты, указанные в файле зависимостей, скачиваются с хаба
  И устанавливаются в каталог "oscript_modules"

Сценарий: Установка бандла пакетов глобально
  Допустим существует файл зависимостей
  И в файле зависимостей указаны зависимости
  Когда я выполняю команду "opm install" с параметром "-g"
  Тогда все пакеты, указанные в файле зависимостей, скачиваются с хаба
  И устанавливаются в системный каталог библиотек
