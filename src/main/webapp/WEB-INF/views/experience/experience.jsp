
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Experience-->

    <%----------------------- List of experience display -------------------------------%>
    <section class="resume-section" id="experience">
        <div class="resume-section-content">
            <h2 class="mb-5">Experience</h2>

            <c:forEach items="${experienceModel}" var="experience">
            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                <div class="flex-grow-1">
                    <h3 class="mb-0">${experience.position}</h3>
                    <div class="subheading mb-3">${experience.company}</div>
                    <p>${experience.description}</p>
                </div>
                <div class="flex-shrink-0"><span class="text-primary">${experience.dateFrom} - ${experience.dateTo}</span></div>

            </div>
                <a href='<c:url value="/experience/editExperience/${experience.id}"/>'
                   class="btn-right btn btn-primary" role="button">Edit</a>

                <br />
                <br />
                <br />
            </c:forEach>

        </div>
    </section>
    <%----------------------------------------------------------------------------------------%>

    <form method="post" action='<c:url value="/experience"/>'>
        <section class="resume-section" id="experience">
            <div class="resume-section-content">
                <h2 class="mb-5">Add Experience</h2>

                <%--input for experience position --%>
                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">@</span>
                        </div>
                        <input type="text" class="form-control" name="position" placeholder="Enter position on your job"
                               aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                </div>
                <%-----------------------------------------------%>

                <%--         input for experience company name       --%>
                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">@</span>
                        </div>
                        <input type="text" class="form-control" name="company" placeholder="Enter company name"
                               aria-label="Username"
                               aria-describedby="basic-addon1">
                    </div>
                </div>
                <%-----------------------------------------------%>

                <%--    input for experience description   --%>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Describe your job at company</span>
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
                <button type="submit" class="btn btn-secondary btn-lg btn-block">Add experience</button>
                <%---------------------------------------%>

            </div>

        </section>

    </form>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>