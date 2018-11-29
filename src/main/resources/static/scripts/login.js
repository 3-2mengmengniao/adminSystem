var $ = jQuery.noConflict();
var formSubmitted = 'false';


jQuery(document).ready(function($) {

    $('#formSuccessMessageWrap').hide(0);
    $('.formValidationError').fadeOut(0);

    // fields focus function starts
    $('input[type="text"], input[type="password"], textarea').focus(function(){
        if($(this).val() == $(this).attr('data-dummy')){
            $(this).val('');
        };
    });
    // fields focus function ends

    // fields blur function starts
    $('input, textarea').blur(function(){
        if($(this).val() == ''){
            $(this).val($(this).attr('data-dummy'));
        };
    });
    // fields blur function ends

    // submit form data starts
    function submitData(currentForm, formType){
        formSubmitted = 'true';
        var formInput = $('#' + currentForm).serialize();
        $.post($('#' + currentForm).attr('action'),formInput, function(data){
                if(data=="200")
                    window.location.href="/teacher/homepage";
                else if(data=="204")
                    window.location.href="/student/homepage";
                else if(data=="401")
                {
                    $('#formSuccessMessageWrap').fadeIn(500);
                    formSubmitted = 'false';
                }
        });
        //window.location.href='1vali_psw.html';
    };
    // submit form data function starts
    // validate form function starts
    function validateForm(currentForm, formType){
        // hide any error messages starts
        $('.formValidationError').hide();
        $('.fieldHasError').removeClass('fieldHasError');
        var count=2;
        // hide any error messages ends
        $('#' + currentForm + ' .requiredField').each(function(i){
            if($(this).val() == '' || $(this).val() == $(this).attr('data-dummy')){
                $(this).val($(this).attr('data-dummy'));
                $(this).focus();
                $(this).addClass('fieldHasError');
                $('#' + $(this).attr('id') + 'Error').fadeIn(300);
                count=count-1;
                return false;
            };


        });
        if(formSubmitted == 'false' && count==2){
            submitData(currentForm, formType);
        };

    };
    // validate form function ends

    // contact button function starts
    $('#contactSubmitButton').click(function() {
        var flag2=validateForm($(this).attr('data-formId'));
        if(flag2==true)
            return true;
        return false;
    });
    // contact button function ends



});

/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
/*//////////////////// Document Ready Function Ends                                                                       */
/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
