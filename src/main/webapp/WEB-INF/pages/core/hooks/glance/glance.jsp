<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/hooks/glance" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page hooks-glance-page">
    <h1>3.12.2 Обзор хуков</h1>
    
    <br/>
    
    <p class="introduction">
        Хуки доступны в версии <b>React 16.8</b>. Они позволяют использовать состояние и другие
        функции React, освобождая от необходимости писать класс.
    </p>
    
    <br/>
    
    <c:url var="introduction1Url" value="/core/hooks/introduction#no-breaking-changes"/>
    
    <p>
        Хуки являются <b><a href="${introduction1Url}">обратно совместимыми</a></b>. В данном разделе представлен быстрый обзор
        хуков для опытных пользователей React. Если вы запутались, ищите желтый
        прямоугольник, как этот:
    </p>
    
    <c:url var="introduction2Url" value="/core/hooks/introduction"/>
    
    <app:alert title="Детальное объяснение" type="warning">
        Прочитайте <b><a href="${introduction2Url}">раздел о мотивации</a></b>,
        чтобы узнать, почему мы вводим хуки React.
    </app:alert>
    
    <p>
        <b>↑↑↑ Каждый раздел заканчивается таким желтым прямоугольником.</b>
        Он ссылается на подробное объяснение.
    </p>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.2.1 Хук состояния</h2>
    <br/>
    
    <p>
        В данном примере отображается счетчик. Когда вы нажимаете
        кнопку, он увеличивает своё значение:
    </p>
    
    <ce:code-example-1/>
    
    <c:url var="stateHookUrl" value="/core/hooks/state-hook"/>
    
    <p>
        Здесь <code>useState</code> - это хук (мы сейчас поговорим о том, что это значит). Мы
        вызываем его внутри компонента-функции, чтобы наделить последний локальным
        состоянием. React сохранит это состояние между повторными отрисовками. <code>useState</code>
        возвращает пару: <b>текущее</b> значение состояния и функцию, которая позволяет вам обновлять
        его. Вы можете вызвать эту функцию из обработчика событий или из любого другого места.
        Он похож на <code>this.setState</code> в классе, за исключением того, что он не объединяет старое и
        новое состояние. (Мы покажем пример, сравнивающий <code>useState</code> с <code>this.state</code> в разделе
        <b><a href="${stateHookUrl}">Использование хука состояния</a></b>.)
    </p>
    
    <p>
        Единственный аргумент <code>useState</code> является начальным состоянием. В приведенном
        выше примере это <code>0</code>, так как наш счетчик начинается с нуля. Обратите внимание, что
        в отличие от <code>this.state</code>, состояние здесь не обязательно должно быть объектом.
        Аргумент начального состояния используется только во время первой отрисовки.
    </p>
    
    <br/>
    <h3>3.12.2.1.1 Объявление множества переменных состояния</h3>
    <br/>
    
    <p>
        Вы можете использовать хук состояния более
        одного раза в одном и том же компоненте:
    </p>
    
    <ce:code-example-2/>
    
    <p>
        Синтаксис деструктуризации массива позволяет нам давать различные имена
        переменным состояния, которые мы объявили, вызывая <code>useState</code>. Данные имена
        не являются частью API <code>useState</code>. Вместо этого React предполагает, что если
        вы вызываете <code>useState</code> много раз, вы делаете это в том же порядке во время
        каждой отрисовки. Позже мы еще вернемся к тому, почему это работает, и
        когда это полезно.
    </p>
    
    <br/>
    <h3>3.12.2.1.2 Но что же такое хук?</h3>
    <br/>
    
    <c:url var="gradualAdoptionStrategyUrl" value="/core/hooks/introduction#gradual-adoption-strategy"/>
    <p>
        Хуки - это функции, которые позволяют вам «зацепить» состояние React
        и функции жизненного цикла из компонентов-функций. Хуки не работают внутри
        классов, напротив: они позволяют использовать React без классов.
        (<b><a href="${gradualAdoptionStrategyUrl}">Мы не рекомендуем</a></b>
        в одночасье переписывать ваши существующие компоненты, вместо этого вы
        можете начать использовать хуки в новых.)
    </p>
    
    <ad:ad-content-banner-1/>
    
    <p>
        React предоставляет несколько встроенных хуков, таких как <code>useState</code>.
        Также вы можете создавать и свои собственные для повторного использования
        поведения, связанного с состоянием, в различных компонентах. Но для
        начала мы ознакомимся со встроенными хуками.
    </p>
    
    <app:alert title="Детальное объяснение" type="warning">
        Вы можете узнать больше о хуке состояния в разделе
        <b><a href="${stateHookUrl}">Использование хука состояния</a></b>.
    </app:alert>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.2.2 Хук эффекта</h2>
    <br/>
    
    <p>
        Ранее, скорее всего, выборку данных, подписку или ручное изменение DOM вы
        выполняли из компонентов React. Мы называем эти операции «побочными эффектами»
        (или «эффектами» для краткости), так как они могут влиять на другие компоненты
        и не могут быть выполнены во время отрисовки.
    </p>
    
    <%--<c:url var="usingEffectHookUrl" value="using-effect-hook"/>--%>
    <c:url var="usingEffectHookUrl" value="https://reactjs.org/docs/hooks-effect.html"/>
    
    <p>
        Хук эффекта, по имени <code>useEffect</code>, предоставляет возможность
        выполнять побочные эффекты из функционального компонента.
        Он служит тем же целям, что и <code>componentDidMount</code>, <code>componentDidUpdate</code>
        и <code>componentWillUnmount</code> в классах React, но объединен в единый API.
        (Мы покажем примеры, сравнивающие <code>useEffect</code> с этими методами
        в разделе <b><a href="${usingEffectHookUrl}">Использование хука эффекта</a></b>.)
    </p>
    
    <p>
        Например, этот компонент установит заголовок документа
        после того, как React обновит DOM:
    </p>
    
    <ce:code-example-3/>
    
    <p>
        При желании эффекты могут указывать, как после себя производить
        «очистку», возвращая функцию. Например, данный компонент использует
        эффект для подписки на онлайн-статус друга, а затем выполняет очистку,
        отписываясь:
    </p>
    
    <ce:code-example-4/>
    
    <%--<c:url var="optimizingPerformanceUrl" value="using-effect-hook#optimizing-performance"/>--%>
    <c:url var="optimizingPerformanceUrl" value="https://reactjs.org/docs/hooks-effect.html#tip-optimizing-performance-by-skipping-effects"/>
    
    <p>
        В этом примере React будет отписываться от нашего <code>ChatAPI</code>
        перед демотированием компонента, а также перед повторным запуском
        эффекта, вызванным повторной отрисовкой. (Есть еще один способ <b><a href="${optimizingPerformanceUrl}">указать
        React пропустить повторную подписку</a></b>, если <code>props.friend.id</code>, который
        мы передали <code>ChatAPI</code>, не изменился.)
    </p>
    
    <p>
        Как и в случае с <code>useState</code>, вы можете использовать
        более одного эффекта в компоненте:
    </p>
    
    <ce:code-example-5/>
    
    <p>
        Хуки позволяют упорядочить побочные эффекты в компоненте в зависимости
        от того, с чем они связаны (например, добавление и удаление подписки),
        вместо принудительного разделения в методах жизненного цикла.
    </p>
    
    <app:alert title="Детальное объяснение" type="warning">
        Вы можете узнать больше о хуке эффекта в разделе
        <b><a href="${usingEffectHookUrl}">Использование хука эффекта</a></b>.
    </app:alert>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.2.3 Правила использования хуков</h2>
    <br/>
    
    <p>Хуки - это функции JavaScript, но они накладывают два дополнительных правила:</p>
    
    <ul>
        <li>
            <p>
                <b>Вызывайте хуки только на верхнем уровне.</b> Не вызывайте
                хуки внутри циклов, условий или вложенных функций.
            </p>
        </li>
        <li>
            <p>
                <b>Вызывайте хуки только в компонентах-функциях React.</b> Не вызывайте
                хуки из обычных функций JavaScript. (Есть еще одно валидное место,
                где можно вызывать хук - ваши собственные пользовательские хуки.
                Мы изучим их чуть позже.)
            </p>
        </li>
    </ul>
    
    <c:url var="linterPluginUrl" value="https://www.npmjs.com/package/eslint-plugin-react-hooks"/>
    
    <p>
        Мы предоставляем <b><a href="${linterPluginUrl}">плагин linter</a></b> для автоматического применения этих правил.
        Мы понимаем, что на первый взгляд они могут показаться ограничивающими или
        сбивающими с толку, но они необходимы для правильной работы хуков.
    </p>
    
    <%--<c:url var="hookRulesUrl" value="hook-rules"/>--%>
    <c:url var="hookRulesUrl" value="https://reactjs.org/docs/hooks-rules.html"/>
    
    <app:alert title="Детальное объяснение" type="warning">
        Вы можете узнать больше об этих правилах в разделе
        <b><a href="${hookRulesUrl}">Правила использования хуков</a></b>.
    </app:alert>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.2.4 Создание ваших собственных хуков</h2>
    <br/>
    
    <c:url var="hocUrl" value="/core/higher-order-components"/>
    <c:url var="renderPropUrl" value="/core/render-prop"/>
    
    <p>
        Иногда нам необходимо повторно использовать некоторую логику
        состояния в различных компонентах. Традиционно существовало два
        популярных решения этой проблемы: <b><a href="${hocUrl}">компоненты более высокого порядка</a></b>
        и <b><a href="${renderPropUrl}">свойство render</a></b>. Пользовательские хуки позволяют вам достичь этого
        без добавления дополнительных компонентов в ваше дерево.
    </p>
    
    <ad:ad-content-banner-2/>
    
    <p>
        Ранее в этом разделе мы представили компонент <code>FriendStatus</code>,
        который вызывает хуки <code>useState</code> и <code>useEffect</code> для подписки на онлайн-статус
        друга. Допустим, мы также хотим повторно использовать эту логику
        подписки в другом компоненте.
    </p>
    
    <p>
        Сначала мы извлечем эту логику в пользовательский
        хук с именем <code>useFriendStatus</code>:
    </p>
    
    <ce:code-example-6/>
    
    <p>
        Он принимает в качестве аргумента <code>friendID</code> и возвращает
        информацию о том, находится ли наш друг в онлайн.
    </p>
    
    <p>
        Теперь мы можем использовать его из обоих компонентов:
    </p>
    
    <ce:code-example-7/>
    <ce:code-example-8/>
    
    <p>
        Состояния этих компонентов полностью независимы. Хуки - это способ
        повторно использовать логику с состоянием, а не само состояние. Фактически,
        каждый вызов хука имеет полностью изолированное состояние - так что вы даже
        можете использовать один и тот же пользовательский хук дважды в одном компоненте.
    </p>
    
    <p>
        Пользовательские хуки - это скорее соглашение, чем функциональная возможность. Если имя
        функции начинается с <code>use</code> и вызывает другие хуки, мы говорим, что это
        пользовательский хук. Соглашение об использовании имен <code>useSomething</code> - это то,
        с помощью чего наш плагин linter может находить ошибки в коде, использущем хуки.
    </p>
    
    <p>
        Вы можете написать собственные хуки, которые охватывают широкий
        спектр вариантов использования, таких как обработка форм, анимация,
        декларативные подписки, таймеры и, возможно, многие другие, которые
        мы не рассматривали. Нам интересно увидеть, какие пользовательские хуки
        разработает сообщество React.
    </p>
    
    <%--<c:url var="customHooksUrl" value="custom-hooks"/>--%>
    <c:url var="customHooksUrl" value="https://reactjs.org/docs/hooks-custom.html"/>
    
    <app:alert title="Детальное объяснение" type="warning">
        Вы можете узнать больше об этих правилах в разделе
        <b><a href="${customHooksUrl}">Создание ваших собственных хуков</a></b>.
    </app:alert>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.2.5 Другие хуки</h2>
    <br/>
    
    <p>
        Есть несколько менее часто используемых встроенных хуков,
        которые могут оказаться полезными. Например, <code>useContext</code> позволяет
        подписаться на контекст React, не добавляя вложенность:
    </p>
    
    <ce:code-example-9/>
    
    <p>
        А <code>useReducer</code> позволяет вам управлять локальным состоянием
        сложных компонентов с помощью редьюсера:
    </p>
    
    <ce:code-example-10/>
    
    <%--<c:url var="hooksAPIReferenceUrl" value="hooks-api-reference"/>--%>
    <c:url var="hooksAPIReferenceUrl" value="https://reactjs.org/docs/hooks-reference.html"/>
    
    <app:alert title="Детальное объяснение" type="warning">
        Вы можете узнать больше обо всех встроенных хуках в разделе
        <b><a href="${customHooksUrl}">Справка по API Хуков</a></b>.
    </app:alert>
    
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.2.6 Следующие шаги</h2>
    <br/>
    
    <p>
        Что ж, это было быстро! Если некоторые вещи не совсем понятны, или вы хотите
        узнать больше, тогда можете прочитать следующие разделы,
        начиная с <b><a href="${stateHookUrl}">Использование хука состояния</a></b>.
    </p>
	
		<%--<c:url var="hooksFAQUrl" value="hooks-FAQ"/>--%>
		<c:url var="hooksFAQUrl" value="https://reactjs.org/docs/hooks-faq.html"/>
	
    <p>
	    Также вы также можете ознакомиться со
	    <b><a href="${hooksAPIReferenceUrl}">справкой по API Хуков</a></b>
	    и <b><a href="${hooksFAQUrl}">FAQ по хукам</a></b>.
    </p>
	
		<c:url var="introductionUrl" value="/core/hooks/introduction"/>
	
    <p>
	    Наконец, не пропустите <b><a href="${introductionUrl}">начальный раздел</a></b>, который объясняет, почему
	    мы добавляем хуки и как мы начнем использовать их вместе с классами -
	    без переписывания существующих приложений.
    </p>
	   
    <%-- <c:url var="Url" value=""/> --%>
    <%--
		<ul>
			<li>
				<p>
				
				</p>
			</li>
		</ul>
		--%>
    <%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
    <%-- <app:alert title="Совет!" type="success"></app:alert> --%>
    <%-- <code></code> --%>
    <%-- <b></b> --%>
    <%-- <code>&lt; &gt;</code> --%>
    <%-- <b><a href="${}"></a></b> --%>
    <%-- <b><a href="#"></a></b> --%>
    <%-- <a href="#"></a> --%>
    <%-- <p class="text-center" style="overflow-x: auto">
           <img src="<c:url value=""/>" class="text-center">
         </p> --%>
</div>

<c:url var="prevPageUrl" value="/core/hooks/introduction"/>
<c:url var="nextPageUrl" value="/core/hooks/state-hook"/>

<app:page-navigate
    pageStartAncor="pageStart"
    prevPageUrl="${prevPageUrl}"
    nextPageUrl="${nextPageUrl}"
/>