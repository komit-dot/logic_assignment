//= require active_admin/base
$(document).on('change','#employee_emp_country',function(){
  $.ajax({
      type: 'get',
      url: '/admin/employees/get_state_by_country',
      data: {country: this.value.split(',')[0]},
      success: function(data) {
        var states = $('#employee_emp_state');
        states.empty();
        states.prepend("<option value='' selected='selected'>--select--</option>")
        var cities = $('#employee_emp_city');
        cities.empty();
        cities.prepend("<option value='' selected='selected'>--select--</option>")
        $.each(data, function(index, value) {
          var opt = $('<option/>');
          opt.attr('value', value);
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
      data: {country: $('#employee_emp_country')[0].value.split(',')[0], state: this.value.split(',')[0]},
      success: function(data) {
        var cities = $('#employee_emp_city');
        cities.empty();
        cities.prepend("<option value='' selected='selected'>--select--</option>")
        $.each(data, function(index, value) {
          var opt = $('<option/>');
          opt.attr('value', value);
          opt.text(value);
          opt.appendTo(`<option>select</option>`)
          opt.appendTo(cities);
        });            
      }
  });
});
