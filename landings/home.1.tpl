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
                                <strong>11 АКЦИЯ!!!</strong>
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



<section class="advantages" id='advantages'>
        <div class="container">
            <div class="row">
                <h2>Наши ключевые преимущества</h2>
                <p>сухие цифры говорят сами за себя</p>
                <div class="wrapp-progress">
                    <span>8 лет на рынке разработки сайтов</span>
                    <div class="progress">
                        <div class="progress-bar bar-1" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                        </div>
                    </div>
                    <span>Конверсия из посетителей в заказы 5-45%</span>
                    <div class="progress">
                        <div class="progress-bar bar-2" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                        </div>
                    </div>
                    <span>Средняя стоимость - 25 000 рублей</span>
                    <div class="progress">
                        <div class="progress-bar bar-3" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                        </div>
                    </div>
                    <span>Средний срок разработки - 10 дней</span>
                    <div class="progress">
                        <div class="progress-bar bar-4" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

		<section class="help-block" id='services'>
			<div class="container">
				<div class="row">
					<h2>чем поможем</h2>
					<p>мы умеем всё</p>
					<div class="wrapp-help">

						<div class="help-content wow bounceInLeft" data-wow-duration="0.5s" data-wow-delay="0.5s">
							<div class="h-image">
								<img src="/catalog/view/theme/default/image/icon1.png" alt="alt">
							</div>
							<div class="h-text">
								<h3>Бесплатный прототип</h3>
								<p>Наши проектировщики сделают высококачественный прототип сайта
									- вы сможете посмотреть как будет работать ваш сайт еще до этапа
									разработки!
								</p>
							</div>
						</div>

						<div class="help-content wow bounceInRight" data-wow-duration="0.5s" data-wow-delay="0.5s">
							<div class="h-image">
								<img src="/catalog/view/theme/default/image/icon2.png" alt="alt">
							</div>
							<div class="h-text">
								<h3>Домен, хостинг и <br>настройка Метрики</h3>
								<p>Осмысленное название домена, хостинг на
									защищенных серверах, настройка Метрики - все это у нас
								</p>
							</div>
						</div>

						<div class="help-content wow bounceInLeft" data-wow-duration="0.5s" data-wow-delay="0.5s">
							<div class="h-image">
								<img src="/catalog/view/theme/default/image/icon3.png" alt="alt">
							</div>
							<div class="h-text">
								<h3>Уникальный дизайн<br>без всяких шаблонов</h3>
								<p>Наши дизайнеры отвергают все шаблоны - и делают,
									 как им велят сердце и гайдлайны
								</p>
							</div>
						</div>

						<div class="help-content wow bounceInRight" data-wow-duration="0.5s" data-wow-delay="0.5s">
							<div class="h-image">
								<img src="/catalog/view/theme/default/image/icon4.png" alt="alt">
							</div>
							<div class="h-text">
								<h3>Создание рекламной<br>кампании в Яндекс Директ</h3>
								<p>Наши маркетологи создадут для вас кампанию и подскажут, что и куда
								</p>
							</div>
						</div>

						<div class="help-content wow bounceInLeft" data-wow-duration="0.5s" data-wow-delay="0.5s">
							<div class="h-image">
								<img src="/catalog/view/theme/default/image/icon5.png" alt="alt">
							</div>
							<div class="h-text">
								<h3> Качественная<br>адаптивная вёрстка</h3>
								<p>Ваш сайт открывают на компьютере, планшете и телефоне? Наши верстальщики знают, что надо делать
								</p>
							</div>
						</div>

						<div class="help-content wow bounceInRight" data-wow-duration="0.5s" data-wow-delay="0.5s">
							<div class="h-image">
								<img src="/catalog/view/theme/default/image/icon6.png" alt="alt">
							</div>
							<div class="h-text">
								<h3>Проведение SPLIT-тестов</h3>
								<p>Сплит тестирование любых элементов лендинга в профессиональных тест-системах
								</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>

		<section class="portfolio" id='portfolio'>
			<div class="container">
				<div class="row">
					<p>наша гордость</p>
					<h2>портфолио</h2>
					<div class="portfolio-wrapp" >

						<div class="portfolio-column wow bounceInLeft" data-wow-duration="0.8s" data-wow-delay="0.5s">

              <div class="p-content w-1">
  							<img src="/catalog/view/theme/default/image/portfolio/1.jpg" alt="">
  							<div class="hidden-content">
  								<div class="hidden-text">
  									<span>LandingPage</span>
  									<h4>Студия красоты Бора-Бора</h4>
  									<a href="/catalog/view/theme/default/image/portfolio/1.jpg" data-fancybox="gallery">Посмотреть</a>
  								</div>
  							</div>
  						</div>

  						<div class="p-content w-2">
  							<img src="/catalog/view/theme/default/image/portfolio/2.jpg" alt="">
  							<div class="hidden-content">
  								<div class="hidden-text">
  									<span>LandingPage</span>
  									<h4>Путевка маркет</h4>
  									<a href="/catalog/view/theme/default/image/portfolio/2.jpg" data-fancybox="gallery">Посмотреть</a>
  								</div>
  							</div>
  						</div>

						</div>

            <div class="portfolio-column wow bounceInLeft" data-wow-duration="0.5s" data-wow-delay="0.5s">

              <div class="p-content w-1">
  							<img src="/catalog/view/theme/default/image/portfolio/3.jpg" alt="">
  							<div class="hidden-content">
  								<div class="hidden-text">
  									<span>LandingPage</span>
  									<h4>Декоративная штукатурка</h4>
  									<a href="/catalog/view/theme/default/image/portfolio/3.jpg" data-fancybox="gallery">Посмотреть</a>
  								</div>
  							</div>
  						</div>

  						<div class="p-content w-1">
  							<img src="/catalog/view/theme/default/image/portfolio/4.jpg" alt="">
  							<div class="hidden-content">
  								<div class="hidden-text">
  									<span>LandingPage</span>
  									<h4>Интернет магазин мебели</h4>
  									<a href="/catalog/view/theme/default/image/portfolio/4.jpg" data-fancybox="gallery">Посмотреть</a>
  								</div>
  							</div>
  						</div>

  						<div class="p-content w-1">
  							<img src="/catalog/view/theme/default/image/portfolio/5.jpg" alt="">
  							<div class="hidden-content">
  								<div class="hidden-text">
  									<span>LandingPage</span>
  									<h4>LP Обслуживание комьютеров</h4>
  									<a href="/catalog/view/theme/default/image/portfolio/5.jpg" data-fancybox="gallery">Посмотреть</a>
  								</div>
  							</div>
  						</div>

            </div>

						<div class="portfolio-column-2 wow bounceInRight" data-wow-duration="0.5s" data-wow-delay="0.5s">

              <div class="pf-left">

                <div class="p-content w-4">
    							<img src="/catalog/view/theme/default/image/portfolio/6.jpg" alt="">
    							<div class="hidden-content">
    								<div class="hidden-text">
    									<span>LandingPage</span>
    									<h4>Цент красоты и здоровья SweetAroma</h4>
    									<a href="/catalog/view/theme/default/image/portfolio/6.jpg" data-fancybox="gallery">Посмотреть</a>
    								</div>
    							</div>
    						</div>

    						<div class="p-content w-4">
    							<img src="/catalog/view/theme/default/image/portfolio/7.jpg" alt="">
    							<div class="hidden-content">
    								<div class="hidden-text">
    									<span>LandingPage</span>
    									<h4>GSM оборудование</h4>
    									<a href="/catalog/view/theme/default/image/portfolio/7.jpg" data-fancybox="gallery">Посмотреть</a>
    								</div>
    							</div>
    						</div>

              </div>

              <div class="pf-right">

                <div class="p-content w-5">
                  <img src="/catalog/view/theme/default/image/portfolio/6.jpg" alt="">
                  <div class="hidden-content">
                    <div class="hidden-text">
                      <span>LandingPage</span>
                      <h4>Цент красоты и здоровья SweetAroma</h4>
                      <a href="/catalog/view/theme/default/image/portfolio/6.jpg" data-fancybox="gallery">Посмотреть</a>
                    </div>
                  </div>
                </div>

              </div>

              <div class="pf-bottom">

                <div class="p-content w-5">
                  <img src="/catalog/view/theme/default/image/portfolio/7.jpg" alt="">
                  <div class="hidden-content">
                    <div class="hidden-text">
                      <span>LandingPage</span>
                      <h4>Напольные покрытия Allure</h4>
                      <a href="/catalog/view/theme/default/image/portfolio/7.jpg" data-fancybox="gallery">Посмотреть</a>
                    </div>
                  </div>
                </div>

              </div>


						</div>


					</div>

					<div class="buttons">
							<a data-toggle="modal" data-target="#modal-order-2" class="wow bounceInRight" data-wow-duration="0.5s" data-wow-delay="0.5s">
									<span class="text-btn">Хочу такой же сайт!</span>
							</a>
					</div>

				</div>
			</div>
		</section>
		
		  <section class="price-section" id='price-box'>
      <div class="container">
        <div class="row">
          <h2>цены</h2>
          <p>антикризисные</p>
          <div class="ticket-wprapp wow bounceInLeft" data-wow-duration="0.8s" data-wow-delay="0.5s">

            <div class="ticket-content">
              <h4 class="h4-s">Старт</h4>
              <span class="old-price">24 990₽</span>
              <span class="nev-price">9 990<span>₽</span></span>
              <h3>Что входит в пакет</h3>
              <ul>
                <li>Бесплатный прототип</li>
                <li>Уникальный дизайн</li>
                <li>Вёрстка</li>
                <li>Программная часть</li>
                <li>Размещение в Интернете на 1 год</li>
                <li>Рекламная кампания в Яндекс.Директ</li>
                <li>Средние сроки – 10 дней</li>
              </ul>
            </div>

            <div class="ticket-content">
              <h4 class="h4-m">Премиум</h4>
              <span class="old-price">29 990₽</span>
              <span class="nev-price">19 990<span>₽</span></span>
              <h3>Что входит в пакет</h3>
              <ul>
                <li>Бесплатный прототип</li>
                <li>Уникальный дизайн</li>
                <li>Вёрстка</li>
                <li>Программная часть</li>
                <li>Размещение в Интернете на 1 год</li>
                <li>Рекламная кампания в Яндекс.Директ</li>
                <li>Средние сроки – 10 дней</li>
              </ul>
            </div>

            <div class="ticket-content">
              <h4 class="h4-l">Бизнес</h4>
              <span class="old-price">34 990₽</span>
              <span class="nev-price">29 990<span>₽</span></span>
              <h3>Что входит в пакет</h3>
              <ul>
                <li>Бесплатный прототип</li>
                <li>Уникальный дизайн</li>
                <li>Вёрстка</li>
                <li>Программная часть</li>
                <li>Размещение в Интернете на 1 год</li>
                <li>Рекламная кампания в Яндекс.Директ</li>
                <li>Средние сроки – 10 дней</li>
              </ul>
            </div>

            <div class="ticket-content">
              <h4 class="h4-xl">VIP</h4>
              <span class="old-price">64 990₽</span>
              <span class="nev-price">59 990<span>₽</span></span>
              <h3>Что входит в пакет</h3>
              <ul>
                <li>Бесплатный прототип</li>
                <li>Уникальный дизайн</li>
                <li>Вёрстка</li>
                <li>Программная часть</li>
                <li>Размещение в Интернете на 1 год</li>
                <li>Рекламная кампания в Яндекс.Директ</li>
                <li>Средние сроки – 10 дней</li>
              </ul>
            </div>

          </div>
          
          	<div class="buttons">
							<a data-toggle="modal" data-target="#modal-order-3" class="wow bounceInLeft" data-wow-duration="0.5s" data-wow-delay="0.5s">
									<span class="text-btn">Заказать разработку лендинга!</span>
							</a>
					</div>
					
					<!--<div class="price-image">
					  <img src="/catalog/view/theme/default/image/price-bg.png"></img>
					</div>-->
					
        </div>
      </div>
    </section>

    
  <section class="contact" id='contact'>
    <div class="container">
      <div class="row">
        <div class="wrapp-contact">
          <div class="left-contact wow bounceInLeft" data-wow-duration="0.5s" data-wow-delay="0.5s">
            <h2>Контакты</h2>

              <p>
                Санкт-Петербург, Большая Ягодная, д.67, стр.9 Бизнес-центр «Ягода»
                +7 (812) 123-45-67
                <span class="left-contact-items-individual">Индивидуальный предприниматель Рапапорт Михаил Алексеевич</span>
                <span class="left-contact-items">ИНН:</span>123478964565
                <span class="left-contact-items">ОГРНИП:</span>12304563789456
                <span class="left-contact-items-adres">Юридический адрес:</span> 142000, МО, г. Внуково, мкр. Северный, ул. Утренняя 21Б
                <span class="left-contact-items-adres">Почтовый адрес:</span>    142000, МО, г. Внуково, мкр. Северный, ул. Утренняя 21Б
                <span class="left-contact-items">Р/счет:</span>40802353453280000065
                <span class="left-contact-items">Банк:</span>МОСКОВСКИЙ РФ АО "АГРОХОЗБАНК"
                <span class="left-contact-items">К/счет:</span>30101346435746550000430
                <span class="left-contact-items">БИК:</span>044534653430</p>

          </div>
          <div class="right-contact wow bounceInRight" data-wow-duration="0.5s" data-wow-delay="0.5s">
            <h2><a href="tel:88001234567">8 (800) 123-45-67</a></h2>
            <div class="btn-contact">
              <a data-toggle="modal" data-target="#modal-call-back">Заказать обратный звонок</a>
            </div>
            <a href="#"><img src="/catalog/view/theme/default/image/top-logo.png" alt="alt"></a>
          </div>
        </div>
      </div>
    </div>

  </section>

