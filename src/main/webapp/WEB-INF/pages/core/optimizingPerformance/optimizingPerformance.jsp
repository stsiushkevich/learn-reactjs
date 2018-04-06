<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/optimizing-performance" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="prodModeUrl" value="/resources/imges/pages/core/optimizing-performance/production-mode.png"/>
<c:url var="devModeUrl" value="/resources/imges/pages/core/optimizing-performance/development-mode.png"/>
<c:url var="profilingUrl" value="/resources/imges/pages/core/optimizing-performance/profiling.png"/>
<c:url var="treeUrl" value="/resources/imges/pages/core/optimizing-performance/tree.png"/>
<c:url var="reactVirtualizedUrl" value="https://bvaughn.github.io/react-virtualized/#/components/List"/>
<c:url var="chromeExtentionUrl" value="https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en"/>
<c:url var="chromeExtentionUrl" value="https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en"/>
<c:url var="firefoxExtentionUrl" value="https://addons.mozilla.org/en-GB/firefox/addon/react-devtools/"/>
<c:url var="standalodeExtentionUrl" value="https://www.npmjs.com/package/react-devtools"/>
<c:url var="devConsolenUrl" value="https://reactjs.org/static/devtools-highlight-updates-97eda4825de476af4515435a0c36ca78-acf85.png"/>
<c:url var="blogPostUrl" value="https://blog.logrocket.com/make-react-fast-again-part-3-highlighting-component-updates-6119e45e6833"/>
<c:url var="edelsteinUrl" value="https://blog.logrocket.com/@edelstein"/>
<c:url var="highlightUpdatesUrl" value="https://reactjs.org/highlight-updates-example-7a42123e91b1b460b1a65605d6ff0d2b.gif"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>3.5 Оптимизация производительности</h1>

  <wg:p>Внутри React использует несколько умных подходов, чтобы минимизировать
    количество дорогостоящих операций DOM, необходимых для обновления пользовательского интерфейса.
    Для многих приложений использование React приведет к созданию быстрого пользовательского интерфейса,
    не выполняя много работы, чтобы специально оптимизировать производительность. Тем не менее, есть
    несколько способов ускорить ваше приложение React.</wg:p>

  <br/>
  <h2>3.5.1 Использование сборки Production</h2>

  <wg:p>Если вы проводите бенчмаркинг или испытываете проблемы с производительностью в
    своих приложениях React, убедитесь, что вы работаете с минифицированной <b>production</b>-сборкой.</wg:p>

  <wg:p>По умолчанию React содержит много полезных предупреждений. Эти предупреждения очень
    полезны в разработке. Тем не менее, они делают React приложение больше и медленнее,
    поэтому вы должны использовать <b>production</b>-версию при развертывании приложения.</wg:p>

  <wg:p>Если вы не уверены, правильно ли настроен процесс сборки, вы можете проверить это,
    установив React Developer Tools для Chrome. Если вы заходите на сайт с React в режиме <b>production</b>,
    значок будет иметь темный фон:</wg:p>

  <wg:p cssClass="text-center" style="overflow-x: auto">
    <wg:img src="${prodModeUrl}"/>
  </wg:p>

  <wg:p>Если вы заходите на сайт с React в <b>режиме разработки</b>, значок будет иметь красный фон:</wg:p>

  <wg:p cssClass="text-center" style="overflow-x: auto">
    <wg:img src="${devModeUrl}"/>
  </wg:p>

  <wg:p>Ожидается, что вы используете режим <b>development</b> при работе с вашим приложением и режим <b>production</b>
    при развертывании приложения для пользователей.</wg:p>

  <wg:p>Ниже вы можете найти инструкции по созданию своего приложения для <b>production</b>.</wg:p>

  <br/>
  <h2>3.5.2 Создание приложения React</h2>

  <wg:p>Если ваш проект построен с помощью приложения
    <wg:link href="https://github.com/facebookincubator/create-react-app">Create React</wg:link>, запустите:</wg:p>

  <ce:code-example-1/>

  <wg:p>Это создаст <b>production</b> сборку вашего приложения в сборке / папке вашего проекта.</wg:p>

  <wg:p>Помните, что это необходимо только перед развертыванием в <b>production</b>.
    Для нормальной разработки используйте <b>npm start</b>.</wg:p>

  <br/>
  <h2>3.5.3 Однофайловые сборки</h2>

  <wg:p>Предлагаются готовые версии React и React DOM в виде отдельных файлов:</wg:p>

  <ce:code-example-2/>

  <wg:p>Помните, что только файлы React, заканчивающиеся на <code>.min.js</code>,
    подходят для production.</wg:p>

  <br/>
  <h2>3.5.4 Бранч (Brunch)</h2>

  <wg:p>Для самой эффективной production сборки бранча установите
    плагин <b>uglify-js-brunch</b>:</wg:p>

  <ce:code-example-3/>

  <wg:p>Затем, чтобы создать <b>production</b> сборку, добавьте флаг <code>-p</code>
    в команду сборки:</wg:p>

  <ce:code-example-4/>

  <wg:p>Помните, что вам нужно сделать это только для production сборок.
    Вы не должны передавать флаг -p или применять этот плагин в разработке,
    потому что он скроет полезные предупреждения React и сделает сборки намного медленнее.</wg:p>

  <br/>
  <h2>3.5.5 Browserify</h2>

  <wg:p>Для наиболее эффективной сборки сборки Browserify установите несколько плагинов:</wg:p>

  <ce:code-example-5/>

  <wg:p>Чтобы создать production сборку, убедитесь, что вы
    добавили эти преобразования (порядок имеет значение):</wg:p>

  <wg:p>
    <ul>
      <li>Преобразование <b>envify</b> обеспечивает правильную среду сборки.
        Сделайте его глобальным (<code>-g</code>).</li>
      <li>Преобразование <b>uglifyify</b> устраняет импорты, добавленные на стадии разработки.
        Сделайте его глобальным (<code>-g</code>).</li>
      <li>Наконец, результирующая связка передается по каналу в <b>uglify-js</b> для минификации.</li>
    </ul>
  </wg:p>

  <wg:p>К примеру:</wg:p>

  <ce:code-example-6/>

  <lt:layout cssClass="alert alert-warning">
    <b>Обратите внимание!</b> Имя пакета - <b>uglify-js</b>, но двоичный файл, который он
    предоставляет, называется <b>uglifyjs</b>. Это не опечатка.
  </lt:layout>

  <wg:p>Помните, что вам нужно сделать это только для production сборок. Вы не должны
    применять эти плагины в разработке, потому что они будут скрывать полезные
    предупреждения React и делать сборки намного медленнее.</wg:p>

  <br/>
  <h2>3.5.6 Rollup</h2>

  <wg:p>Для наиболее эффективной <b>production</b> сборки Rollup установите несколько плагинов:</wg:p>

  <ce:code-example-7/>

  <wg:p>Чтобы создать  сборку, убедитесь, что вы добавляете эти
    плагины (<b>порядок имеет значение</b>):</wg:p>

  <wg:p>
    <ul>
      <li>Плагин <b>replace</b> обеспечивает правильную среду сборки.</li>
      <li>Плагин <b>commonjs</b> обеспечивает поддержку <b>CommonJS</b> в Rollup.</li>
      <li>Плагин <b>uglify</b> сжимает и управляет финальной связкой (бандлом).</li>
    </ul>
  </wg:p>

  <ce:code-example-8/>

  <wg:p>Полный пример установки смотреть
    <wg:link href="https://gist.github.com/Rich-Harris/cb14f4bc0670c47d00d191565be36bf0">здесь</wg:link>.</wg:p>

  <wg:p>Помните, что вам нужно сделать это только для <b>production</b> сборок.
    Вы не должны применять плагин <code>uglify</code> или плагин <code>replace</code> со
    значением «<b>production</b>» в разработке, потому что они будут скрывать
    полезные предупреждения React и делать сборки намного медленнее.</wg:p>

  <br/>
  <h2>3.5.7 webpack</h2>

  <lt:layout cssClass="alert alert-warning">
    <b>Внимание!</b> Если вы используете приложение <b>Create React</b>, следуйте приведенным выше
     <wg:link href="https://facebook.github.io/react/docs/optimizing-performance.html#create-react-app">инструкциям</wg:link>.
    Этот раздел имеет значение только, если вы конфигурируете <b>webpack</b> напрямую.
  </lt:layout>

  <wg:p>Для создания наиболее эффективной <b>webpack production</b> сборки обязательно
    включите эти плагины в свою production конфигурацию:</wg:p>

  <ce:code-example-9/>

  <wg:p>Об этом вы можете узнать в документации по
    <wg:link href="https://webpack.js.org/guides/production/">webpack</wg:link>.</wg:p>

  <wg:p>Помните, что вам нужно только сделать это для <b>production</b> сборок. Вы не должны
    применять <code>UglifyJsPlugin</code> или <code>DefinePlugin</code> со значением '<b>production</b>' в разработке,
    потому что они будут скрывать полезные предупреждения React и делать сборки намного медленнее.</wg:p>

  <br/>
  <h2>3.5.8 Профилирование компонентов с помощью вкладки
    «Производительность Chrome»</h2>

  <wg:p>В режиме <b>development</b> вы можете визуализировать, как компоненты монтируются,
    обновляются и демонтируются, используя инструменты производительности в поддерживаемых браузерах. Например:</wg:p>

  <wg:p style="overflow-x: auto">
    <wg:img src="${profilingUrl}"/>
  </wg:p>


  <wg:p>Чтобы сделать это в Chrome:</wg:p>

  <wg:p>
    <ul>
      <li>
        Временно отключите все расширения Chrome, особенно React DevTools. Они могут
        значительно исказить результаты!
      </li>
      <li>Убедитесь, что вы запускаете приложение в режиме разработки.</li>
      <li>Загрузите ваше приложение с помощью <code>?react_perf</code> в строке запроса
        (например, <code>http://localhost:3000/?react_perf</code>).</li>
      <li>Откройте вкладку «<b>Performance</b>» в Chrome DevTools и нажмите «<b>Record</b>».</li>
      <li>Выполните действия, которые вы хотите профилировать. Не записывайте более 20 секунд или Chrome будет зависать.</li>
      <li>Остановите запись.</li>
      <li>События React будут сгруппированы под меткой <b>User Timing</b>.</li>
    </ul>
  </wg:p>

  <wg:p>Обратите внимание, что цифры относительны, поэтому компоненты будут
    быстрее отрисовываться в <b>production</b>. Тем не менее, это должно помочь вам понять,
    когда не связанный пользовательский интерфейс обновляется по ошибке, а также
    насколько глубоко и насколько часто обновляются ваши пользовательские интерфейсы.</wg:p>

  <wg:p>В настоящее время Chrome, Edge и IE являются единственными браузерами,
    поддерживающими эту функцию, но можно использовать стандартный
    <wg:link href="https://developer.mozilla.org/en-US/docs/Web/API/User_Timing_API">User Timing API</wg:link>.</wg:p>

  <br/>
  <h2>3.5.9 Виртуализация длинных списков</h2>

  <wg:p>
    Если ваше приложение отображает длинные списки данных (сотни или тысячи строк), мы рекомендуем
    использовать метод, известный как «экранирование». Этот метод отрисовывает только небольшое
    подмножество ваших строк в данный момент времени и может значительно сократить время, необходимое
    для повторной переотрисовки компонентов, а также количество создаваемых узлов DOM.
  </wg:p>

  <wg:p>
    <wg:link href="${reactVirtualizedUrl}">React Virtualized</wg:link> - популярная библиотека для экранирования. Она предоставляет несколько
    повторно используемых компонентов для отображения списков, гридов и табличных данных. Вы
    также можете создать свой собственный экранирующий компонент, как это сделано в Twitter,
    если желаете что-то более специфическое для вашего конкретного случая.
  </wg:p>

  <br/>
  <h2>3.5.10 Избежание согласования</h2>

  <wg:p>React строит и поддерживает внутреннее представление отображаемого
    пользовательского интерфейса. Оно включает элементы React, которые вы
    возвращаете из своих компонентов. Это представление позволяет React избегать
    создания узлов DOM и доступа к существующим узлам без необходимости, поскольку
    это может быть гораздо медленнее, чем те же операции над простыми объектами JavaScript.
    Иногда его называют «виртуальным DOM», и оно работает аналогично в React Native.</wg:p>

  <wg:p>Когда свойства или состояние компонента изменяются, React решает, требуется
    ли фактическое обновление DOM, сравнивая вновь возвращенный элемент с ранее отображаемым.
    Когда они не равны, React обновит DOM.</wg:p>

  <wg:p>
    Вы можете визуализировать эти перерисовки виртуального DOM с помощью React DevTools:
  </wg:p>

  <wg:p>
    <ul>
      <li><wg:link href="${chromeExtentionUrl}">Chrome Browser Extension</wg:link></li>
      <li><wg:link href="${firefoxExtentionUrl}">Firefox Browser Extension</wg:link></li>
      <li><wg:link href="${standalodeExtentionUrl}">Standalone Node Package</wg:link></li>
    </ul>
  </wg:p>

  <wg:p>
    В консоли разработчика выберите параметр «<code>Highlight Updates</code>»
    на вкладке «<code>React</code>»:
  </wg:p>

  <wg:p cssClass="text-center" style="overflow-x: auto">
    <wg:img src="${devConsolenUrl}"/>
  </wg:p>

  <wg:p>
    Взаимодействуя со своей страницей, вы должны увидеть, что вокруг любых
    компонентов, которые были переотрисованы, мгновенно появляются цветные границы.
    Это позволяет вам выявлять повторные отрисовки, которые не были необходимыми. Вы
    можете узнать больше о функции <b>React DevTools</b> из
    <wg:link href="${blogPostUrl}">этого поста</wg:link> в блоге от <wg:link href="${edelsteinUrl}">Ben Edelstein</wg:link>.
  </wg:p>

  <wg:p>Рассмотрим этот пример:</wg:p>

  <wg:p cssClass="text-center" style="overflow-x: auto">
    <wg:img src="${highlightUpdatesUrl}"/>
  </wg:p>

  <wg:p>
    Обратите внимание, что когда мы вводим второе todo, первое todo также мигает
    на экране при каждом нажатии клавиши. Это означает, что он повторно отрисовывается React-ом
    вместе с элементом input. Это иногда называют «напрасной/бесполезной» отрисовкой. То есть
    мы знаем, что повторная отрисовка необязательна, так как контент первого todo не изменился.
    Но React об этом не знает, из-за чего и возникает такой эффект.
  </wg:p>

  <wg:p>
    Несмотря на то, что React обновляет только измененные узлы DOM, переотрисовка все же
    занимает некоторое время. Во многих случаях это не вызывает проблем, но если замедление заметно,
    вы можете все это ускорить, переопределив метод жизненного цикла <code>shouldComponentUpdate()</code>,
    который запускается до начала процесса повторной
    отрисовки. Реализация этой функции по умолчанию возвращает <code>true</code>, указывая
    React выполнить обновление:
  </wg:p>

  <ce:code-example-10/>

  <wg:p>Если вы знаете, что в некоторых ситуациях ваш компонент не нуждается в
    обновлении, вы можете вместо этого вернуть <code>false</code> из <code>shouldComponentUpdate</code>,
    чтобы пропустить весь процесс отрисовки, включая вызов <code>render()</code> для этого
    компонента и ниже по иерархии.</wg:p>

  <wg:p>
    В большинстве случаев вместо записи <code>shouldComponentUpdate()</code> вручную вы
    можете наследоваться от <code>React.PureComponent</code>. Это эквивалентно реализации <code>shouldComponentUpdate()</code>
    с неглубоким сравнением текущих и предыдущих <code>props</code> и <code>state</code>.
  </wg:p>

  <br/>
  <h2>3.5.10 shouldComponentUpdate в действии</h2>

  <wg:p>Вот поддерево компонентов. Для каждого из них <code>SCU</code> указывает, что
    возвратил <code>shouldComponentUpdate</code>, а <code>vDOMEq</code> указывает, эквивалентны
    ли отображаемые элементы React. Наконец, цвет круга указывает, должен ли компонент
    быть согласован или нет.</wg:p>

  <wg:p style="overflow-x: auto">
    <wg:img src="${treeUrl}"/>
  </wg:p>

  <wg:p>Так как <code>shouldComponentUpdate</code> возвратил <code>false</code> для
    поддерева с корнем <code>C2</code>, React не попытался отрисовать <code>C2</code>, и,
    следовательно, даже не нужно было вызывать <code>shouldComponentUpdate</code>
    на <code>C4</code> и <code>C5</code>.</wg:p>

  <wg:p>Для <code>C1</code> и <code>C3</code> <code>shouldComponentUpdate</code>
    вернул <code>true</code>, поэтому React
    пришлось спуститься к листьям и проверить их. Для <code>C6</code> <code>shouldComponentUpdate</code>
    вернул <code>true</code>, и поскольку отображаемые элементы не были
    эквивалентны, React должен был обновить DOM.</wg:p>

  <wg:p>Последний интересный случай - <code>C8</code>. React должен был отобразить этот компонент,
    но поскольку возвращаемые им элементы React были равны ранее предоставленным,
    ему не нужно было обновлять DOM.</wg:p>

  <wg:p>Обратите внимание, что React должен был делать DOM-изменения только для <code>C6</code>,
    что было неизбежно. Для <code>C8</code> этого удалось избежать сравнением отрисовываемых
    элементов React, а для поддеревьев <code>C2</code> и <code>C7</code>, даже не пришлось сравнивать элементы,
    так как нас выручил <code>shouldComponentUpdate</code> и отрисовка не вызвалась.</wg:p>

  <br/>
  <h2>3.5.11 Примеры</h2>

  <wg:p>Если единственный способ изменения вашего компонента – когда переменная <code>props.style</code>
    или <code>state.value</code> изменяется, вы могли бы выполнить проверку
    в <code>shouldComponentUpdate</code> как:</wg:p>

  <ce:code-example-11/>

  <wg:p>В этом коде <code>shouldComponentUpdate</code> просто проверяет, есть ли какие-либо
    изменения в <code>props.style</code> или <code>state.value</code>. Если эти значения не изменяются,
    компонент не обновляется. Если ваш компонент стал более сложным, вы можете
    использовать аналогичную схему «поверхностного сравнения» между всеми
    полями <code>props</code> и <code>state</code>, чтобы определить, должен ли компонент обновляться. </wg:p>

  <wg:p>Этот шаблон настолько распространен, так что React предоставляет помощника
    для использования данной логики - просто наследуйтесь от <code>React.PureComponent</code>.
    Таким образом, следующий код - более простой способ добиться того же эффекта:</wg:p>

  <ce:code-example-12/>

  <wg:p>В большинстве случаев вы можете использовать <code>React.PureComponent</code> вместо
    написания собственного <code>shouldComponentUpdate</code>. Он делает только неглубокое сравнение,
    поэтому вы не можете использовать его, если <code>props</code> или <code>state</code> могут быть изменены таким
    образом, что нечеткое сравнение будет пропущено.</wg:p>

  <wg:p>Это может быть проблемой для более сложных структур данных. Предположим, что вы хотите,
    чтобы компонент <code>UserList</code> отображал список пользователей, разделенных запятыми, с родительским
    компонентом <code>UserAdmin</code>, который позволяет вам щелкнуть кнопку, чтобы добавить очередного
    пользователя в список. Этот код работает неправильно:</wg:p>

  <ce:code-example-13/>

  <wg:p>Проблема в том, что <code>PureComponent</code> выполнит простое сравнение старых и
    новых значений <code>this.props.users</code>. Поскольку этот код изменяет массив слов в
    методе <code>onAddUser</code> компонента <code>UserAdmin</code>, старые и новые значения <code>this.props.users</code>
    при сравнении будут одинаковы, даже если фактические пользователи в массиве
    изменились. Массив, а следовательно и ссылка на него остались теми же.
    Таким образом, <code>UserList</code> не будет обновляться, даже если он содержит новых
    пользователей, которые должны быть отображены.</code></wg:p>

  <br/>
  <h2>3.5.12	Мощь неизменяющихся данных</h2>

  <wg:p>Самый простой способ избежать этой проблемы - избежать изменения
  значений, которые вы используете в качестве <code>props</code> или <code>state</code>. Например,
  описанный выше метод <code>onAddUser</code> можно переписать с помощью concat вот так:</wg:p>

  <ce:code-example-14/>

  <wg:p>ES6 поддерживает spread синтаксис для массивов, который может сделать это проще.
    Если вы используете приложение
    <wg:link href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_operator">Create React App</wg:link> ,
    этот синтаксис доступен по умолчанию.</wg:p>

  <ce:code-example-15/>

  <wg:p>Вы также можете переписать код, который изменяет объекты,
    чтобы избежать изменения, аналогичным образом. Предположим, что у
    нас есть объект с именем <code>user</code>, и мы хотим написать функцию, которая
    устанавливает <code>user.email</code> в передаваемое значение. Мы могли бы написать:</wg:p>

  <ce:code-example-16/>

  <wg:p>Чтобы написать это без изменения исходного объекта,
    мы можем использовать метод  <code>Object.assign</code>:</wg:p>

  <ce:code-example-17/>

  <wg:p><code>updateUserEmail</code> теперь возвращает новый объект,
    а не изменяет старый. <code>Object.assign</code> входит в ES6 и требует полифила.</wg:p>

  <wg:p>JavaScript предоставляет <code>spread</code> оператор для добавления свойств объекта,
    чтобы упростить его обновление без изменения:</wg:p>

  <ce:code-example-18/>

  <wg:p>Если вы используете приложение Create React, по умолчанию доступны
    как <code>Object.assign</code>, так и синтаксис <code>spread</code> для объектов.</wg:p>

  <br/>
  <h2>3.5.13	Использование неизменяемых структур данных</h2>

  <wg:p><wg:link href="https://github.com/facebook/immutable-js">Immutable.js</wg:link> - еще один
    способ решить эту проблему. Он предоставляет неизменные, постоянные
    коллекции, которые работают через совместное использование структуры:</wg:p>

  <wg:p>
    <ul>
      <li><b>Неизменяемость</b>: после создания коллекция не может быть изменена в любой другой момент времени.</li>
      <li><b>Постоянство</b>: новые коллекции могут быть созданы из предыдущей коллекции и изменения, такого как <code>set</code>.
        Оригинальная коллекция по-прежнему действительна после создания новой коллекции.</li>
      <li><b>Совместное использование структуры</b>: новые коллекции создаются с использованием
        такой же структуры, как и исходная коллекция, что позволяет сократить количество
        копий до минимума для повышения производительности.</li>
    </ul>
  </wg:p>

  <wg:p>Неизменность делает отслеживание изменений дешевым. Изменение всегда приведет к созданию
    нового объекта, поэтому нам нужно только проверить, изменилась ли ссылка на объект.
    Например, в этом обычном JavaScript-коде:</wg:p>

  <ce:code-example-19/>

  <wg:p>Несмотря на то, что <code>b</code> был отредактирован, поскольку это ссылка на тот же объект,
    что и <code>a</code>, это сравнение возвращает <code>true</code>. Вы можете написать
    аналогичный код с <b>immutable.js</b>:</wg:p>

  <ce:code-example-20/>

  <wg:p>В этом случае, поскольку при изменении a возвращается новая ссылка,
    мы можем с уверенностью сказать, что a изменился.</wg:p>

  <wg:p>Есть две другие библиотеки, которые могут помочь использовать
    неизменяемые данные:
    <wg:link href="https://github.com/rtfeldman/seamless-immutable">seamless-immutable</wg:link> и
    <wg:link href="https://github.com/kolodny/immutability-helper">immutability-helper</wg:link>.</wg:p>

  <wg:p>Неизменяемые структуры данных предоставляют вам дешевый способ отслеживания изменений объектов, и все,
    что вам нужно для реализации <code>shouldComponentUpdate</code>. Это может дать вам
    хороший прирост производительности.</wg:p>
</lt:layout>

<c:url var="prevPageUrl" value="uncontrolled-components"/>
<c:url var="nextPageUrl" value="react-without-es6"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>