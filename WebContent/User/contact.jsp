

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/userHeader.jsp"></jsp:include>
<section class="contact_page">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 m-t-50">
                <h2 class="underline heading">Contact Us</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-sm-6">

                <div class="row contact_map_gap">
                    <div class="col-xs-12 text-justify section-top-30">
                        <h4 class="heading_left">Vedha Corporate</h4>
                    </div>
                    <div class="col-xs-12 section-top-10">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                            been the industry's standard dummy.</p>
                    </div>
                </div>
                <div class="row">

                    <div class="col-sm-12 col-lg-4 contact_mobile_number a:focus">
                        <h5>Email Us</h5>
                        <p><a href="#">123456789@163.com</a><br/><a href="#">1378888888@163.com</a></p>
                    </div>

                </div>
            </div>
            <div class="col-xs-12 col-sm-6 section-top-30 wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.2s">

                <div class="row contact_border">

                    <div class="contact_form">

                        <form class="form" action="contact.php" method="post">
                            <div class="col-xs-12"><h4 class="heading_left">Get in Touch</h4></div>
                            <div class="form-group col-xs-12 section-top-10">
                                <input type="text" class="form-control" name="name" placeholder="Name *" required>
                            </div>
                            <div class="clearfix visible-sm-block visible-md-block visible-xs-block"></div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <input type="email" class="form-control" name="email" placeholder="Email *" required>
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <input type="text" class="form-control" name="number" pattern="[0-9]{10}"
                                       placeholder="Mobile *" required>
                            </div>
                            <div class="clearfix visible-sm-block visible-md-block visible-xs-block"></div>
                            <div class="col-xs-12 form-group">
                                <textarea class="form-control" rows="4" name="message" placeholder="Message *"
                                          required></textarea>
                            </div>
                            <div class="clearfix visible-sm-block visible-md-block visible-xs-block"></div>
                            <div class="col-md-12 text-center section-bottom-15">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </div>

</section>

<section class="copy-rights">
    <div class="container ">
        <div class="row">
            <div class="col-xs-12 col-sm-6 section-top-15">
                
            </div>
            <div class="col-xs-12 col-sm-6 text-right section-top-15">

                <p class="footer_text_color  ">Copyright &copy; 2017.Company name All rights reserved.</p>
            </div>
       
</section>

</body>
</html>

