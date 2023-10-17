<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Experience-->

    <form method="post" action='<c:url value="/experience/editExperience/${experienceModel.id}"/>'>
        <section class="resume-section" id="experience">
            <div class="resume-section-content">
                <h2 class="mb-5">Edit Experience</h2>

                <%--input for experience position --%>
                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">@</span>
                        </div>
                        <input type="text" class="form-control" name="position" value="${experienceModel.position}"
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
                        <input type="text" class="form-control" name="company" value="${experienceModel.company}"
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
                    <textarea class="form-control" name="description" aria-label="With textarea">${experienceModel.description}</textarea>
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
                                                   max="<fmt:formatDate pattern = "yyyy-MM-dd" value="${now}" />"
                                            value="<fmt:formatDate pattern='yyyy-MM-dd' value='${experienceModel.dateFrom}'/>">
                                        </div>
                         </div>

                        <br />

                        <div class="form-group row">
                                        <label class="col-2 col-form-label">To</label>
                                        <div class="col-10">
                                            <input class="form-control" type="date" name="dateTo" min="1900-12-31"
                                                   max="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}" />"
                                                   value="<fmt:formatDate pattern='yyyy-MM-dd' value='${experienceModel.dateTo}'/>">
                                        </div>
                        </div>

                    </span>
                </div>
                <%-----------------------------------------------%>

                <br />
                <br />
                <br />

                <%--     Buttons to post data       --%>
                <button type="submit" class="btn btn-secondary btn-lg btn-block">Edit experience</button>
                <!-- Button to Open the Modal -->
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                    Delete
                </button>
                <%---------------------------------------%>

            </div>

        </section>

    </form>

    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Please confirm data removal</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    Do you really want to delete this data?
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                    <form method="post" action='<c:url value="/experience/delete/${experienceModel.id}"/>'>
                        <input type="submit" class="btn btn-outline-danger" value="Delete"/>
                    </form>
                </div>

            </div>

        </div>
    </div>

</div>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>