# todo

## Тестовое задание для Flutter разработчика

Сверстать 2 экрана на основе представления ниже
В качестве графики можете использовать любые изображения и графику. Структура представлена на макете ниже.

### Первый экран
На первом экране отобразить список всех категорий и задач 
Список задач должен быть наполнен из API https://gorest.co.in/public/v2/todos
Список категорий можно использовать любой.

Список категорий можно скролить горизонтально.
Цвета статусов задач должны выбираться в зависимости от поля status в json

Кнопка снизу должна быть закреплена вне зависимости от прокрутки пользователя.
При нажатии на кнопку Add task необходимо перейти на страницу Add Task с эффектом fade

### Второй экран

При заполнении данных необходимо проверять все поля на правильность заполнения (валидация).
Если поле неправильно заполнено - нужно отобразить ошибку через всплывающее уведомление снизу экрана и блокировкой кнопки на 2 секунды.
После нажатия на кнопку Create Task - отобразить уведомление (любое), об успешном добавлении задачи в список.

Задачу сохранить в локальной памяти приложения, не отправляя запрос на сервер, и отобразить в списке всех todos вместе со списком с сервера.

### Будет круто если будет реализовано:

- Проверка наличия интернет соединения
- Вход в приложение начинается с логотипа, а затем медленное появление функционала. 
- Реализовать “Поиск по задачам” по нажатию на иконку поиска на первом экране

## Результат

### Что имеем:

Картинка расходится с данными.

Пример данных:

```
[
  {
    "id": 1585,
    "user_id": 3217,
    "title": "Modi quis baiulus creber peccatus culpa ulterius.",
    "due_on": "2022-08-22T00:00:00.000+05:30",
    "status": "pending"
  },
  {
    "id": 1584,
    "user_id": 3214,
    "title": "Spectaculum causa tracto arcus aut adinventitias vallum decipio verumtamen.",
    "due_on": "2022-07-28T00:00:00.000+05:30",
    "status": "completed"
  },
  {
    "id": 1583,
    "user_id": 3213,
    "title": "Defluo volubilis suppono sint nesciunt quos textus ullus cito.",
    "due_on": "2022-08-18T00:00:00.000+05:30",
    "status": "completed"
  },
  {
    "id": 1582,
    "user_id": 3212,
    "title": "Adultus aperte decerno facilis somniculosus angulus solutio peior curriculum substantia.",
    "due_on": "2022-08-17T00:00:00.000+05:30",
    "status": "completed"
  },
  {
    "id": 1580,
    "user_id": 3209,
    "title": "Sum neque crepusculum cur comburo cultellus apparatus coma mollitia umerus vel.",
    "due_on": "2022-08-21T00:00:00.000+05:30",
    "status": "completed"
  },
  {
    "id": 1579,
    "user_id": 3208,
    "title": "Pectus cubitum causa tripudio aut.",
    "due_on": "2022-08-12T00:00:00.000+05:30",
    "status": "pending"
  },
  {
    "id": 1578,
    "user_id": 3207,
    "title": "Non atrox spes defendo dolorem fugit.",
    "due_on": "2022-08-22T00:00:00.000+05:30",
    "status": "completed"
  },
  {
    "id": 1577,
    "user_id": 3203,
    "title": "Quae carbo tero aestus numquam.",
    "due_on": "2022-07-27T00:00:00.000+05:30",
    "status": "completed"
  },
  {
    "id": 1576,
    "user_id": 3201,
    "title": "Basium tego venia avoco abscido reiciendis corpus tactus animi.",
    "due_on": "2022-08-11T00:00:00.000+05:30",
    "status": "completed"
  },
  {
    "id": 1575,
    "user_id": 3200,
    "title": "Adsuesco sursum repellendus cohaero sui volva spargo coniuratio eos synagoga error.",
    "due_on": "2022-08-20T00:00:00.000+05:30",
    "status": "completed"
  }
]
```

Захотелось сделать как на картинке, поэтому добавил данные.

### Что сделано:

#### Архитектура

Разбил по слоям:

- data - модели данных и сервис (AppService), работающий с репозиторием/-ями. Слой, не имеющий никакой связи с другими слоями. Работа с репозиториями ведётся через интерфейсы. Интерфейсы не регламентируют, каким образом и откуда будут получаться данные. Соответственно, при необходимости остальные слои легко меняются. Например, легко можно перейти от работы с сервером на локальный Sqlite.

  Сервис даёт доступ к репозиториям, и настраивает системы оповещений через стримы для изменяющихся данных - в данном случае Todo. При редактировании, создании, удалении задач главный экран получает оповещения и корректирует списки.

- domain - имплементация репозитория, работающего с удалённым сервером по http, Dto-модели. Dto-модели не используются напрямую в приложении - всегдя преобразуются в модели приложения. Это необходимо, чтобы data-слой не был завязан на конкретной имплементации.

- bloc - для стейт-менеджемента выбран BLoC. Бизнес-логика. Связь между data-слоем и ui, и обеспечение слоя ui - стейт-машиной. В данном приложении можно было бы обойтись и без него, используя состояния StatefulWidget'ов. Но при условии развития приложения это усложнит дальнейшую разработку. Bloc хорош для однозначного задания состояний, в которых может находиться экран/фича/виджет.

- слой презентационной логики - по хорошему нужен отдельный слой презентационной логики, чтобы код не был разбросан по вёрстке, и чтобы каждый виджет имел быстрый доступ к общим данным экрана/фичи/виджета (а-ля Elementary от Surf). В данном приложении не использовал готовые решения, сделал имитацию слоя - весь код находится в главном виджете (StatefulWidget), а доступ из других виджетов к стейту главного через Provider.

- ui - собственно слой вёрстки. Благодаря слою презентационной логики экраны легко декомпозируются на меньшие виджеты, вёрстка через методы нигде не используется, данные в виджеты напрямую не передаются - виджеты сами берут все необходимые данные или из блока, или стейта главного виджета.

#### Ошибки

В приложении собственный класс исключений: AppException и его потомки. Во-первых, чтобы гарантированно отличать контролируемые исключения от uncaught. Во-вторых, чтобы не зависеть от имплементации репозитория.

#### Главный экран (Board)

Работает с блоком TodosBloc, который отвечает за загрузку списка. При загрузке крутится прогресс-индикатор. При ошибке связи вместо списка выводится сообщение. В данном случае без перевода - только тип ошибки (AppException). TodosBloc подписан на изменение/удаление Todo. При изменениях корректирует списки.

Реализован поиск. При вводе слов для поиска ищется каждое слово отдельно. Найденные слова выделяются.

#### Экран добавления/редактирования (Add task/Edit task)

Универсальный экран и для создания задачи, и для редактирования. Валидация всех полей по нажатии на кнопку создания/обновления.

По кнопке сверху можно удалить задачу.

Собственная реализация выпадающего списка для соответствия общему дизайну.

Даилоги выбора даты и времени меняются в зависимости от платформы (Cupertion/Material).

![video sample](https://github.com/vi-k/todo/blob/main/README-video.mp4)
