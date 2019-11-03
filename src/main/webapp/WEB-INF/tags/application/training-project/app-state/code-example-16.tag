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
  const ABCDEF = Record({ a: 1, b: Record({ c: Record({ d: 2, e: 3 })(), f: 4 })() })
  // const ABCDEF = Record({ a: 1, b: new Record({ c: new Record({ d: 2, e: 3 }), f: 4 })() })

  let abcdef = ABCDEF()
  // abcdRecord = ABCDRecord({ a: 5, b: { c: { d: 6, e: 7 }, f: 8 } }) - задаём начальные значения

  // доступ к значению
  abcdef.get('a') // 1
  abcdef.getIn(['a']) // 1
  abcdef.getIn(['b']) // { c: { d: 2, e: 3 }:Record, f: 4 }:Record
  abcdef.getIn(['b', 'c', 'd']) // 2

  // установка значения
  abcdef.set('a', 10)
  // { a: 10, b: { c: { d: 2, e: 3 }:Record, f: 4 }:Record }:Record

  abcdef.setIn(['a'], 10)
  // { a: 10, b: { c: { d: 2, e: 3 }:Record, f: 4 }:Record }:Record

  abcdef.setIn(['b', 'c', 'd'], 11)
  // { a: 10, b: { c: { d: 11, e: 3 }:Record, f: 4 }:Record  }:Record

  // неглубокий мерж. Осторожно!

  // мержим весь объект
  abcdef.merge({a: 10, b: 12})
  // { a: 10, b: 12 }:Record

  abcdef.merge({a: 10, b: { f: 12 }})
  // { a: 10, b: { f: 12 }:Record }:Record

  // мержим определённую часть объекта
  abcdef.mergeIn([], {a: 10, b: { f: 12 }})
  // { a: 10, b: { f: 12 }:Record }:Record

  abcdef.mergeIn(['b'], { f: 12 })
  // { a: 1, b: { c: { d: 2, e: 3 }:Record, f: 12 }:Record }:Record

  abcdef.mergeIn(['b', 'c'], { d: 15 })
  // { a: 1, b: { c: { d: 15, e: 3 }:Record, f: 4 }:Record }:Record

  abcdef.mergeIn(['b'], { c: { d: 15 } })
  // { a: 1, b: { c: { d: 15 }:Record, f: 4 }:Record }:Record ключа 'e' нету!

  // глубокий мерж

  // мержим весь объект
  abcdef.mergeDeep({a: 10, b: 12})
  // { a: 10, b: 12 }:Record

  abcdef.mergeDeep({a: 10, b: { f: 12 }})
  // { a: 10, b: { c: { d: 2, e: 3 }:Record, f: 12 }:Record }:Record

  // мержим определённую часть объекта
  abcdef.mergeDeepIn([], {a: 10, b: { f: 12 }})
  //  { a: 10, b: { c: { d: 2, e: 3 }:Record, f: 12 }:Record }:Record

  abcdef.mergeDeepIn(['b'], { f: 12 })
  //  { a: 1, b: { c: { d: 2, e: 3 }:Record, f: 12 }:Record }:Record

  abcdef.mergeDeepIn(['b', 'c'], { d: 15 })
  //  { a: 1, b: { c: { d: 15, e: 3 }:Record, f: 4 }:Record }:Record

  abcdef.mergeDeepIn(['b'], { c: { d: 15 } })
  // { a: 1, b: { c: { d: 15, e: 3 }:Record, f: 4 }:Record }:Record</code>
  </pre>
</cd:code-example-decorator>