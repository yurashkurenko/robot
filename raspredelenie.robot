*** Keywords ***
Открыть документ распределение
    Open Excel    Распределение.xlsx

Открыть документ данные распределения
    Open Excel    ДанныеРаспределения.xlsm

Поменять ячейки
    Open Excel    ДанныеРаспределения.xlsm
    ${Название}        Read Cell Data By Coordinates          ДанныеРаспределения           4          7
    ${СчетФактура}     Read Cell Data By Coordinates          ДанныеРаспределения           5          8
    ${Акт}             Read Cell Data By Coordinates          ДанныеРаспределения           6          8
    ${Период}          Read Cell Data By Coordinates          ДанныеРаспределения           10          8
    ${Сумма}           Read Cell Data By Coordinates          ДанныеРаспределения           11          8
#   log      ${СчетФактура}          
    Open Excel    Распределение.xlsx
    Write Data By Coordinates          распределение        7         1       ${СчетФактура}
    Write Data By Coordinates          распределение        8         1       ${Акт}
    Write Data By Coordinates          распределение        12        1       ${Период}
    Write Data By Coordinates          распределение        17        23      ${Сумма}
    Save Excel  ${Сумма} ${Название} ${Исполнитель} ${Услуга} ${ДатаУслуги}.xlsx
#Read Cell Data By Coordinates | Sheet1 | 1 | 1 |
#Write Data By Coordinates | Sheet1 | 1 | 1 | TestData |

Сохранить новое распределение
#Save in new file:
    Open Excel    Распределение.xlsx
    Save Excel  ${Сумма} ${Название} ${Услуга} ${ДатаУслуги}.xlsx
