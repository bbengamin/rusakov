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