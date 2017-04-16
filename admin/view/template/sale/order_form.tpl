<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-info-circle"></i> Детали заказа</h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name">Имя</label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="Имя" id="input-name" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-email">Email</label>
            <div class="col-sm-10">
              <input type="hidden" name="order_id" value="<?php echo $order_id; ?>" />
              <input type="text" name="email" value="<?php echo $email; ?>" placeholder="Email" id="input-email" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-phone">Телефон</label>
            <div class="col-sm-10">
              <input type="text" name="phone" value="<?php echo $phone; ?>" placeholder="Телефон" id="input-phone" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
            <div class="col-sm-10">
              <select name="order_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_statuses) { ?>
                <?php if ($order_statuses['order_status_id'] == $order_status_id) { ?>
                <option value="<?php echo $order_statuses['order_status_id']; ?>" selected="selected"><?php echo $order_statuses['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_statuses['order_status_id']; ?>"><?php echo $order_statuses['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
              <button type='submit' class='btn btn-primary pull-right'>Сохранить</button>
            </div>
          </div>
          
        </form>
        <div class="table-responsive">
          <table id="other" class="table table-striped table-bordered table-hover">
            <tbody>
              <tr>
                <td class="text-left" style="width: 20%;">Форма на сайте:</td>
                <td class="text-left">
                  <?php echo $form_name; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">SPLIT param:</td>
                <td class="text-left">
                  <?php echo $store_name; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">Статус таймера:</td>
                <td class="text-left">
                  <?php echo $form_text; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">IP:</td>
                <td class="text-left">
                  <?php echo $ip; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">utm_source:</td>
                <td class="text-left">
                  <?php echo $utm_source; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">utm_medium:</td>
                <td class="text-left">
                  <?php echo $utm_medium; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">utm_campaign:</td>
                <td class="text-left">
                  <?php echo $utm_campaign; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">utm_content:</td>
                <td class="text-left">
                  <?php echo $utm_content; ?>
                </td>
              </tr>
              <tr>
                <td class="text-left" style="width: 20%;">utm_term:</td>
                <td class="text-left">
                  <?php echo $utm_term; ?>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
<?php echo $footer; ?>
