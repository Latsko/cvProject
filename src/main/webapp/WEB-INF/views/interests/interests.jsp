<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../dynamic/header.jspf"%>

        <!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Interests-->
    <section class="resume-section" id="interests">
        <div class="resume-section-content">
            <h2 class="mb-5">Interests</h2>
            <c:forEach items="${interestModel}" var="inteterst">

                <p>${inteterst.description}</p>
            </br>
                <security:authorize access="hasAnyRole('ADMIN')">
                    <form method="post" action='<c:url value="/interests/del/${inteterst.id}"/>'>
                        <input type="submit" class="btn btn-danger pull-left" value="Delete"/>
                    </form>
                </security:authorize>


            </c:forEach>


            <security:authorize access="hasAnyRole('ADMIN')">
                <form method="post" action='<c:url value="/interests"/>'>
                    <hr>
                    <div class="form-group">
                        <textarea type="text" class="form-control" rows="5" name="description"
                                  placeholder="dodaj nową treść"></textarea>
                    </div>
                </br>
                    <input type="submit" class="btn btn-primary" value="Save"/>
                </form>
            </security:authorize>
        </div>
    </section>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>
