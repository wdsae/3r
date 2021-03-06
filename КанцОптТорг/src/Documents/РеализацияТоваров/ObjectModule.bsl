Процедура ОбработкаЗаполнения(ДанныеЗаполнения,СтандартнаяОбработка)
	//{{__КОНСТРУКТОР_ВВОД_НА_ОСНОВАНИИ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	Если ТипЗнч(ДанныеЗаполнения) = Тип("ДокументСсылка.ПоступлениеТоваров") Тогда
		// Заполнение шапки
		Ответственный = ДанныеЗаполнения.Ответственный;
		Контрагенты = ДанныеЗаполнения.Контрагенты;

		Для Каждого ТекСтрокаТовары из ДанныеЗаполнения.Товары Цикл
			НоваяСтрока = Товары.Добавить();
			НоваяСтрока.Номенклатура = ТекСтрокаТовары.Номенклатура;
			НоваяСтрока.Количество = ТекСтрокаТовары.Количество;
			НоваяСтрока.Цена = ТекСтрокаТовары.Цена;
			НоваяСтрока.Сумма = ТекСтрокаТовары.Сумма;
		КонецЦикла;
	КонецЕсли;

	//}}__КОНСТРУКТОР_ВВОД_НА_ОСНОВАНИИ

КонецПроцедуры
