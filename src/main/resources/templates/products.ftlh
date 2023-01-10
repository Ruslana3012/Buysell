<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Пошук товару</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="searchCity">Місто</label>
                <select id="searchCity" class="form-control">
                    <option value="">Місто не вибрано</option>
                    <option value="Київ">Київ</option>
                    <option value="Івано">Івано-Франківськ</option>
                    <option value="Харків">Харків</option>
                    <option value="Полтава">Полтава</option>
                    <option value="Львів">Львів</option>
                    <option value="Дніпропетровськ">Дніпропетровськ</option>
                    <option value="Одеса">Одеса</option>

                </select>
            </div>
            <div class="form-group col-md-10">
                <label for="searchWord">Пошук за оголошенням</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>
            <button style="width: 100%" type="submit" class="btn btn-dark">Пошук</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

                    <img src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} ₽</p>
                    </div>
                    <div class="card-footer">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не знайдено</h1>
        </#list>
    </div>
</@t.template>