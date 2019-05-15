<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/basics/thinking-in-react" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="tableMockUrl" value="https://reactjs.org/static/thinking-in-react-mock-1071fbcc9eed01fddc115b41e193ec11-4dd91.png"/>
<c:url var="separatingUIMockUrl" value="https://reactjs.org/static/thinking-in-react-components-eb8bda25806a89ebdc838813bdfa3601-82965.png"/>
<c:url var="thinkingInReactStep2Url" value="https://codepen.io/gaearon/pen/BwWzwm"/>
<c:url var="thinkingInReactStep4Url" value="https://codepen.io/gaearon/pen/qPrNQZ"/>
<c:url var="thinkingInReactStep5Url" value="https://codepen.io/gaearon/pen/LzWZvb"/>

<a name="pageStart"></a>
<div class="page thinking-in-react-page">
    <h1>2.13 Мышление в React</h1>
    
    <br/>
    
    <p class="introduction">
        По нашему мнению, React это образцовый путь создания больших, быстрых и масштабируемых
        веб-приложений с помощью JavaScript.
    </p>

    <p>
        Одна из многих замечательных частей React - это то, как вы представляете себе 
        приложения по мере их создания. В этом разделе мы рассмотрим процесс создания
        поисковой таблицы с данными продуктов с помощью React.
    </p>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.13.1 Начнём с макета</h2>
    <br/>

    <p>
        Давайте представим, что у нас уже есть JSON API и макет нашего дизайнера. Макет выглядит так:
    </p>

    <p class="text-center">
        <wg:img src="${tableMockUrl}"/>
    </p>

    <p>Наш JSON API возвращает некоторые данные, которые выглядят так:</p>

    <ce:code-example-1/>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.13.2 Шаг 1: Разбъём наш UI на иерархию компонентов</h2>
    <br/>

    <p>
        Первое, что вам нужно сделать, это нарисовать прямоугольники вокруг каждого
        компонента (и подкомпонента) в макете, дав каждому из них своё имя. Если вы работаете
        с дизайнерами, они уже могли сделать это - поговорите с ними! Имена их слоев в Photoshop могут оказаться
        именами ваших компонентов React!
    </p>

    <p>
        Но как же понять, каков должен быть компонент? Используйте те же принципы, как если бы
        вы создавали новую функцию или объект. Одним из таких является принцип единой
        ответственности, то есть в идеале компонент должен делать что-то одно. Если код компонента
        слишком разрастается, последний должен быть разбит на меньшие подкомпоненты.
    </p>
    
    <ad:ad-content-banner-1/>

    <p>
        В приложениях вы часто показываете свою модель данных JSON пользователю. Можно обнаружить,
        что если ваша модель была построена правильно, то ваш UI (а также структура вашего
        компонента) будет иметь приятный вид. Это связано с тем, что UI и модели данных имеют
        тенденцию придерживаться одной и той же информационной архитектуры. А это означает, что
        разделить ваш UI на компоненты, зачастую тривиально. Просто разделите его на
        компоненты, которые представляют ровно одну часть вашей модели данных.
    </p>

    <p class="text-center">
        <wg:img src="${separatingUIMockUrl}"/>
    </p>

    <p>
        Как видно из рисунка, в нашем простом приложении есть пять компонентов. Выделим
        курсивом данные, представленные каждым них.
    </p>
    
    <br/>
    
    <ul>
        <li>
            <p>
                <code>FilterableProductTable</code> (<span style="color: orange">оранжевый</span>): содержит контент примера
            </p>
        </li>
        <li>
            <p>
                <code>SearchBar</code> (<span style="color: blue">голубой</span>): принимает <i>весь пользовательский ввод</i>
            </p>
        </li>
        <li>
            <p>
                <code>ProductTable</code> (<span style="color: green">зеленый</span>): отображает и
                фильтрует <i>коллекцию данных</i>, основанную на <i>пользовательском вводе</i>
            </p>
        </li>
        <li>
            <p>
                <code>ProductCategoryRow</code> (<span style="color: aqua">бирюзовый</span>): отображает заголовок каждой <i>категории</i>
            </p>
        </li>
        <li>
            <p>
                <code>ProductRow</code> (<span style="color: red">красный</span>): отображает строку каждого <i>продукта</i>
            </p>
        </li>
    </ul>
    
    <br/>

    <p>
        Глядя на <code>ProductTable</code>, можно увидеть, что заголовок таблицы (содержащий надписи «Name» и
        «Price») сам по себе не является компонентом. На самом деле это можно реализовать любым способом, тут лишь вопрос
        предпочтения. В этом примере мы оставили его как часть <code>ProductTable</code>, потому что он
        является частью процесса отрисовки коллекции данных, что является ответственностью <code>ProductTable</code>.
        Однако, если этот заголовок становится сложным (т. е. если мы будем добавлять возможности для
        сортировки), разумно сделать его отдельным компонентом <code>ProductTableHeader</code>.
    </p>

    <p>
        Теперь, когда мы определили компоненты на нашем макете, давайте организуем их в иерархию.
        Это легко. Компоненты, которые на макете расположены внутри другого компонента, должны
        отображаться в иерархии, как его дочерние компоненты:
    </p>
    
    <br/>
    
    <ul>
        <li>
            <p><code>FilterableProductTable</code></p>
            <ul>
                <li><p><code>SearchBar</code></p></li>
                <li>
                    <p><code>ProductTable</code></p>
                    <ul>
                        <li><p><code>ProductCategoryRow</code></p></li>
                        <li><p><code>ProductRow</code></p></li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.13.3 Шаг 2: Построим статическую версию приложения</h2>
    <br/>
    
    <p class="codepen" data-height="600" data-theme-id="0" data-default-tab="js,result" data-user="stzidane"
       data-slug-hash="XwpZad"
       style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;"
       data-pen-title="Thinking In React: Step 2">
        <span>
            See the Pen <a href="https://codepen.io/stzidane/pen/XwpZad/">Thinking In React:
            Step 2</a> by Sergey (<a href="https://codepen.io/stzidane">@stzidane</a>) on <a href="https://codepen.io">CodePen</a>.
        </span>
    </p>
    <script async src="https://static.codepen.io/assets/embed/ei.js"></script>
    
    <br/>
    
    <p>
        Теперь, когда у нас есть иерархия компонентов, можно реализовать наше приложение.
        Самым простым способом будет создать версию, которая просто берет вашу модель данных и
        отрисовывает UI без какой-либо интерактивности. Создание статической и интерактивной версий
        лучше разделить, потому что при создании статической версии больше времени уходит на то, чтобы писать код.
        Для добавления интерактивности, наоборот, требуется больше мыслительного процесса, чем печатной рутины.
        Сейчас поймёте почему.
    </p>

    <p>
        Чтобы создать статическую версию приложения, которое отображает модель данных,
        вам понядобятся компоненты, которые повторно используют другие компоненты и
        передают в них данные с помощью <code>props</code>. <code>props</code> - это способ передачи данных от родителя потомку.
        Если вы знакомы с концепцией состояния, <b>не используйте его</b> для создания статической версии.
        Состояние зарезервировано только для интерактивности, подразумевающей, что данные изменяются с течением времени.
        В статической версии данные не изменяются, значит состояние не нужно.
    </p>

    <p>
        Начать создавать компоненты вы можете как сверху вниз, так снизу вверх. То есть можно начать с компонентов,
        стоящих выше в иерархии (то есть с <code>FilterableProductTable</code>) или с нижних
        (<code>ProductRow</code>). В простых примерах обычно легче идти сверху вниз. В более крупных проектах
        легче идти снизу вверх и по мере создания компонентов писать тесты.
    </p>

    <p>
        В конце этого шага у вас будет библиотека повторно используемых компонентов, которые
        отображают вашу модель данных. Так как это статическая версия приложения, компоненты будут иметь
        только методы <code>render()</code>. Компонент на вершине иерархии (<code>FilterableProductTable</code>)
        будет принимать вашу модель данных через <code>props</code>. Если вы внесете изменения в свою базовую модель
        данных, а затем вызовете <code>ReactDOM.render()</code>, UI будет обновлен. Легко понять, как обновляется
        ваш UI и где вносить изменения, так как тут нет никаких сложных механизмов (вроди интерактивности). С
        помощью <b>одностороннего потока данных</b> React (также называемого <b>односторонней привязкой</b>) всё
        становится модульным и быстрым.
    </p>

    <br/>
    <h3>2.13.3.1 Краткая памятка: Props vs State</h3>

    <p>
        Существует два типа "модельных" данных в React: свойства (<code>props</code>) и состояние (<code>state</code>).
        Важно, чтобы вы понимали различие между ними, в противном случае просмотрите документацию React.
    </p>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.13.4 Шаг 3: Определим минимальное (но полное) представление состояния UI</h2>
    <br/>

    <p>
        Чтобы сделать UI интерактивным, вы должны иметь возможность инициировать изменения
        в своей базовой модели данных. React облегчает это, используя состояние <code>state</code>.
    </p>

    <p>
        Чтобы правильно создать приложение, сначала нужно подумать о минимальном наборе данных изменяемого
        состояния, которое требуется вашему приложению. <b>Совет здесь прост: не повторяйтесь!</b> Выясните
        абсолютно минимальное представление состояния, которое требуется вашему приложению, а все остальное,
        что вам нужно, вычисляйте. Например, если вы создаете список TODO, просто
        сохраняйте массив элементов TODO. Не сохраняйте в состоянии отдельную переменную для размера
        списка. Вместо этого, когда вы хотите отобразить размер списка, просто возьмите длину
        массива его элементов.
    </p>
    
    <ad:ad-content-banner-2/>

    <p>
        Необходимо подумать обо всех частях данных в нашем примере приложения. У нас есть:
    </p>
    
    <ul>
        <li>Оригинальный список продуктов.</li>
        <li>Текст поиска, введенный пользователем.</li>
        <li>Значение чекбокса.</li>
        <li>Отфильтрованный список продуктов.</li>
    </ul>

    <p>
        Давайте рассмотрим каждую из них и выясним, какая является состоянием.
        Просто задайте три вопроса о каждой части данных:
    </p>
    
    <ol>
        <li>Передается ли она от родителя через <code>props</code>? Если это так, вероятно, это не состояние.</li>
        <li>Со временем она остается неизменной? Если это так, вероятно, это не состояние.</li>
        <li>Вы можете вычислить ее на основании любой другой части состояния или свойств в своем
            компоненте? Если это так, это не состояние.</li>
    </ol>

    <p>
        Исходный список продуктов передается как <code>props</code>, поэтому он не является состоянием. Текст поиска
        и чекбокс, похоже, находятся в состоянии, так как они меняются со временем и не могут быть
        вычислены из чего-либо. И, наконец, отфильтрованный список продуктов не является состоянием, потому
        что его можно вычислить, использовав исходный список продуктов с текстом поиска и значением чекбокса.
    </p>

    <p><b>Итак, наше состояние:</b></p>
    
    <ul>
        <li>Текст поиска, введенный пользователем</li>
        <li>Значение чекбокса</li>
    </ul>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.13.5 Шаг 4: Определите, где должно находиться ваше состояние</h2>
    <br/>

    <p>
        Посмотрите <a href="${thinkingInReactStep4Url}">Мышление в React: Шаг 4</a> в CodePen.
    </p>

    <p>
        Итак мы определили, что такое минимальный набор состояния приложения. Далее нам нужно
        определить, какой компонент владеет этим состоянием и изменяет его.
    </p>

    <p>
        Помните: React предоставляет односторонний поток данных по иерархии компонентов.
        Может быть сразу не понятно, какой компонент каким состоянием должен владеть. Часто
        это основная трудность у новичков, поэтому выполните следующие шаги, чтобы получить
        полное понимание:
    </p>

    <p>
        Для каждой части состояния в вашем приложении:
    </p>
    
    <ul>
        <li>
            Определите каждый компонент, который отображает что-то на основе состояния.
        </li>
        <li>
            Найдите общий компонент-владелец (единственный компонент, расположенный выше всех компонентов в
            иерархии, которым требуется состояние).
        </li>
        <li>
            Состоянием должен обладать либо общий компонент-владелец, либо компонент, находящийся выше в иерархии.
        </li>
        <li>
            Если вы не можете найти компонент, который имеет смысл наделить состоянием, просто создайте новый
            компонент для хранения состояния и добавьте его в иерархию где-нибудь выше общего компонента-владельца.
        </li>
    </ul>

    <p>Давайте применим эту стратегию для нашего приложения:</p>
    
    <ul>
        <li>
            <code>ProductTable</code> должен фильтровать список продуктов на основе состояния, а <code>SearchBar</code>
            должен отображать текст поиска и состояние чекбокса.
        </li>
        <li>
            Общим компонентом-владельцем является <code>FilterableProductTable</code>.
        </li>
        <li>
            Концептуально тексту фильтра и значению чекбокса имеет смысл находиться в <code>FilterableProductTable</code>
        </li>
    </ul>

    <p>
        Итак мы решили, что наше состояние будет жить в <code>FilterableProductTable</code> компоненте.
        Во-первых, добавьте свойство экземпляра <code>this.state = {filterText: '', inStockOnly: false}</code> в
        конструктор <code>FilterableProductTable</code>, чтобы отразить начальное состояние вашего приложения. Затем
        передайте <code>filterText</code> и <code>inStockOnly</code> в <code>ProductTable</code> и
        <code>SearchBar</code> в качестве <code>props</code>. Наконец, используйте
        <code>props</code> для фильтрации строк в <code>ProductTable</code> и установите значения
        полей формы в <code>SearchBar</code>.
    </p>

    <p>
        Вы можете посмотреть, как будет вести себя ваше приложение: установите
        <code>filterText</code> в <code>"ball"</code> и обновите приложение. Вы увидите, что таблица
        данных обновлена правильно.
    </p>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.13.6 Шаг 5: Добавьте обратный поток данных</h2>
    <br/>

    <p>
        Посмотрите <a href="${thinkingInReactStep5Url}">Мышление в React: Шаг 5</a> в CodePen.
    </p>

    <p>
        До сих пор мы создавали приложение, как функцию свойств <code>props</code> и состояния <code>state</code>,
        стекающих вниз по иерархии. Теперь пришло время организовать поток данных в обратную сторону:
        компонентам формы в глубине иерархии необходимо обновить состояние в <code>FilterableProductTable</code>.
    </p>

    <p>
        React делает этот поток данных явным, чтобы было легче понять, как работает ваша программа,
        но для этого требуется немного больше кода, чем в традиционной двусторонней привязке данных.
    </p>

    <p>
        Если вы попытаетесь ввести текст или установить флажок в текущей версии примера,
        вы увидите, что React проигнорирует ваш ввод. Это преднамеренно, так как мы установили,
        чтобы свойство <code>value</code> элемента <code>input</code> всегда было равно значению из состояния <code>state</code>,
        переданному из <code>FilterableProductTable</code>.
    </p>

    <p>
        Давайте подумаем о том, что мы хотим получить. Мы хотим убедиться, что всякий раз,
        когда пользователь изменяет форму, мы обновляем состояние, чтобы отображать
        ввод пользователя. Поскольку компоненты должны обновлять только собственное состояние,
        <code>FilterableProductTable</code> будет передавать коллбэки в <code>SearchBar</code>, которые будут срабатывать
        при каждом обновлении состояния. Мы можем использовать событие <code>onChange</code> на элементах
        <code>input</code>, чтобы получать уведомление об этом. Коллбэки, переданные компонентом
        <code>FilterableProductTable</code>, вызовут <code>setState()</code>, и приложение будет обновлено.
    </p>

    <p>
        Звучит сложно, но на самом деле это всего лишь несколько строк кода, и вам всегда
        действительно ясно, как ваши данные текут во всем приложении.
    </p>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>2.13.7 Вот и всё</h2>
    <br/>

    <p>
        Разработчики надеются, что эта информация даст вам представление о том, каким образом думать во время создания
        компонентов и приложений с помощью React. Хотя может потребоваться немного больше кодирования,
        чем вы привыкли, помните, что код читается гораздо больше, чем пишется. Очень легко прочитать
        этот модульный, ясный код. Когда вы начнете создавать большие библиотеки компонентов, вы оцените
        эту ясность и модульность, а с повторным использованием кода ваш собственный код начнёт сокращаться. :)
    </p>
</div>

<c:url var="prevPageUrl" value="composition-vs-inheritance"/>
<c:url var="nextPageUrl" value="/core/topics"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>