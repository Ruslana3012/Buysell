<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Авторизація</h1>
    <form action="/login" method="post">
        Эл. почта: <input type="email" name="username"><br><br>
        Пароль: <input type="password" name="password"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Вхід"/>
    </form>
    <a href="/registration">Зареєструватися</a>
</@t.template>