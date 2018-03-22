<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/uncontrolled-components" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page hello-world-example-page">
  <h1>3.4 Неконтролируемые компоненты</h1>

  <wg:p>В большинстве случаев мы рекомендуем использовать контролируемые компоненты
    при реализации форм. В контролируемом компоненте данные формы обрабатываются компонентом React.
    Альтернативу представляют неконтролируемые компоненты, где данные формы обрабатываются самим DOM.</wg:p>

  <wg:p>Для того, чтобы написать неконтролируемый компонент, вместо написания обработчика
    события для каждого изменения состояния, вы можете использовать <code>ref</code>, чтобы получать
    значения формы из DOM.</wg:p>

  <wg:p>К примеру, данный код принимает только имя пользователя в неконтролируемом компоненте:</wg:p>

  <ce:code-example-1 codePenUrl="https://codepen.io/stzidane/pen/YQGxJG?editors=0010"/>

  <wg:p>Так как неконтролируемый компонент хранит источник истины в DOM, то иногда это
    упрощает интеграцию React и не React кода, когда используются неконтролируемые
    компоненты. Также этот подход может слегка сократить ваш код, если вы хотите
    написать что-то на скорую руку. <b>В остальных случаях вы должны использовать
    только контролируемые компоненты</b>.</wg:p>

  <wg:p>Если до сих пор не понятно какие типы компонентов вам необходимо использовать
    для тех или иных ситуаций, вы можете посмотреть
    <wg:link href="https://goshakkk.name/controlled-vs-uncontrolled-inputs-react/">эту статью</wg:link>.</wg:p>

  <br/>
  <h2>3.4.1 Значения по умолчанию</h2>

  <wg:p>В жизненном цикле отрисовки React атрибут <code>value</code> на элементах формы
    будет переопределять значение в DOM. Используя неконтролируемые компоненты,
    нам часто может понадобиться, чтобы React определил начальное значение,
    избежав последующих неконтролируемых обновлений. Чтобы обработать этот случай,
    вы можете указать атрибут <code>defaultValue</code>, вместо атрибута <code>value</code>:</wg:p>

  <ce:code-example-2/>

  <wg:p>Аналогично, <code>&lt;input type="checkbox"&gt;</code> и <code>&lt;input type="radio"&gt;</code> поддерживают
    <code>defaultChecked</code>, а <code>&lt;select&gt;</code> и <code>&lt;textarea&gt;</code> поддерживают <code>defaultValue</code>.</wg:p>

  <br/>
  <h2>3.4.2 Тэг input типа file</h2>

  <wg:p>В HTML тэг <code>&lt;input type="file"/&gt;</code> позволяет пользователю выбирать один
    или несколько файлов из хранилища своего устройства для загрузки на
    сервер или манипулировать собой с помощью JavaScript через File API.</wg:p>

  <ce:code-example-3/>

  <wg:p>
    Это неконтролируемый компонент в React, так как его значение может
    быть установлено только пользователем, но не программно.
  </wg:p>

  <wg:p>
    Вы должны использовать File API для взаимодействия с файлами. В
    следующем примере показано, как создать ссылку на узел DOM для
    доступа к файлу(ам) в submit-обработчике:
  </wg:p>

  <ce:code-example-4 codePenUrl="https://reactjs.org/redirect-to-codepen/uncontrolled-components/input-type-file"/>

</lt:layout>

<c:url var="prevPageUrl" value="refs-and-the-dom"/>
<c:url var="nextPageUrl" value="optimizing-performance"/>
<app:page-navigate prevPageUrl="${prevPageUrl}"
                   pageStartAncor="pageStart"
                   nextPageUrl="${nextPageUrl}"/>