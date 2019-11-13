<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

<c:url var="gettingStartedUrl" value="/create-react-app/getting-started"/>
<c:url var="developmentUrl" value="/create-react-app/development"/>
<c:url var="stylesAndAssetsUrl" value="/create-react-app/styles-and-assets"/>
<c:url var="buildingUrl" value="/create-react-app/building"/>
<c:url var="testingUrl" value="/create-react-app/testing"/>
<c:url var="backendIntegrationUrl" value="/create-react-app/backend-integration"/>
<c:url var="deploymentUrl" value="/create-react-app/deployment"/>
<c:url var="advancedUsageUrl" value="/create-react-app/advanced-usage"/>
<c:url var="supportUrl" value="/create-react-app/support"/>

<lt:layout cssClass="menu-sidebar">
    <div class="black-line"></div>
    <nav class="menu-sidebar__nav">
        <ul class="menu-sidebar__nav-links nav nav-pills nav-stacked">
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_GETTING_STARTED' ? 'active' : null}">
                <a href="${gettingStartedUrl}">
                    Начало работы
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_GETTING_STARTED' ? 'up' : 'down'}">
                    </span>
                </a>
                
                <c:if test="${currentPage eq 'CRAPP_GETTING_STARTED'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#getting-started">Начало работы</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#folder-structure">Структура папок</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#available-scripts">Доступные скрипты</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#supported-browsers-and-features">Поддерживаемые браузеры и возможности</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#updating-to-new-releases">Обновление к новым резизам</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_DEVELOPMENT' ? 'active' : null}">
                <a href="${developmentUrl}">
                    Разработка
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_DEVELOPMENT' ? 'up' : 'down'}">
                    </span>
                </a>
    
                <c:if test="${currentPage eq 'CRAPP_DEVELOPMENT'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#editor-setup">Установите редактор</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#isolated-component-developing">Разработка компонентов в изоляции</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#bundle-size-analyzing">Анализ размера бандла</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#https-in-development">HTTPS в режиме разработки</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_STYLES_AND_ASSETS' ? 'active' : null}">
                <a href="${stylesAndAssetsUrl}">
                    Стили и активы
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_STYLES_AND_ASSETS' ? 'up' : 'down'}">
                    </span>
                </a>
    
                <c:if test="${currentPage eq 'CRAPP_STYLES_AND_ASSETS'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#adding-stylesheets">Добавление таблицы стилей</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#adding-css-modules">Добавление CSS модулей</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#adding-sass-stylesheets">Добавление таблицы стилей SASS</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#adding-css-reset">Добавление сброса CSS</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#post-processing-css">Пост обработка CSS</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#adding-images-fonts-and-files">Добавление изображений, шрифтов и файлов</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#loading-graphql-files">Загрузка .graphql файлов</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#using-public-folder">Использование папки public</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#code-splitting">Разбиение кода</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_BUILDING' ? 'active' : null}">
                <a href="${buildingUrl}">
                    Построение приложения
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_BUILDING' ? 'up' : 'down'}">
                    </span>
                </a>
    
                <c:if test="${currentPage eq 'CRAPP_BUILDING'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#installing-dependency">Установка зависимости</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#import-component">Импорт компонента</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#global-variables">Использование глобальных переменных</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#add-bootstrap">Подключение Bootstrap</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#add-flow">Подключение Flow</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#add-type-script">Подключение TypeScript</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#add-relay">Подключение Relay</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#add-router">Подключение Router</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#env-variables">Переменные среды</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#progressive-web-app">Создание прогрессивного приложения</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#production-build">Создание production-сборки</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_TESTING' ? 'active' : null}">
                <a href="${testingUrl}">
                    Тестирование
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_TESTING' ? 'up' : 'down'}">
                    </span>
                </a>
        
                <c:if test="${currentPage eq 'CRAPP_TESTING'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#running-tests">Запуск тестов</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#debugging-tests">Отладка тестов</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_BACKEND_INTEGRATION' ? 'active' : null}">
                <a href="${backendIntegrationUrl}">
                    Интеграция с backend
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_BACKEND_INTEGRATION' ? 'up' : 'down'}">
                    </span>
                </a>
    
                <c:if test="${currentPage eq 'CRAPP_BACKEND_INTEGRATION'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#proxying-in-development">Прокси в режиме разработки</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#fetching-data">Извлечение данных через AJAX</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#integrating-with-api">Интеграция с API сервера</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#title-and-meta-tags">Теги title и meta</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_DEPLOYMENT' ? 'active' : null}">
                <a href="${deploymentUrl}">
                    Развёртывание
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_DEPLOYMENT' ? 'up' : 'down'}">
                    </span>
                </a>
    
                <c:if test="${currentPage eq 'CRAPP_DEPLOYMENT'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#deployment">Развёртывание</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_ADVANCED_USAGE' ? 'active' : null}">
                <a href="${advancedUsageUrl}">
                    Продвинутое использование
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_ADVANCED_USAGE' ? 'up' : 'down'}">
                    </span>
                </a>
    
                <c:if test="${currentPage eq 'CRAPP_ADVANCED_USAGE'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#decorators">Можно ли использовать декораторы?</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#pre-rendering-static-html">Пред-отрисовка в статический HTML</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="advanced-configuration">Продвинутая конфигурация</a>
                        </li>
                        <li class="menu-sidebar__nav-link">
                            <a href="#alternatives-to-ejecting">Альтернативы eject</a>
                        </li>
                    </ul>
                </c:if>
            </li>
            <li class="menu-sidebar__nav-link ${currentPage eq 'CRAPP_SUPPORT' ? 'active' : null}">
                <a href="${supportUrl}">
                    Поддержка
                    <span
                        aria-hidden="true"
                        class="glyphicon glyphicon-chevron-${currentPage eq 'CRAPP_SUPPORT' ? 'up' : 'down'}">
                    </span>
                </a>
    
                <c:if test="${currentPage eq 'CRAPP_SUPPORT'}">
                    <ul class="menu-sidebar__nav-link">
                        <li class="menu-sidebar__nav-link">
                            <a href="#troubleshooting">Устранение неполадок</a>
                        </li>
                    </ul>
                </c:if>
            </li>
        </ul>
    </nav>
</lt:layout>
