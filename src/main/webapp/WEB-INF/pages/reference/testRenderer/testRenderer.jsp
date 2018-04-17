<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="rf" tagdir="/WEB-INF/tags/application/reference" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/reference/testRenderer" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page test-renderer-page">
    <h1>4.9	Тестовый отрисовщик</h1>

    <wg:p>Импорт:</wg:p>

    <ce:code-example-1/>

    <br/>
    <h2>4.9.1 Обзор</h2>

    <wg:p>Данный пакет предоставляет React отрисовщик, который может использоваться для отображения
        компонентов React в обычные JavaScript объекты, независимо от DOM или нативной мобильной среды.</wg:p>

    <wg:p>По существу, этот пакет делает простым запечатление снимка иерархии представлений платформы
        (аналогично дереву DOM), отрисованной React DOM или React Native компонентом без использования
        браузера или <wg:link href="https://github.com/tmpvar/jsdom">jsdom</wg:link>.</wg:p>

    <wg:p>Пример:</wg:p>

    <ce:code-example-2/>

    <wg:p>Вы также можете проанализировать результат вывода, чтобы найти определенные узлы и сделать
        утверждения о них.</wg:p>

    <ce:code-example-3/>

    <wg:p><b>TestRenderer</b></wg:p>

    <wg:p>
        <ul>
            <li><code>TestRenderer.create()</code></li>
        </ul>
    </wg:p>

    <wg:p><b>TestRenderer instance</b></wg:p>

    <wg:p>
        <ul>
            <li><code>testRenderer.toJSON()</code></li>
            <li><code>testRenderer.toTree()</code></li>
            <li><code>testRenderer.update()</code></li>
            <li><code>testRenderer.unmount()</code></li>
            <li><code>testRenderer.getInstance()</code></li>
            <li><code>testRenderer.root</code></li>
        </ul>
    </wg:p>

    <wg:p><b>TestInstance</b></wg:p>

    <wg:p>
        <ul>
            <li><code>testInstance.find()</code></li>
            <li><code>testInstance.findByType()</code></li>
            <li><code>testInstance.findByProps()</code></li>
            <li><code>testInstance.findAll()</code></li>
            <li><code>testInstance.findAllByType()</code></li>
            <li><code>testInstance.findAllByProps()</code></li>
            <li><code>testInstance.instance</code></li>
            <li><code>testInstance.type</code></li>
            <li><code>testInstance.props</code></li>
            <li><code>testInstance.parent</code></li>
            <li><code>testInstance.children</code></li>
        </ul>
    </wg:p>

    <br/>
    <h2>4.9.2 Справка</h2>

    <rf:definition title="TestRenderer.create()">

        <cd:one-line-code-example>TestRenderer.create(element, options)</cd:one-line-code-example>

        <wg:p>Создайте экземпляр <code>TestRenderer</code>, передавая элемент React. Он не использует реальный DOM,
            но он все еще полностью отображает дерево компонентов в память, так что вы можете делать
            утверждения об этом. Возвращенный экземпляр имеет следующие методы и свойства.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testRenderer.toJSON()">

        <cd:one-line-code-example>testRenderer.toJSON()</cd:one-line-code-example>

        <wg:p>Возвращает объект, представляющий отрисованное дерево. Это дерево содержит только
            платформ-специфические узлы, такие как <code>&lt;div&gt;</code> или <code>&lt;View&gt;</code>, и их свойства, но не содержит
            каких-либо написанных пользователем компонентов. Это удобно для
            <wg:link href="http://facebook.github.io/jest/docs/en/snapshot-testing.html#snapshot-testing-with-jest">тестирования моментальных снимков</wg:link>.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testRenderer.toTree()">

        <cd:one-line-code-example>testRenderer.toTree()</cd:one-line-code-example>

        <wg:p>Возвращает объект, представляющий отрисованное дерево. В отличие от <code>toJSON()</code>, представление
            более подробно и включает в себя пользовательские компоненты. Вам, вероятно, не нужен этот
            метод, если вы не пишете собственную библиотеку утверждений поверх тестового отрисовщика.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testRenderer.update()">

        <cd:one-line-code-example>testRenderer.update(element)</cd:one-line-code-example>

        <wg:p>Переотрисуйте дерева в памяти с новым корневым элементом. Это имитирует обновление
            React в корне дерева. Если новый элемент имеет тот же тип и ключ, что и предыдущий
            элемент, дерево будет обновляться; в противном случае он перемонтирует новое дерево.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testRenderer.unmount()">

        <cd:one-line-code-example>testRenderer.unmount()</cd:one-line-code-example>

        <wg:p>Демонтируйте дерево в памяти, инициируя соответствующие события жизненного цикла.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testRenderer.getInstance()">

        <cd:one-line-code-example>testRenderer.getInstance()</cd:one-line-code-example>

        <wg:p>Верните экземпляр, соответствующий корневому элементу, если он доступен. Это не будет
            работать, если корневой элемент является функциональным компонентом, потому
            что у них нет экземпляров.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testRenderer.root">

        <cd:one-line-code-example>testRenderer.root</cd:one-line-code-example>

        <wg:p>Возвращает корневой «тестовый экземпляр», который полезен для создания утверждений
            об определенных узлах в дереве. Вы можете использовать его, чтобы найти другие
            «тестовые экземпляры» ниже по иерархии.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.find()">

        <cd:one-line-code-example>testInstance.find(test)</cd:one-line-code-example>

        <wg:p>Найдите единственный тестовый экземпляр потомка, для которого
            <code>test(testInstance)</code> возвращает <code>true</code>. Если <code>test(testInstance)</code> не возвращает
            <code>true</code> только для одного тестового экземпляра, он выдает ошибку.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.findByType()">

        <cd:one-line-code-example>testInstance.findByType(type)</cd:one-line-code-example>

        <wg:p>Найдите единственный тестовый экземпляр потомка с помощью предоставленного типа <code>type</code>.
            Если не существует только одного тестового экземпляра с предоставленным
            типом <code>type</code>, он выдает ошибку.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.findByProps()">

        <cd:one-line-code-example>testInstance.findByProps(props)</cd:one-line-code-example>

        <wg:p>Найдите один тестовый экземпляр потомка с предоставленными свойствами <code>props</code>. Если не
            существует только одного тестового экземпляра с предоставленными
            свойствами <code>props</code>, он выдаст ошибку.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.findAll()">

        <cd:one-line-code-example>testInstance.findAll(test)</cd:one-line-code-example>

        <wg:p>Найдите все тестовые экземпляры потомков, для которых
            <code>test(testInstance)</code> возвращает <code>true</code>.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.findAllByType()">

        <cd:one-line-code-example>testInstance.findAllByType(type)</cd:one-line-code-example>

        <wg:p>Найти все тестовые экземпляры потомков с предоставленным типом <code>type</code>.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.findAllByProps()">

        <cd:one-line-code-example>testInstance.findAllByProps(props)</cd:one-line-code-example>

        <wg:p>Найти все тестовые экземпляры потомков с предоставленными свойствами <code>props</code>.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.instance">

        <cd:one-line-code-example>testInstance.instance</cd:one-line-code-example>

        <wg:p>Экземпляр компонента, соответствующий данному тестовому экземпляру. Он доступен
            только для класс-компонентов, поскольку функциональные компоненты не имеют экземпляров.
            Он соответствует значению <code>this</code> внутри данного компонента.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.type">

        <cd:one-line-code-example>testInstance.type</cd:one-line-code-example>

        <wg:p>Тип компонента, соответствующий данному тестовому экземпляру.
            Например, компонент <code>&lt;Button /&gt;</code> имеет тип <code>Button</code>.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.props">

        <cd:one-line-code-example>testInstance.props</cd:one-line-code-example>

        <wg:p>Свойства props, соответствующие данному тестовому экземпляру. Например,
            компонент <code>&lt;Button size = "small” /&gt;</code> имеет <code>{size: 'small'}</code> в
            качестве объекта свойств <code>props</code>.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.parent">

        <cd:one-line-code-example>testInstance.parent</cd:one-line-code-example>

        <wg:p>Родительский тестовый экземпляр данного тестового экземпляра.</wg:p>
    </rf:definition>

    <br/>
    <rf:definition title="testInstance.children">

        <cd:one-line-code-example>testInstance.children</cd:one-line-code-example>

        <wg:p>Тестовые экземпляры потомков данного тестового экземпляра.</wg:p>
    </rf:definition>

    <br/>
    <h2>4.9.3 Идеи</h2>

    <wg:p>Вы можете передать функцию <code>createNodeMock</code> в <code>TestRenderer.create</code> как
        параметр, что позволит использовать пользовательские фейковые ссылки.
        <code>createNodeMock</code> принимает текущий элемент и должен возвратить объект
        фейковой ссылки. Это полезно, когда вы тестируете компонент, который
        полагается на ссылки <code>ref</code>.</wg:p>

    <ce:code-example-4/>
</lt:layout>

<c:url var="prevPageUrl" value="shallow-renderer"/>
<c:url var="nextPageUrl" value="js-env-requirements"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   nextPageUrl="${nextPageUrl}"
                   pageStartAncor="pageStart"/>