<footer>
  <div class="container">
    <div class="row">
      <div class="bottom-wrapp">
        <div class="bottom-section bord">
          <p>© Landing Super Company 2017</p>
        </div>
        <div class="bottom-section bord2 text-center">
          <span>8 (800) 123-45-67</span>
          <a data-toggle="modal" data-target="#modal-call-back-2">Заказать обратный звонок</a>
        </div>
        <div class="bottom-section bord3">
          <ul class="social-footer">
            <li><i class="fa fa-map-marker" aria-hidden="true"></i>
              <span>Санкт-Петербург, Большая Ягодная, д.67, стр.9 <br>
                      Бизнес-центр «Ягода»
              </span>
            </li>
            <li><i class="fa fa-envelope" aria-hidden="true"></i>
                <span>landingmail@gmail.com</span>
            </li>
            <li>
              <i class="fa fa-skype" aria-hidden="true"></i>
              <span>landingskype</span>
            </li>
          </ul>
          <ul class="social-bottom">
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
          </ul>
        </div>
        <div class="bottom-section footer-logo-section">
          <a href='/'>
            <img src="/catalog/view/theme/default/image/logo-futer.png" alt="alt">
          </a>
        </div>

      </div>
    </div>
  </div>
</footer>

<!-- Modal-order 1 -->
<div id="modal-order-1" class="modal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <div class="width-bg-form-box">
          <h3>Заявка:</h3>
          <form class="order-form" id="order-form-1">
            <div class="input-field">
              <input type='text' name='name' placeholder='Имя' >
            </div>
            <div class="input-field">
              <input type='email' name='email' placeholder='Email' >
            </div>
            <div class="input-field">
              <input type='tel' name='phone' placeholder='Телефон' >
            </div>
             <input type='hidden' name='form_name' value='Форма вверху сайта'>
             <input type='hidden' name='form_text' value='<?php echo $form_text; ?>'>
             <input type='hidden' name='store_name' value='<?php echo $store_name; ?>'>
             <div class="input-field">
              <button class='btn-double-bg' type='submit' id='modal-order-1-submit'>
                <span class='btn-double-bg-text'>Отправить заявку</span>
                <span class="btn-bg btn-bg-light"></span>
                <span class="btn-bg btn-bg-dark"></span>
              </button>
            </div>
          </form>
          <h3 class='modal-thanks-text'>Спасибо за заявку, мы свяжемся с Вами в ближайшее время</h3>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal-order 2 -->
