<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="/catalog/view/theme/default/stylesheet/jquery.fancybox.min.css" rel="stylesheet" media="screen" />
<link href="/catalog/view/theme/default/stylesheet/animate.css" rel="stylesheet" media="screen" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/catalog/view/javascript/jquery.sticky.js" type="text/javascript"></script>
<script src="/catalog/view/javascript/jquery.fancybox.min.js" type="text/javascript"></script>
<script src="/catalog/view/javascript/wow.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
  <div onclick="openNav()" class="open-mob-nav"> <i class="material-icons">menu</i> <span>Меню сайта</span></div>
  <div id="mob-overlay"></div>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">
    <i class="material-icons">close</i>
  </a>
  <ul class="nav-menu">
      <li class="active"><a onclick="closeNav()" href="#advantages">Преимущества</a></li>
      <li><a href="#services" onclick="closeNav()">услуги</a></li>
      <li><a href="#portfolio" onclick="closeNav()">Портфолио</a></li>
      <li><a href="#price-box" onclick="closeNav()">цены</a></li>
      <li><a href="#contact" onclick="closeNav()">Контакты</a></li>
  </ul>
</div>
<!--h-->
<header>
        <div class="top-lene" id='sticker'>
            <div class="container">
                <div class="row">
                    <div class="col-md-2">
                        <div id="logo" class='logo'>
                          <?php if ($logo) { ?>
                          <a href="/"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                          <?php } else { ?>
                          <h1><a href="/"><?php echo $name; ?></a></h1>
                          <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="wrapp-menu">
                            <div class="top-menu-text">
                                <strong>АКЦИЯ!!!</strong>
                                <p>Закажите лендинг за 5 минут -<span> прототип бесплатно!</span></p>
                            </div>
                            <nav>
                                <ul class="nav-menu">
                                    <li class="active"><a href="#advantages">Преимущества</a></li>
                                    <li><a href="#services">услуги</a></li>
                                    <li><a href="#portfolio">Портфолио</a></li>
                                    <li><a href="#price-box">цены</a></li>
                                    <li><a href="#contact">Контакты</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <?php if($timer) { ?>
                    <div class="col-md-2">
                        <div class="thimer hidden">
                            <span class='timer-item timer-minutes'>05</span>
                            <span> : </span>
                            <span class='timer-item timer-seconds'>00</span>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <div class="top-content">
            <div class="container">
                <div class="row help-top-bg">
                    <div class="top-content-text">
                      <h1>Разработка лендингов</h1>
                    <p>От профессионалов своего дела</p>
                    </div>
                    <div class="top-bg">
                      <img src="/catalog/view/theme/default/image/top-bg.png" alt='alt'>
                    </div>
                    <div class="buttons">
                        <a data-toggle="modal" data-target="#modal-order-1" class="wow bounceInLeft" data-wow-duration="0.5s" data-wow-delay="0.5s">
                            <span class="text-btn">Хочу лендинг!</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
<!--h-->

