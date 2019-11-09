<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/training-project/appointments" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="Url" value=""/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page appointments-page">
    <h1>5.5 Список приёмов</h1>

    <br/>

    <p class="introduction">
        Этот раздел может оказаться для вас крайне полезным.
        Здесь мы познакомимся с популярными мощными библиотеками и создадим базовые
        переиспользуемые компоненты. На основе последних, мы построим - список и форму
        фильтрации данных, а также организуем их правильное взаимодействие.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.5.1 Знакомство с react-bootstrap-table-next</h2>
    <br/>

    <p>
        Прежде чем мы приступим к созданию списка приёмов, нам необходим какой-то базовый
        компонент, отображающий этот самый список. Его можно написать самому, а можно использовать
        какой-нибудь популярный плагин.
    </p>

    <app:alert title="Совет!" type="success">
        Когда вы ищете какой-нибудь плагин React для реализации вашей задачи, всегда заходите
        в Git и проверяйте две важные вещи: частота обновлений и размер сообщества. Два этих
        фактора гарантируют, что ваш плагин будет поддерживаться, развиваться и избавляться
        от багов. Хорошо когда обновления происходят раз в неделю или месяц, а не год. Иначе,
        если вы наткнётесь на какой-то баг, исправят его не скоро, а вам придется отказаться
        от использования такого плагина после значительных потерь времени. Не стоит добавлять
        в проект непопулярные, плохо поддерживаемые плагины - лучше написать самому!
    </app:alert>

    <p>
        Если вам не удалось найти ничего подходящего, кроме плохо поддерживаемых плагинов, и
        вы решили написать свой - вы всегда можете подсмотреть или перенять подходы у найденных.
        Просто в этом случае вы сами сможете поддерживать код и исправлять ошибки, что избавляет
        вас от рисков.
    </p>

    <p>
        Сейчас перед нами стоит задача отобразить список приёмов у всех
        врачей с возможностью фильтрации:
    </p>

    <br/>
    <p class="text-center" style="overflow-x: auto">
        <img src="<c:url value="/resources/imges/training-project/appointments.png"/>" class="text-center">
    </p>
    <br/>

    <c:url var="reactBootstrapTable2Url" value="https://react-bootstrap-table.github.io/react-bootstrap-table2/"/>
    <c:url var="reactBootstrapTable2DemoUrl" value="https://react-bootstrap-table.github.io/react-bootstrap-table2/storybook/index.html?selectedKind=Basic%20Table&selectedStory=basic%20table&full=0&addons=1&stories=1&panelRight=0&addonPanel=storybook%2Factions%2Factions-panel"/>

    <p>
        Для решения этой задачи предлагаю вашему вниманию плагин
        <b><a href="${reactBootstrapTable2Url}">react-bootstrap-table-next</a></b>. Это очень
        мощная библиотека, которая предоставляет таблицу с богатым ассортиментом возможностей. Чтобы
        познакомиться с ней достаточно посмотреть <b><a href="${reactBootstrapTable2DemoUrl}">раздел демо</a></b>.
        Здесь собраны все типовые случаи использования: пагинация, сортировка, стили строк и столбцов,
        события и многое другое.
    </p>

    <app:alert title="Совет!" type="success">
        Не поленитесь уделить время и пройтись по всем пунктам демо. Узнайте все возможности таблицы,
        чтобы не изобретать заново велосипед и понапрасну тратить своё время. Вполне вероятно, что ваш
        случай уже реализован.
    </app:alert>

    <p>
        Вы могли заметить, что в названии плагина использовано слово bootstrap. Я не случайно
        порекомендовал именно этот плагин. Он является переделкой своего предшественника
        <code>react-bootstrap-table</code>, который в свою очередь является умной React таблицей для bootstrap.
        В нашей ситуации это очень кстати. Тем не менее вы можете использовать и любой другой
        плагин для отображения таблицы.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.5.2 Базовый компонент таблицы</h2>
    <br/>

    <p>
        Чтобы отобразить список приёмов нам понадобится базовый компонент таблицы. Он, конечно,
        не является обязательным. Однако лучше всего иметь такой компонент-обёртку с заданным API.
    </p>

    <app:alert title="Совет!" type="success">
        Все подключаемые плагины лучше оборачивать в собственные компоненты-обёртки со своим API.
        Такая стратегия даёт массу преимуществ. Во-первых, при необходимости плагин можно поменять
        на другой. Во-вторых функционал плагина можно расширить. В-третьих такие компоненты можно
        использовать повторно в других проектах. Компоненты-обёртки, а также компоненты, написанные
        с нуля и составляют вашу собственную библиотеку. Все они находятся в папке <code>/components</code>.
    </app:alert>

    <p>Давайте добавим модуль <b>react-bootstrap-table-next</b> в проект:</p>

    <br/>
    <p class="text-center" style="overflow-x: auto">
        <img src="<c:url value="/resources/imges/training-project/react-bootsrap-table-next-npm.png"/>" class="text-center">
    </p>
    <br/>

    <p>Затем создадим наш первый базовый компонент-обёртку вокруг плагина:</p>

    <ce:code-example-1/>

    <p>
        В компоненте сначала идут статические члены: <code>propTypes</code> и
        <code>defaultProps</code>. В них мы определяем типы свойств и их значения
        по умолчанию соответственно. Далее отрисовываем сам библиотечный компонент
        <code>&lt;BootstrapTable&gt;</code>, передавая ему необходимые свойства. Их
        может быть больше - тут представлен лишь небольшой перечень.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.5.3 Фиктивные данные</h2>
    <br/>

    <p>
        Такие компоненты, как список всегда показывают какие-либо данные. Очень часто
        при разработке приложения серверная часть по каким-то причинам может быть не готова.
        Не смотря на это разработка должна продолжаться, и заказчик должен видеть результат.
        Необходима демо-версия приложения с фиктивными (фэйковыми, стабовыми) данными,
        которые в процессе  разработки сервера будут заменяться реальными. Более того,
        можно реализовать возможность переключаться между фиктивными и реальными данными.
    </p>

    <p>
        Давайте создадим файл с фиктивными данными и назовём его <code>MockData.js</code>
        в папке <b>/lib</b>. В нём мы создадим данные для нашего списка приёмов:
    </p>

    <ce:code-example-2/>

    <p>
        Даты в данных лучше всегда указывать числом. Дело в том, что дату в виде
        числа можно отформатировать любым требуемым образом. Даты в виде строк далеко
        не такие гибкие.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.5.4 Компонент списка приёмов</h2>
    <br/>

    <p>
        Поскольку базовый компонент таблицы и фиктивные данные готовы, самое время
        создать компонент списка приёмов:
    </p>

    <ce:code-example-3/>

    <p>
        Мы отрисовали компонент хидера и базовый компонент таблицы, передав в неё
        фиктивные данные.
    </p>

    <c:url var="momentjsUrl" value="https://momentjs.com/"/>
    <c:url var="reactMomentUrl" value="https://github.com/headzoo/react-moment"/>

    <p>
        Обратите внимание на свойство <code>formatter</code> в списке дексрипторов
        столбцов columns таблицы. С помощью этого свойства него мы можем
        форматировать вывод: результатом отрисовки ячейки таблицы будет то,
        что возвращает функция <code>formatter</code>. Поскольку мы имеем дело с датами
        в виде <b>long</b>, то прежде чем их отобразить, нам необходимо придать им
        читабельный вид. Для этого я использовал популярную библиотеку <b><a href="${momentjsUrl}">moment.js</a></b>,
        а точнее её react-версию <b><a href="${reactMomentUrl}">react-moment</a></b>:
    </p>

    <ce:code-example-4/>

    <p>Вот рабочий пример:</p>

    <br/>

    <iframe
            height="400px"
            width="100%"
            src="https://repl.it/@stsiushkevich/custom-app-v32?lite=true"
            scrolling="no"
            frameborder="no"
            allowtransparency="true"
            allowfullscreen="true"
            sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals">
    </iframe>

    <br/>
    <br/>

    <p>
        Как вы могли заметить, не хватает формы для фильтрации приёмов. Именно ей мы
        займёмся в следующем разделе!
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.5.5 Форма фильтра приёмов</h2>
    <br/>

    <br/>
    <h3>5.5.5.1 Библиотека reactstrap</h3>
    <br/>

    <c:url var="reactstrapUrl" value="https://reactstrap.github.io/components/alerts/"/>

    <p>
        Прежде чем приступить к реализации формы фильтра, хочу познакомить вас с
        библиотекой <b><a href="${reactstrapUrl}">reactstrap</a></b>. Здесь собраны
        основные компоненты bootstrap для React. Прочитайте документацию и узнайте,
        что вы можете использовать в своих приложениях. Уверен, что польза будет ощутимая.
    </p>

    <br/>
    <h3>5.5.5.2 Базовые компоненты элементов формы</h3>
    <br/>

    <p>Форма фильтра имеет следующий вид:</p>

    <br/>
    <p class="text-center" style="overflow-x: auto">
        <img src="<c:url value="/resources/imges/training-project/appointment-filter-form.png"/>" class="text-center">
    </p>
    <br/>

    <p>
        Как видно из рисунка она состоит из четырёх элементов: двух полей выбора даты,
        текстового поля и чекбокса. Самое время создать соответствующие базовые компоненты.
    </p>

    <p>Текстовое поле:</p>

    <ce:code-example-5/>

    <c:url var="decoratorUrl" value="https://refactoring.guru/ru/design-patterns/decorator"/>

    <p>
        Стоит отметить, что здесь использованы такие компоненты
        библиотеки reactstrap: <code>&lt;FormGroup&gt;</code>, <code>&lt;Label&gt;</code>
        и <code>&lt;Input &gt;</code>. Компонент <code>&lt;FormGroup &gt;</code> использован
        в соответствии с правилами построения форм в reactstrap. В остальном же всё
        просто - мы делаем компонент-обёртку с нашими свойствами и дополнительными возможностями.
        Кстати это известный паттерн проектирования под названием <b><a href="${decoratorUrl}">декоратор</a></b>.
    </p>

    <p>
        Наш компонент <code>&lt;TextField&gt;</code> является контролируемым: он не содержит
        состояния, а текущее значение value устанавливается родителем.
    </p>

    <p>
        Следующий наш компонент <code>&lt;CheckboxField&gt;</code>:
    </p>

    <ce:code-example-6/>

    <p>
        Как видно, он очень похож на компонент <code>&lt;TextField&gt;</code>.
    </p>

    <p>
        Ну и наконец компонент <code>&lt;DateField&gt;</code>:
    </p>

    <ce:code-example-7/>

    <c:url var="reactdatepickerUrl" value="https://reactdatepicker.com/"/>

    <p>
        Он немного более интересен, так как здесь я использовал популярную библиотеку
        <b><a href="${reactdatepickerUrl}">react-datepicker</a></b>. Она отлично
        поддерживается и решает большой спектр задач.
        Стоит изучить весь список её опций, чтобы понимать масштаб возможностей.
        Такая библиотека нужна практически в каждом проекте.
    </p>

    <p>
        Что ж, все необходимые базовые компоненты формы готовы. Теперь давайте
        добавим больше фиктивных данных в <code>MockData.js</code>, чтобы лучше
        протестировать работу фильтра:
    </p>

    <ce:code-example-8/>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>5.5.6 Апгрейд компонента списка приёмов</h2>
    <br/>

    <p>
        Итак, сейчас у нас всё готово для того, чтобы реализовать фильтр в компоненте
        <code>&lt;Appointments&gt;</code>. Давайте сделаем это:
    </p>

    <ce:code-example-9/>

    <p>Давайте проанализируем наш обновлённый код.</p>

    <p>
        Во-первых у компонента <code>&lt;Appointments&gt;</code> появилось
        состояние <code>state</code>, в котором есть переменная <code>filter</code>,
        хранящая данные фильтра. Во-вторых для изменения состояния фильтра
        здесь используются два метода <code>onChangeFilterField</code> и <code>onChangeFilterDateField</code>.
        Так сделано потому, что во второй приходит объект даты, а не примитивное значение, как в текстовом
        поле или чекбоксе. Мы могли бы использовать и один метод, но тогда нам нужно было бы
        делать определение типа переменной <code>value</code>, что определённо
        выглядело бы не так аккуратно.
    </p>

    <p>Далее была добавлена сама логика фильтрации данных:</p>

    <ce:code-example-10/>

    <p>
        Ничего сложного: четыре условия для каждого поля, соединённых
        оператором <b>&&</b> (логическое <b>И</b>). Обратите внимание на <code>clientName.length > 2</code>,
        это сделано для того, чтобы заставить фильтр срабатывать только тогда,
        когда пользователь введёт больше 2 символов в поле (это не обязательно).
    </p>

    <p>
        В остальном всё знакомо. Изучите и протестируйте
        полную рабочую версию примера:
    </p>

    <br/>

    <iframe
            height="400px"
            width="100%"
            src="https://repl.it/@stsiushkevich/custom-app-v33?lite=true"
            scrolling="no"
            frameborder="no"
            allowtransparency="true"
            allowfullscreen="true"
            sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals">
    </iframe>

    <br/>
    <br/>
</lt:layout>

<c:url var="prevPageUrl" value="/training-project/home-page"/>
<c:url var="nextPageUrl" value="/training-project/routing"/>

<app:page-navigate
        prevPageUrl="${prevPageUrl}"
        pageStartAncor="pageStart"
        nextPageUrl="${nextPageUrl}"
/>