<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/fragmentsImprovedSupport" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="stackTrace1ImgUrl"
       value="/resources/imges/pages/updates/errorHandlingInReact16/component_stack_trace_1.png"/>
<c:url var="stackTrace2ImgUrl"
       value="/resources/imges/pages/updates/errorHandlingInReact16/component_stack_trace_2.png"/>

<c:url var="createReactAppUrl" value="https://github.com/facebookincubator/create-react-app"/>
<c:url var="transformPluginUrl" value="https://www.npmjs.com/package/babel-plugin-transform-react-jsx-source"/>
<c:url var="codeModeUrl" value="https://github.com/reactjs/react-codemod#error-boundaries"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page react-v16.2.0-fragments-improved-support-page">
    <h1>React v16.2.0: Улучшенная поддержка фрагментов</h1>

    <wg:p><b>Ноябрь 28, 2017 Клемент Хонг</b></wg:p>

    <wg:p>
        <b>React 16.2 теперь доступен!</b> Самым большим дополнением является улучшенная поддержка
        возврата нескольких дочерних элементов из метода отрисовки(рендеринга) компонента.
        Мы называем эту возможность <b>фрагментами</b>.
    </wg:p>

    <wg:p>Фрагменты выглядят как пустые теги JSX. Они позволяют группировать список дочерних
        элементов без добавления дополнительных узлов в DOM:</wg:p>

    <ce:code-example-1/>

    <wg:p>Эта потрясающая новая функция стала возможной благодаря дополнениям как к React,
        так и к JSX.</wg:p>

    <h2>Что такое фрагменты?</h2>

    <wg:p>Общим примером является компонент, который возвращает список дочерних
        элементов. Рассмотрим данный пример HTML:</wg:p>

    <ce:code-example-2/>

    <wg:p>До версии 16 единственным способом достичь этого в React было обертывание
        потомков в дополнительный элемент, обычно <code>div</code> или <code>span</code>:</wg:p>

    <ce:code-example-3/>

    <wg:p>Чтобы устранить это ограничение, в React 16.0 была добавлена поддержка
        возврата массива элементов из метода отрисовки компонента. Вместо того,
        чтобы обертывать дочерние элементы в элемент DOM, вы можете поместить их в массив:</wg:p>

    <ce:code-example-4/>

    <wg:p>Однако такой подход имеет некоторые значительные отличия от обычного JSX:</wg:p>

    <wg:p>
        <ul>
            <li>Потомки в массиве должны быть разделены запятыми.</li>
            <li>У потомков в массиве должен быть ключ, предотвращающий React предупреждения в консоли.</li>
            <li>Строки должны быть заключены в кавычки.</li>
        </ul>
    </wg:p>

    <wg:p>Чтобы обеспечить наиболее совместимую разработку фрагментов, React теперь предоставляет
        первоклассный компонент <code>Fragment</code>, который можно использовать вместо массивов.</wg:p>

    <ce:code-example-5/>

    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
    <wg:p></wg:p>
</lt:layout>