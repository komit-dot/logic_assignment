//= require active_admin/base
// require activeadmin_addons/all
 $(document).on('change','#employee_emp_country',function(){
  $.ajax({
      type: 'get',
      url: '/admin/employees/get_state_by_country',
      data: {article_country: this.value},
      success: function(data) {
        var states = $('#employee_emp_state');
        states.empty();
        var cities = $('#employee_emp_city');
        cities.empty();
        $.each(data, function(index, value) {
          var opt = $('<option/>');
          opt.attr('value', value[0]);
          opt.text(value[1]);
          opt.appendTo(states);
        });            
      }
  });
});

 $(document).on('change','#employee_emp_state',function(){
  $.ajax({
      type: 'get',
      url: '/admin/employees/get_cities',
      data: {article_country: $('#employee_emp_country')[0].value, article_state: this.value},
      success: function(data) {
        var cities = $('#employee_emp_city');
        cities.empty();
        $.each(data, function(index, value) {
          var opt = $('<option/>');
          opt.attr('value', value);
          opt.text(value);
          opt.appendTo(cities);
        });            
      }
  });
});
