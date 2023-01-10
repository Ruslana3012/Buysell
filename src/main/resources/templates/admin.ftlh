<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Панель адміністратора</h1>
    <hr>
    <table class="table table-hover table-dark">
        <tr>
            <th scope="col">Email</th>
            <th scope="col">Номер телефону</th>
            <th scope="col">Активність</th>
            <th scope="col">Роль</th>
            <th scope="col">Бан</th>
            <th scope="col">Редагувати</th>
            <th scope="col">Детальна інфоромація</th>
        </tr>
        <#list users as user>
            <tr>
                <th>${user.username}</th>
                <th>${user.phoneNumber}</th>
                <th><#if user.active>true<#else>false</#if></th>
                <th><#list user.roles as role>${role}</#list></th>
                <th>
                    <form action="admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Бан">
                    </form>
                </th>
                <th><a href="/admin/user/edit/${user.id}">Редагувати</a></th>
                <th><a href="/user/${user.id}">Детальна інфоромація</a></th>
            </tr>
        <#else>
            <h3>Користувачі відсутні</h3>
        </#list>
    </table>
</@t.template>
