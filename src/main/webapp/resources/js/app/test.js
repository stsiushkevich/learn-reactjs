let React;

    class FruitList extends React.Component {

        render() {
            return React.createElement('div', {className: 'fruit-list'},
                React.createElement('h1', /* ... h1 children ... */),
                React.createElement('ul', /* ... ul children ... */)
            );
        }


    }

    // Пример использования: <FruitList name="Петя" />
    // - по синтаксису в точности как обычный тэг:)!

FruitList.render();

