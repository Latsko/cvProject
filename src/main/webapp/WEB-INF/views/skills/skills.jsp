<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../dynamic/header.jspf"%>


        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- Skills-->
            <section class="resume-section" id="skills">
                <div class="resume-section-content">
                    <h2 class="mb-5">Skills</h2>
                    <c:forEach items="${skillModel}" var="skill">
                        <div class="subheading mb-3">
                                ${skill.title}
                        </div>

                        <ul class="list-inline dev-icons">
                            <c:forEach items="${skill.icons}" var="icon">
                                <li class="list-inline-item"><i class="${icon}"></i>

                                    <security:authorize access="hasAnyRole('ADMIN')">
                                        <!-- Link do usuwania ikony -->
                                        <form method="post" action='<c:url value="/skills/${skill.id}/removeIcon?icon=${icon}"/>'>
                                            <input type="submit" class="btn btn-danger pull-left" value="Delete"/>
                                        </form>
                                    </security:authorize>

                                </li>
                            </c:forEach>
                        </ul>
                        <div class="subheading mb-3">Workflow</div>
                        <ul class="fa-ul mb-0">

                            <c:forEach items="${skill.info}" var="infoItem">
                                <li>
                                    <span class="fa-li"><i class="fas fa-check"></i></span>
                                        ${infoItem}

                                    <security:authorize access="hasAnyRole('ADMIN')">
                                        <!-- Link do usuwania informacji -->
                                        <form method="post" action='<c:url value="/skills/${skill.id}/removeInfo?info=${infoItem}"/>'>
                                            <input type="submit" class="btn btn-danger pull-left" value="Delete"/>
                                        </form>
                                    </security:authorize>


                                </li>
                            </c:forEach>

                        </ul>
                    </c:forEach>
                </div>
            </section>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
