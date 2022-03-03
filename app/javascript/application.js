// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import $ from 'jquery';

$(document).ready(function() {
  $('.add_more_order_item').on('click', function(e) {
    e.preventDefault();

    var ts = +Date.now();

    console.log($('.new_order_item').parent().children().last());

    $('[name]', $('.new_order_item').clone().attr('class', '').insertAfter($('.new_order_item').parent().children().last())).each(function(i, input) {
      $(input).attr('name', $(input).attr('name').replace('[0]', '[' + ts + ']'));
    });
  });

  $(document).on('change', '.pizza_type, .pizza_amount', function(e) {
    var total = 0;
    $('.pizza_type').each(function(i, pizza) {
      var amount = parseFloat($('.pizza_amount', $(pizza).parent()).val());
      var price = parseFloat($('option:selected', pizza).data('price'));
      if (!isNaN(price)) {
        total = total + price*amount;
      }
    });
    $('.total_price').html(total.toFixed(2));
  });
});

