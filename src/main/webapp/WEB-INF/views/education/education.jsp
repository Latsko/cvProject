<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Education-->
    <section class="resume-section" id="education">
        <div class="resume-section-content">
            <h2 class="mb-5">Education</h2>
            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                <div class="flex-grow-1">
                    <h3 class="mb-0">University of Colorado Boulder</h3>
                    <div class="subheading mb-3">Bachelor of Science</div>
                    <div>Computer Science - Web Development Track</div>
                    <p>GPA: 3.23</p>
                </div>
                <div class="flex-shrink-0"><span class="text-primary">August 2006 - May 2010</span></div>
            </div>
            <div class="d-flex flex-column flex-md-row justify-content-between">
                <div class="flex-grow-1">
                    <h3 class="mb-0">James Buchanan High School</h3>
                    <div class="subheading mb-3">Technology Magnet Program</div>
                    <p>GPA: 3.56</p>
                </div>
                <div class="flex-shrink-0"><span class="text-primary">August 2002 - May 2006</span></div>
            </div>
        </div>
    </section>


    <div class="container">
        <form method="post" action='<c:url value="#"/>'>
            <div class="form-group row">
                <label class="col-2" for="exampleFormControlInput1">Tytuł</label>
                <div class="col-10">
                    <input type="text" class="form-control" id="exampleFormControlInput1" name="title" placeholder="uzupełnij tytuł">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-2" for="exampleFormControlInput2">Podtytuł</label>
                <div class="col-10">
                    <input type="text" class="form-control" id="exampleFormControlInput2" name="subTitle" placeholder="uzupełnij podtytuł">
                </div>
            </div>


            <div class="form-group row">
                <label class="col-2" for="exampleFormControlInput3">Treść</label>
                <div class="col-10">
                    <textarea type="text" class="form-control" rows="5" id="exampleFormControlInput3" name="description" placeholder="uzupełnij treść"></textarea>
                </div>
            </div>


            <input type="submit" class="btn btn-success" value="Zapisz">
        </form>
    </div>


</div>
