<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application/home" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/create-react-app/home" %>

<c:url var="getStartedUrl" value="/create-react-app/get-started"/>

<div class="full-size">
    <div class="cra-home-page__welcome-section">
        <app:svg-react-app cssClass="cra-logo"/>
        <div class="cra-home-page__welcome-section-title">Create React App</div>
        <div class="cra-home-page__welcome-section-subtitle">Установи современное веб-приложение всего одной командой</div>
        <a class="btn btn-success cra-home-page__welcome-section-btn" href="${getStartedUrl}">
            Начать
        </a>
    </div>
    <div class="cra-home-page__info-section">
        <div class="cra-home-page__info-section-item info">
            <div class="info__title">
                Меньше учить
            </div>
            <div class="info__text">
                Вам не нужно изучать и настраивать множество инструментов сборки.
                Немедленные перезагрузки кода помогут вам сосредоточиться только на разработке.
                Когда приходит время развертывания, ваши пакеты оптимизируются автоматически.
            </div>
        </div>
        <div class="cra-home-page__info-section-item info">
            <div class="info__title">
                Одна зависимость
            </div>
            <div class="info__text">
                Ваше приложение нуждается только в одной зависимости сборки. Мы тестируем
                приложение Create React App, чтобы убедиться, что все его части работают без сбоев.
            </div>
        </div>
        <div class="cra-home-page__info-section-item info">
            <div class="info__title">
                Нет жесткой привязки
            </div>
            <div class="info__text">
                Под капотом мы используем Webpack, Babel, ESLint и другие прекрасные
                проекты для поддержки вашего приложения. Однако, если вам вдруг понадобится расширенная
                конфигурация, вы можете сделать извлечение из Create React App и
                редактировать их конфигурационные файлы напрямую.
            </div>
        </div>
    </div>
    <div class="cra-home-page__info-section even">
        <div class="cra-home-page__info-section-item info">
            <div class="info__title">
                Старт за считанные секунды
            </div>
            <div class="info__text">
                Неважно, используете ли вы React или другую библиотеку, приложение Create React App
                позволяет вам <b>сосредоточиться на коде, а не на инструментах сборки.</b>
            </div>
            <div class="info__text">
                Чтобы создать проект c названием my-app, выполните следующую команду:
            </div>
            <ce:code-example-1/>
        </div>
        <img width="500px" src="https://camo.githubusercontent.com/29765c4a32f03bd01d44edef1cd674225e3c906b/68747470733a2f2f63646e2e7261776769742e636f6d2f66616365626f6f6b2f6372656174652d72656163742d6170702f323762343261632f73637265656e636173742e737667" class="text-center">
    </div>
    <div class="cra-home-page__info-section">
        <img width="500px" src="https://create-react-app.dev/img/update.png" class="text-center" style="vertical-align: top">
        <div class="cra-home-page__info-section-item info">
            <div class="info__title">
                Простота поддержки
            </div>
            <div class="info__text">
                Обновление вашего инструментария сборки обычно является сложной и трудоемкой задачей.
                Когда выпущены новые версии Create React App, вы можете выполнить обновление
                с помощью единственной команды:
            </div>
            <ce:code-example-2/>
        </div>
    </div>
</div>