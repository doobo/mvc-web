<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>大V荐彩</title>
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <script type="text/javascript">
        !function (a, b) {
            function c() {
                var b = f.getBoundingClientRect().width;
                b / i > 540 && (b = 540 * i);
                var c = b / 7.5;
                f.style.fontSize = c + "px",
                        k.rem = a.rem = c
            }

            var d, e = a.document,
                    f = e.documentElement,
                    g = e.querySelector('meta[name="viewport"]'),
                    h = e.querySelector('meta[name="flexible"]'),
                    i = 0,
                    j = 0,
                    k = b.flexible || (b.flexible = {});
            if (g) {
                console.warn("将根据已有的meta标签来设置缩放比例");
                var l = g.getAttribute("content").match(/initial\-scale=([\d\.]+)/);
                l && (j = parseFloat(l[1]), i = parseInt(1 / j))
            } else if (h) {
                var m = h.getAttribute("content");
                if (m) {
                    var n = m.match(/initial\-dpr=([\d\.]+)/),
                            o = m.match(/maximum\-dpr=([\d\.]+)/);
                    n && (i = parseFloat(n[1]), j = parseFloat((1 / i).toFixed(2))),
                    o && (i = parseFloat(o[1]), j = parseFloat((1 / i).toFixed(2)))
                }
            }
            if (!i && !j) {
                var p = a.navigator.userAgent,
                        q = (!!p.match(/android/gi), !!p.match(/iphone/gi)),
                        r = q && !!p.match(/OS 9_3/),
                        s = a.devicePixelRatio;
                i = q ? s >= 3 && (!i || i >= 3) ? 3 : s >= 2 && (!i || i >= 2) ? 2 : 1 : 1,
                        j = 1 / i
                console.log(p)
            }
            if (f.setAttribute("data-dpr", i), !g) if (g = e.createElement("meta"), g.setAttribute("name", "viewport"), g.setAttribute("content", "initial-scale=" + j + ", maximum-scale=" + j + ", minimum-scale=" + j + ", user-scalable=no"), f.firstElementChild) f.firstElementChild.appendChild(g);
            else {
                var t = e.createElement("div");
                t.appendChild(g),
                        e.write(t.innerHTML)
            }
            a.addEventListener("resize",
                    function () {
                        clearTimeout(d),
                                d = setTimeout(c, 300)
                    },
                    !1),
                    a.addEventListener("pageshow",
                            function (a) {
                                a.persisted && (clearTimeout(d), d = setTimeout(c, 300))
                            },
                            !1),
                    "complete" === e.readyState ? e.body.style.fontSize = 12 * i + "px" : e.addEventListener("DOMContentLoaded",
                            function () {
                                e.body.style.fontSize = 12 * i + "px"
                            },
                            !1),
                    c(),
                    k.dpr = a.dpr = i,
                    k.refreshRem = c,
                    k.rem2px = function (a) {
                        var b = parseFloat(a) * this.rem;
                        return "string" == typeof a && a.match(/rem$/) && (b += "px"),
                                b
                    },
                    k.px2rem = function (a) {
                        var b = parseFloat(a) / this.rem;
                        return "string" == typeof a && a.match(/px$/) && (b += "rem"),
                                b
                    }
        }(window, window.lib || (window.lib = {}));
    </script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
        }

        ul {
            list-style: none;
        }

        em {
            font-style: normal;
        }

        .main {
            position: relative;
            background:#fff;
        }

        .main .huaBall_bg {
            position: absolute;
            top: -0.1rem;
            width: 2.03rem;
            height: 3.85rem;
            background: url(https://rjcob.aicai.com/upload/image/shareImg/201806/21/43f9244eeb3d.png) no-repeat;
            background-size: cover;
        }

        .main .huaBall_bg.right {
            right: 0;
        }

        .main .huaBall_bg.left {
            left: 0;
            transform: scale(-1, 1);
            -webkit-transform: scale(-1, 1);
            -ms-transform: scale(-1, 1);
        }

        .section_01 {
            padding: .33rem 0 .26rem;
            border-bottom: 1px solid #eee;
        }

        .section_01 .top {
            position: relative;
        }

        .section_01 .top .title {
            width: 2.77rem;
            height: .61rem;
            line-height: .58rem;
            margin: 0 auto;
            font-size: .3rem;
            color: #fff;
            text-align: center;
            background: url(https://rjcob.aicai.com/upload/image/shareImg/201806/21/e14d986d55a8.png) no-repeat;
            background-size: cover;
        }

        .section_01 .top .moreRec {
            position: absolute;
            top: -0.13rem;
            right: .2rem;
            padding-right: .2rem;
            font-size: .24rem;
            color: #2c59ec;
            height: .88rem;
            line-height: .88rem;
        }

        .section_01 .top .moreRec:after {
            content: "";
            display: inline-block;
            width: .15rem;
            height: .15rem;
            margin-left: .04rem;
            border-top: .03rem solid #2c59ec;
            border-right: .03rem solid #2c59ec;
            -ms-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            -o-transform: rotate(45deg);
            transform: rotate(45deg);
        }

        .bigVList {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            padding-top: .35rem;
        }

        .bigVList li {
            flex: 1;
            -webkit-box-flex: 1;
            box-flex: 1;
            text-align: center;
        }

        .bigVHead {
            position: relative;
            width: 1.2rem;
            height: 1.2rem;
            margin: 0 auto;
        }

        .bigVHead .imgWrap img {
            width: 100%;
            height: auto;
        }

        .bigVHead .redDot {
            position: absolute;
            width: .1rem;
            height: .1rem;
            background: #f75659;
            border-radius: 50%;
            top: 0;
            right: 0;
        }

        .bigVHead .bigVIcon {
            position: absolute;
            bottom: 0;
            right: 0;
            width: .3rem;
            height: .3rem;
            background: url(https://rjcob.aicai.com/upload/image/shareImg/201806/21/bbcabc227942.png) no-repeat;
            background-size: cover;
        }

        .bigVList li h3 {
            width: 2.5rem;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            font-size: .32rem;
            color: #333;
            font-weight: 500;
            margin-top: .12rem;
        }

        .bigVList li p {
            font-size: .28rem;
            color: #f75659;
            font-weight: 500;
            margin-top: .03rem;
        }

        .bigVList li span {
            font-size: .24rem;
            color: #999;
        }

        .section_02 {
            padding-bottom: .34rem;
        }

        .section_02 .top {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            justify-content: space-between;
            -webkit-justify-content: space-between;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            -moz-align-items: center;
            align-items: center;
            padding: .3rem .25rem;
        }

        .section_02 .top .bigVHead {
            width: .8rem;
            height: .8rem;
        }

        .section_02 .top .bigVHead .bigVIcon {
            width: .24rem;
            height: .24rem;
        }

        .section_02 .top .intro {
            flex: 1;
            -webkit-box-flex: 1;
            box-flex: 1;
            margin-left: .2rem;
        }

        .section_02 .top .intro em {
            font-size: .32rem;
            color: #333;
            font-weight: 500;
        }

        .section_02 .top .intro span {
            display: inline-block;
            width: 1.04rem;
            height: .28rem;
            margin-left: .1rem;
            background: url(https://rjcob.aicai.com/upload/image/shareImg/201806/21/43f9244eeb3d.png) no-repeat;
            background-size: cover;
        }

        .section_02 .top .intro p {
            width: 4rem;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-size: .24rem;
            color: #999;
        }

        .section_02 .top .goldCoin {
            width: 1rem;
            text-align: center;
            font-size: .34rem;
            color: #f75659;
        }

        .section_02 .top .goldCoin span {
            display: block;
            line-height: .38rem;
        }

        .section_02 .top .goldCoin p {
            font-size: .24rem;
        }

        .section_02 .bottom {
            padding: .04rem .48rem 0 .3rem;
        }

        .section_02 .bottom h3 {
            font-size: .34rem;
            font-weight: 500;
        }

        .section_02 .bottom p {
            font-size: .24rem;
            color: #999;
            margin-top: .08rem;
        }

        .section_02 .bottom p span {
            margin-right: .3rem;
        }

        .matchTable {
            position: relative;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            border: 1px solid #eee;
            border-radius: .1rem;
            margin-top: .2rem;
        }

        .matchTable ul {
            width: 5rem;
            border-right: 1px solid #eee;
        }

        .matchTable ul li {
            height: .7rem;
            line-height: .7rem;
            padding-left: .25rem;
            border-bottom: 1px solid #eee;
            font-size: .24rem;
            color: #333;
        }

        .matchTable ul li span {
            display: inline-block;
        }

        .matchTable ul li span:first-child {
            color: #999;
            margin-right: .24rem;
        }

        .matchTable ul li span:nth-child(2), .matchTable ul li span:nth-child(4) {
            width: 1.2rem;
            white-space: nowrap;
        }

        .matchTable ul li span:nth-child(4) {
            margin-left: .24rem;
        }

        .matchTable ul li:last-chld {
            border-bottom: none;
        }

        .matchTable > div {
            position: absolute;
            top: 50%;
            right: .19rem;
            width: 1.3rem;
            text-align: center;
            margin-top: -0.19rem;
            font-size: .24rem;
            color: #999;
        }

        .matchTable > div em {
            font-size: .26rem;
            color: #f75659;
        }

        .bigVHead .imgWrap {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            overflow: hidden;
        }
    </style>
</head>
<body>
<div class="main" id="main">
    <i class="huaBall_bg left"></i>
    <i class="huaBall_bg right"></i>
    <div class="section_01">
        <div class="top">
            <h3 class="title">大V荐彩</h3>
            <a href="https://weibo.ttyingqiu.com/api/weibo/cpz/login?type=planHome&id=" target="_parent" class="moreRec">更多推荐</a>
        </div>
        <ul class="bigVList">
			<#if experts?? && experts?size gt 0 >
                <#list experts as item>
                    <#if item_index<3>
                        <li>
                            <a href="https://weibo.ttyingqiu.com/api/weibo/cpz/login?type=expertHome&id=${item.expertMemberId!0}" target="_parent">
                            <div class="bigVHead">
                                <div class="imgWrap">
                                    <img src="${item.icon}" onerror="this.src='https://www.ttyingqiu.com/resources/images/user_icon.jpg'">
                                </div>
                                <#if item.unOpenedCount gt 0>
                                    <i class="redDot"></i>
                                <#else>
                                    <i style="display: none"></i>
                                </#if>
                                <i class="bigVIcon"></i>
                            </div>
                            <h3>${item.nickName!}</h3>
                            <p>${item.gameWinRatio?string("0%")}</p>
                            <span>${item.gameDescForShow!}命中率</span>
                            </a>
                        </li>
                    </#if>
                </#list>
            <#else>
                <li style="width: 100%">
	                <div style="text-align: center">没有数据哦</div>
                </li>
            </#if>
        </ul>
    </div>
</div>
<script type="text/javascript">
    setTimeout(function () {

        //var local = localStorage || {};
        var ele = self.document.getElementById('main');
        var height = ele.offsetHeight;
        var _height = getCookie('_self_height') || 0;
        // console.log(height,_height,515);
        if(height > _height){
            setCookie('_self_height',height);
        }
        window.name = getCookie('_self_height');
    });

    getCookie = function(key) {
        var name = key + "=";
        var ca = document.cookie.split(';');
        for(var i=0; i<ca.length; i++) {
            var c = ca[i].trim();
            if (c.indexOf(name)==0)
                return c.substring(name.length,c.length);

        }
        return null;
    }
    setCookie = function(key,value) {
            document.cookie = key + "=" + value;
    }
</script>
</body>
</html>