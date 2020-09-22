
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <!-- start: Meta -->
    <title><?php echo $title; ?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index, follow">
    <meta name="description" content="<?php echo $description; ?>">
    <meta name="keywords" content="<?php echo $keywords; ?>">
    <meta name="author" content="lokomedia.web.id">
    <meta name="robots" content="all,index,follow">
    <meta http-equiv="Content-Language" content="id-ID">
    <meta NAME="Distribution" CONTENT="Global">
    <meta NAME="Rating" CONTENT="General">
    <link rel="canonical" href="<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"/>
    <?php if ($this->uri->segment(1)=='berita' AND $this->uri->segment(2)=='detail'){ $rows = $this->model_utama->view_where('berita',array('judul_seo' => $this->uri->segment(3)))->row_array();
       echo '<meta property="og:title" content="'.$title.'" />
             <meta property="og:type" content="article" />
             <meta property="og:url" content="'.base_url().''.$this->uri->segment(3).'" />
             <meta property="og:image" content="'.base_url().'asset/foto_berita/'.$rows['gambar'].'" />
             <meta property="og:description" content="'.$description.'"/>';
    } ?>
    <link rel="shortcut icon" href="<?php echo base_url(); ?>asset/images/<?php echo favicon(); ?>" />

   
    <!-- Web Fonts  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/animate/animate.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/simple-line-icons/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/magnific-popup/magnific-popup.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/owl.carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/owl.carousel/assets/owl.theme.default.min.css">


    <!-- Theme CSS -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/theme.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/theme-elements.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/theme-blog.css">

    <!-- Skin CSS -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/skins/default1.css">

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/custom1.css">

    <!-- Theme Contac CSS -->
    

    <!-- Head Libs -->
    <script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/modernizr/modernizr.min.js"></script>

    <!-- Slider Bootstrap -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/slider-bootstrap/slider-bootstrap1.css">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-20166082-2"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-20166082-2');
    </script>

</head>

<body>
    <div class="body">
        
	<?php include "header.php"; ?>


<div class="main" role="main">
<?php echo $contents; ?>
</div>

        

<!--Footer Start-->
<footer class="color color-quaternary" id="footer">
<?php
include "footer.php";
?>
</footer>

    </div>

    


  <!-- Vendor -->
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/jquery/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/jquery.appear/jquery.appear.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/jquery-cookie/jquery-cookie.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/common/common.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/jquery.validation/jquery.validation.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/jquery.gmap/jquery.gmap.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/isotope/jquery.isotope.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/vide/vide.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/slider-bootstrap/slider-bootstrap.js"></script>
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/vendor/dataTables/datatables.min.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/js/theme.js"></script>

<!-- Theme Custom -->
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/js/custom.js"></script>

<!-- Theme Contc
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/js/contac.js"></script> -->

<!-- Theme Initialization Files -->
<script src="<?php echo base_url(); ?>template/<?php echo template(); ?>/js/theme.init.js"></script>

<script type="text/javascript">
    function langSwitch(content, langId) {
        if (content != '') {
            var url = "/" + langId + "/" + content;
            //console.log(url);
            window.location = url;
        }
        else
        {
            if (langId == "id") {
                alert("Maaf, halaman ini tidak tersedia untuk bahasa inggris");
                return false;
            }
            else
            {
            alert("Sorry, this content not available in English.");
                return false;
            }

       }
    }

    $('a#btnDownload').each(function () {
        $(this).click(function(e) {
            e.preventDefault();
            //alert('clicked');
            var getdocName = $(this).data('doc');
            var lang = $(this).data('lang');
            console.log(getdocName);
            $.post({
                type: "GET",
                url: window.location.origin + "/Ajax/getDownloadDoc?doc=" + getdocName + "&lang=" + lang,
                //data: { docName: "'" + getdocName + "'" },
                contentType: "application/json",
                success: function (response) {
                    console.log(window.location.origin + response);
                    window.location = window.location.origin + response;
                },
                failure: function (response) {
                    alert('Terjadi kesalahan!');
                }
            });
            
        });
    });
</script>
<?php
$this->model_utama->kunjungan(); 
?>
<script type="text/javascript" src="../asset/vanilla-tilt.js"></script>
<script type="text/javascript">
	VanillaTilt.init(document.querySelectorAll(".dus1"), {
		max: 25,
    speed: 400
	});
	
</script> 
<script type="text/javascript">
	VanillaTilt.init(document.querySelectorAll(".dus2"), {
		max: 25,
    speed: 400
	});
	
</script> 
<script type="text/javascript">
	VanillaTilt.init(document.querySelectorAll(".dus3"), {
		max: 25,
    speed: 400
	});
	
</script> 
</body>
</html>