<div id="modal-order-2" class="modal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <div class="width-bg-form-box">
          <h3>Заявка:</h3>
          <form class="order-form" id="order-form-2">
            <div class="input-field">
              <input type='text' name='name' placeholder='Имя' >
            </div>
            <div class="input-field">
              <input type='email' name='email' placeholder='Email' >
            </div>
            <div class="input-field">
              <input type='tel' name='phone' placeholder='Телефон' >
            </div>
             <input type='hidden' name='form_name' value='Форма в блоке портфолио'>
             <input type='hidden' name='form_text' value='<?php echo $form_text; ?>'>
             <input type='hidden' name='store_name' value='<?php echo $store_name; ?>'>
             <div class="input-field">
              <button class='btn-double-bg' type='submit' id='modal-order-2-submit'>
                <span class='btn-double-bg-text'>Отправить заявку</span>
                 <span class="btn-bg btn-bg-light"></span>
                <span class="btn-bg btn-bg-dark"></span>
              </button>
            </div>
          </form>
          <h3 class='modal-thanks-text'>Спасибо за заявку, мы свяжемся с Вами в ближайшее время</h3>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal-order 3 -->
<div id="modal-order-3" class="modal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <div class="width-bg-form-box">
          <h3>Заявка:</h3>
          <form class="order-form" id="order-form-3">
            <div class="input-field">
              <input type='text' name='name' placeholder='Имя' >
            </div>
            <div class="input-field">
              <input type='email' name='email' placeholder='Email' >
            </div>
            <div class="input-field">
              <input type='tel' name='phone' placeholder='Телефон' >
            </div>
             <input type='hidden' name='form_name' value='Форма в блоке с ценами'>
             <input type='hidden' name='form_text' value='<?php echo $form_text; ?>'>
             <input type='hidden' name='store_name' value='<?php echo $store_name; ?>'>
             <div class="input-field">
              <button class='btn-double-bg' type='submit' id='modal-order-3-submit'>
                <span class='btn-double-bg-text'>Отправить заявку</span>
                 <span class="btn-bg btn-bg-light"></span>
                <span class="btn-bg btn-bg-dark"></span>
              </button>
            </div>
          </form>
          <h3 class='modal-thanks-text'>Спасибо за заявку, мы свяжемся с Вами в ближайшее время</h3>
        </div>
      </div>
    </div>
  </div>
