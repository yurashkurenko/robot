#test9.robot Рыба для робота
*** Settings
#Library http
#${переменная}=     значенеие
#${table}=          таблицу

***Tasks
Приложение
  зайти в приложение
  sleep                5
  поработать
  выйти из приложения

***Keywords
зайти в приложение
  log    Вы зашли в приложение
  sleep                5
  log    Прошло 5 секунд
выйти из приложения
  log    Вы вышли из приложения
поработать
  log    Работа не волк, в лес не убежит
