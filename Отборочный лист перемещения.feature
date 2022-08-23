#language: ru
@tree

Функционал: Создание заявки

Как Пользователь
Я хочу Проверить процесс создания заявки отборочника и перемещения
Чтобы Убедится что данный бизнесс процесс работает

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Запоминаю переменные
		И Я запоминаю строку "Куртка GJC005807 джинс белый 5-6л/116" как переменную "Товар1"
		И Я запоминаю строку "Брюки BAC009290 трикотаж черный 5-6л/116" как переменную "Товар2"
		И Я запоминаю строку "Новошахтинск №1" как переменную "СкладПолучатель"
		И Я запоминаю строку "Новошахтинск №1" как переменную "КонечныйСклад"
		И Я запоминаю строку "Логистический центр НШ" как переменную "Фирма"
		И Я запоминаю строку "10,000" как переменную "Количество"
		И Я запоминаю строку "1234567816085" как переменную "Марка"
		И Я запоминаю строку "10004000016081" как переменную "ШтрихКод"

Сценарий: Создание отбор

	Когда я создаю Отборочный лист перемещения
		И В командном интерфейсе я выбираю 'Документы' 'Отбор лист перемещ'
		Тогда открылось окно 'Отбор лист перемещ'
		И я нажимаю на кнопку с именем 'ФормаСоздать'

	И я заполняю шапку документа
		Тогда открылось окно 'Отбор лист перемещ (создание)'
		И в поле 'Комментарий' я ввожу текст 'Создано Vanessa ADD ver 6.8.0 '

	И я заполняю табличную часть
		Тогда открылось окно 'Отбор лист перемещ (создание)'
		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
		Тогда открылось окно 'Отбор лист перемещ (создание) *'
		И в таблице "Товары" из выпадающего списка "Товар" я выбираю точное значение '$Товар1$'
		И я перехожу к следующему реквизиту
		И в таблице "Товары" в поле 'Количество' я ввожу текст '$Количество$'
		И в таблице "Товары" я завершаю редактирование строки

		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
		И в таблице "Товары" из выпадающего списка "Товар" я выбираю точное значение '$Товар2$'
		И я перехожу к следующему реквизиту

		И в таблице "Товары" в поле 'Количество' я ввожу текст '$Количество$'
		И в таблице "Товары" я завершаю редактирование строки
		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар1$' |
		И в таблице "Товары" я активизирую поле "Заявка"
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Заявка"
		Тогда открылось окно 'Заявка'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Отбор лист перемещ (создание) *'
		И в таблице "Товары" я завершаю редактирование строки
		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар2$' |
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Заявка"
		Тогда открылось окно 'Заявка'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Отбор лист перемещ (создание) *'
		И в таблице "Товары" я завершаю редактирование строки

		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар1$' |
		И в таблице "Товары" я активизирую поле "Склад получатель"
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Склад получатель"
		И в таблице "Товары" из выпадающего списка "Склад получатель" я выбираю по строке '$СкладПолучатель$'
		И в таблице "Товары" я завершаю редактирование строки

		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар2$' |
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Склад получатель"
		И в таблице "Товары" из выпадающего списка "Склад получатель" я выбираю по строке '$СкладПолучатель$'
		И в таблице "Товары" я завершаю редактирование строки

		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар1$' |
		И в таблице "Товары" я активизирую поле "Конечный склад"
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Конечный склад"
		И в таблице "Товары" из выпадающего списка "Конечный склад" я выбираю по строке '$КонечныйСклад$'
		И в таблице "Товары" я завершаю редактирование строки

		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар2$' |
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Конечный склад"
		И в таблице "Товары" из выпадающего списка "Конечный склад" я выбираю по строке '$КонечныйСклад$'


		Когда открылось окно 'Отбор лист перемещ (создание) *'
		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар1$' |
		И в таблице "Товары" я активизирую поле "Штрих"
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" в поле 'Штрих' я ввожу текст '$ШтрихКод$'
		И в таблице "Товары" я завершаю редактирование строки

		Когда открылось окно 'Отбор лист перемещ (создание) *'
		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар2$' |
		И в таблице "Товары" я активизирую поле "Штрих"
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" в поле 'Штрих' я ввожу текст '$ШтрихКод$'
		И в таблице "Товары" я завершаю редактирование строки

		Когда открылось окно 'Отбор лист перемещ (создание) *'
		И в таблице "Товары" я перехожу к строке:
			| Товар    |
			| '$Товар1$' |
		И в таблице "Товары" я нажимаю на кнопку 'Марки'
		Тогда открылось окно 'Форма табличной части "Марки"'
		И в таблице "ТчМарки" я нажимаю на кнопку с именем 'ТчМаркиДобавить'
		И в таблице "ТчМарки" в поле 'Марка' я ввожу текст '$Марка$'
		И в таблице "ТчМарки" я завершаю редактирование строки
		И я нажимаю на кнопку 'Закрыть'

	И я провожу документ
		Когда открылось окно 'Отбор лист перемещ *'
		И я нажимаю на кнопку 'Провести'
		Тогда открылось окно 'Отбор лист перемещ *'
		И Я закрываю окно 'Отбор лист перемещ *'
