<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value='/common/css/common.css' />" type="text/css">

    <link rel="stylesheet" href="<c:url value='/common/css/payment.css' />" type="text/css">

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>

<body>
    <div id="wrapper">
        <%@ include file="/common/header.jsp"%>
        <div class="container main">
            <form action="" name="form-payment">
                <h1 class="p-1 pb-2 border-bottom border-muted">주문</h1>
                <section id="orders" class="row">
                    <c:forEach items="${foodList}" var="f" varStatus="status">
                        <article class="card p-0 mb-3">
                            <div class="card-header">
                                ${f.foodNm}<input type="hidden" name="items" value="${f.foodNo}">
                                <div id="cancel-${status.index}" class="float-end text-muted" style="cursor: pointer;">
                                    ${f.restNo}<input type="hidden" name="restNo" value="${f.restNo}">
                                </div>
                            </div>
                            <div>
                                <div class="col-3 m-3 d-inline-block">
                                    <label for="quantity-${status.index}">수량</label>
                                    <select name="quantity" id="quantity-${status.index}" class="form-select form-select-sm">
                                        <c:forEach begin="0" end="${max}" var="i">
                                            <option value="${i}" <c:if test="${i eq f.amount}">selected</c:if>>${i}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-3 m-3 d-inline-block">
                                    <label for="unit-${status.index}">단가</label>
                                    <input class="form-control form-control-sm" type="number" name="unit" id="unit-${status.index}" value="${f.foodCost}" readonly>
                                </div>
                                <div class="col-3 m-3 d-inline-block">
                                    <label for="price-${status.index}">가격</label>
                                    <input class="form-control form-control-sm" type="number" name="price" id="price-${status.index}" readonly>
                                </div>
                            </div>
                        </article>
                    </c:forEach>
                    <div class="clearfix">
                        <span class="d-inline-block">
                            <label for="total">총액</label>
                            <input class="form-control form-control-sm" type="number" name="total" id="total" readonly>
                        </span>
                        <div class="btn-group float-end">
                            <button type="button" class="btn btn-outline-danger">취소</button>
                            <button type="button" class="btn btn-outline-primary bg-hover-kakao" id="pay-by-kakao" style="border-color: #FFDC00; color: #8A7813">결제</button>
                        </div>
                    </div>
                </section>
            </form>
        </div>
        <%--    <%@ include file="footer.jsp" %>--%>
            <%@ include file="/common/footer.jsp"%>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        let quantityElem = document.querySelectorAll("select[name=quantity]");

        let setTotalPrice = () => {
            let price = document.querySelectorAll("input[name=price]");

            let sum = 0;
            for (let p of price) {
                sum += parseInt(p.value);
            }

            return sum;
        };

        quantityElem.forEach((elem) => {
            let calculatePrice = (element) => {
                let elemNum = elem.id.replace("quantity-", "");

                let unit = document.querySelector("#unit-" + elemNum);
                let price = document.querySelector("#price-" + elemNum);

                price.value = unit.value * elem.value;
            }

            calculatePrice();

            elem.addEventListener("change", () => {
                calculatePrice();

                document.querySelector("#total").value = parseInt(setTotalPrice());
            });
        });

        window.onload = () => {
            document.querySelector("#total").value = parseInt( setTotalPrice() );

            if (document.querySelector("#total").value == 0) {
                document.querySelector("#pay-by-kakao").disabled = true;
            }

            // kakao
            let payByKakao = document.querySelector("#pay-by-kakao");

            payByKakao.addEventListener("click", () => {
                let form = document.forms["form-payment"];
                form.action = "${pageContext.request.contextPath}" + "/payment/kakao";

                form.submit();
            });
        }
    </script>
</body>

</html>
