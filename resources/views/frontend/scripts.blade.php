
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

    <script>
       
        
  
        $(document).ready(function() {               
            // Toggle calendar dropdown on button click
          
            $('body').on('click','#date-dropdown-toggle', function() {
                $('#calendar-dropdown').toggleClass('d-none');
            });
            
             $(document).click(function(event) {
                var target = $(event.target);
                if (!target.closest('#calendar-dropdown').length && !target.is('#date-dropdown-toggle')) {
                  $('#calendar-dropdown').addClass('d-none');
                  
                //   $('.month-1').addClass('d-none');
                  $(".show-more-dates").text('More dates');
                }
              });

            $('body').on('click','.valid_date', function(e) {
                e.preventDefault();
                var selectedDate     =  $(this).data('date');
                var availableTime_on =  $(this).data('start');
                var availableTime_to =  $(this).data('end');
              
                // $('.month-1').addClass('d-none');$(".show-more-dates").text('More dates');
                
                 // Format the date using Moment.js
                var formattedDate = moment(selectedDate).format('MMMM D, YYYY');
        
                $('.date-input').text(formattedDate);
                
                $('#date-dropdown-toggle-value').val(selectedDate);
                $('#calendar-dropdown').addClass('d-none');
                
                pickuptimeListing(availableTime_on,availableTime_to)
              
            });
            
            if($('#date-dropdown-toggle-value').val() == ''){
         
               $('.valid_date:first').click();
            }
            else
            {
               
                var dateBase = $('.shipping_date_hidden').val();
                $('.valid_date').each(function() {
                    var selectedDate     =  $(this).data('date');
                    if( selectedDate == dateBase){
                        var availableTime_on =  $(this).data('start');
                        var availableTime_to =  $(this).data('end');
                        pickuptimeListing(availableTime_on,availableTime_to);
                    }
                });
                    
            }
            
            
            $('body').on('click','.btn-cal-nxt', function(e){
                var monthNo = $(this).data('mid');
                $('.month').hide();
                $('.month-id-'+monthNo).show();
            });
        
            // $(".show-more-dates").click(function(e) {
            //     $('.month-1').toggleClass('d-none');
            //     e.preventDefault();
            //     var text = $(this).text();
            //   if (text === 'Less dates') { 
            //         $(this).text('More dates'); 
            //     } else {
            //         $(this).text('Less dates'); 
            //     }
            // })
              
              
            function convert12HourTo24Hour(time12Hour) {
                return moment(time12Hour, 'hh:mm A').format('HH:mm');
            }
            
            function pickuptimeListing(startTime, endTime) {
            
                var interval = 15; // 15 minutes
                var options = '';
            
                // Parse the start and end times using Moment.js
                var startDate = moment(startTime, 'HH:mm');
                var endDate = moment(endTime, 'HH:mm');
                
                if(startDate <= endDate){
                    while (startDate <= endDate) {
                        var time12Hour = startDate.format('hh:mm A'); // Format as 12-hour time with AM/PM
                        var time24Hour = convert12HourTo24Hour(time12Hour); // Convert to 24-hour format
                
                        options += '<option value="' + time24Hour + '">' + time12Hour + '</option>';
                
                        // Increment time by 15 minutes
                        startDate.add(interval, 'minutes');
                    }
                }
                else
                {
                    $('.time_exceeded').html('Time exceeded please choose another date');
                }
                
                
            
                $('#pickup_time').html(options);
                
                @if(isset($basket))
                    @if($basket->serve_time != NULL)
                        var time = moment(`{{$basket->serve_time}}`, 'HH:mm').format('HH:mm');
                        $('#pickup_time').val(time)     
                    @endif
                @endif
            }


            
        });
        
    

    </script>