</div>


<!-- Modal-call-back -->
<div id="modal-call-back" class="modal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <div class="width-bg-form-box">
          <h3>Заявка:</h3>
          <form class="order-form" id="call-back">
            <div class="input-field">
              <input type='text' name='name' placeholder='Имя' >
            </div>
            <div class="input-field">
              <input type='tel' name='phone' placeholder='Телефон' >
            </div>
             <input type='hidden' name='form_name' value='Форма обратной связи в блке контактов'>
             <input type='hidden' name='form_text' value='<?php echo $form_text; ?>'>
             <input type='hidden' name='store_name' value='<?php echo $store_name; ?>'>
             <div class="input-field">
              <button class='btn-double-bg' type='submit' id='call-back-submit'>
                <span class='btn-double-bg-text'>Отправить заявку</span>
                 <span class="btn-bg btn-bg-light"></span>
                <span class="btn-bg btn-bg-dark"></span>
              </button>
            </div>
          </form>
          <h3 class='modal-thanks-text'>Спасибо за заявку, мы свяжемся с Вами в ближайшее время</h3>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal-call-back 2 -->
<div id="modal-call-back-2" class="modal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <div class="width-bg-form-box">
          <h3>Заявка:</h3>
          <form class="order-form" id="call-back-2">
            <div class="input-field">
              <input type='text' name='name' placeholder='Имя' >
            </div>
            <div class="input-field">
              <input type='tel' name='phone' placeholder='Телефон' >
            </div>
             <input type='hidden' name='form_name' value='Форма обратной связи в подвале'>
             <input type='hidden' name='form_text' value='<?php echo $form_text; ?>'>
             <input type='hidden' name='store_name' value='<?php echo $store_name; ?>'>
             <div class="input-field">
              <button class='btn-double-bg' type='submit' id='call-back-submit-2'>
                <span class='btn-double-bg-text'>Отправить заявку</span>
                 <span class="btn-bg btn-bg-light"></span>
                <span class="btn-bg btn-bg-dark"></span>
              </button>
            </div>
          </form>
          <h3 class='modal-thanks-text'>Спасибо за заявку, мы свяжемся с Вами в ближайшее время</h3>
        </div>
      </div>
    </div>
  </div>
</div>



<?php if($timer){ ?>
<script>
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        var html = '<span class="timer-item timer-minutes">' + minutes + '</span><span> : </span><span class="timer-item timer-seconds">' + seconds + '</span>';
        display.html(html);

        if (--timer < 0) {
            location.reload();
        }
    }, 1000);
}

jQuery(function ($) {
    var fiveMinutes = <?php echo $timer; ?>,
        display = $('.thimer');
    startTimer(fiveMinutes, display);
    setTimeout(function(){
      $('.thimer').removeClass('hidden');
    }, 1000);
    
});
</script>
<?php } ?>
</body></html>