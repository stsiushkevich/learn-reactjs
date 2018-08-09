<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  import PropTypes from 'prop-types';

  MyComponent.propTypes = {
    // Вы можете объявить, что свойство является определенным JS примитивом.
    // По умолчанию они все необязательны.
    myOptionalArray: PropTypes.array,
    myOptionalBool: PropTypes.bool,
    myOptionalFunc: PropTypes.func,
    myOptionalNumber: PropTypes.number,
    myOptionalObject: PropTypes.object,
    myOptionalString: PropTypes.string,
    myOptionalSymbol: PropTypes.symbol,



    // Все, что может быть отрисовано: числа, строки, элементы или массив
    // (или фрагмент), содержащий эти типы
    myOptionalNode: PropTypes.node,

    // React-элемент.
    myOptionalElement: PropTypes.element,

    // Вы также можете обьявить, что свойство является экземпляром класса.
    // Для этого используется instanceof оператор.
    myOptionalMessage: PropTypes.instanceOf(Message),

    // Вы можете гарантировать, что ваше свойство ограничено определенным
    // набором значений, представленных перечислением
    myOptionalEnum: PropTypes.oneOf(['News', 'Photos']),

    // Объект, который может иметь один из перечисленых типов
    myOptionalUnion: PropTypes.oneOfType([
      PropTypes.string,
      PropTypes.number,
      PropTypes.instanceOf(Message)
    ]),

    // Массив объектов определенного типа
    myOptionalArrayOf: PropTypes.arrayOf(PropTypes.number),

    // Объект со значениями свойств определенного типа
    myOptionalObjectOf: PropTypes.objectOf(PropTypes.number),

    // Объект, приобретающий определенную форму
    myOptionalObjectWithShape: PropTypes.shape({
      color: PropTypes.string,
      fontSize: PropTypes.number
    }),

    // Вы можете связать любой из вышеперечисленых валидаторов с 'isRequired', чтобы убедиться,
    // что предупреждение показывается, если значение свойства не предоставлено
    myRequiredFunc: PropTypes.func.isRequired,

    // Значение произвольного типа данных
    myRequiredAny: PropTypes.any.isRequired,

    // Вы можете задать и собственный валидатор. Он должен возвращать Error объект,
    // если валидация проходит с ошибкой. Не используйте `console.warn` или throw,
    // так как это не работает внутри `oneOfType`.
    customProp: function(props, propName, componentName) {
      if (!/matchme/.test(props[propName])) {
        return new Error(
          'Invalid prop `' + propName + '` supplied to' +
          ' `' + componentName + '`. Validation failed.'
        );
      }
    },

    // Вы также можете определить пользовательский валидатор для `arrayOf` и `objectOf`.
    // Он должен возвращать Error объект, если валидация проходит с ошибкой.
    // Валидатор будет вызван для каждого ключа в массиве или объекте.
    // Первые два аргумента валидатора являются сам массив или объект, и текущий ключ элемента
    myCustomArrayProp: PropTypes.arrayOf(function(propValue, key, componentName, location, propFullName) {
      if (!/matchme/.test(propValue[key])) {
        return new Error(
          'Invalid prop `' + propFullName + '` supplied to' +
          ' `' + componentName + '`. Validation failed.'
        );
      }
    })
  };</code>
  </pre>
</cd:code-example-decorator>