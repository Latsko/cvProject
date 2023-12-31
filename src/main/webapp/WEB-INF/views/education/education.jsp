<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Education-->
    <%----------------------- List of experience display -------------------------------%>
    <section class="resume-section" id="experience">
        <div class="resume-section-content">
            <h2 class="mb-5">Education</h2>

            <c:forEach items="${educationModel}" var="education">
                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                    <div class="flex-grow-1">
                        <h3 class="mb-0">${education.title}</h3>
                        <div class="subheading mb-3">${education.subTitle}</div>
                        <p>${education.description}</p>
                    </div>
                    <div class="flex-shrink-0">
                    <span class="text-primary">
                        <fmt:formatDate pattern="yyyy-MM-dd" value="${education.dateFrom}"/> -
                        <fmt:formatDate pattern="yyyy-MM-dd" value="${education.dateTo}"/></span>
                    </div>

                </div>
                <security:authorize access="hasAnyRole('ADMIN')">
                <a href='<c:url value="/education/editEducation/${education.id}"/>'
                   class="btn-right btn btn-primary" role="button">Edit</a>
                </security:authorize>
                <br />
                <br />
                <br />
            </c:forEach>

        </div>
    </section>
    <%----------------------------------------------------------------------------------------%>

<security:authorize access="hasAnyRole('ADMIN')">
    <div class="container">
        <form method="post" action='<c:url value="/education"/>'>
            <section class="resume-section" id="education">
                <div class="resume-section-content">
                    <h2 class="mb-5">Add Education</h2>

                    <%--input for title --%>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">@</span>
                            </div>
                            <input type="text" class="form-control" name="title" placeholder="Enter title"
                                   aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <%-----------------------------------------------%>

                    <%--         input for education subtitle       --%>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">@</span>
                            </div>
                            <input type="text" class="form-control" name="subTitle" placeholder="Enter subtitle"
                                   aria-label="Username"
                                   aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <%-----------------------------------------------%>

                    <%--    input for education description   --%>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Description</span>
                        </div>
                        <textarea class="form-control" name="description" aria-label="With textarea"></textarea>
                    </div>
                    <%-----------------------------------------------%>

                    <br />
                    <br />

                    <%--Date for experience span time (from -> to) --%>
                    <div class="flex-shrink-0">
                    <span class="text-primary">

                         <div class="form-group row">
                                        <label class="col-2 col-form-label">From</label>
                                        <div class="col-10">
                                            <input class="form-control" type="date" name="dateFrom" min="1900-12-31"
                                                   max="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}" />">
                                        </div>
                         </div>

                        <br />

                        <div class="form-group row">
                                        <label class="col-2 col-form-label">To</label>
                                        <div class="col-10">
                                            <input class="form-control" type="date" name="dateTo" min="1900-12-31"
                                                   max="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}" />">
                                        </div>
                        </div>

                    </span>
                    </div>
                    <%-----------------------------------------------%>

                    <br />
                    <br />
                    <br />

                    <%--     Button to post data       --%>
                    <button type="submit" class="btn btn-secondary btn-lg btn-block">Add education</button>
                    <%---------------------------------------%>

                </div>

            </section>

        </form>
    </div>
</security:authorize>


</div>
