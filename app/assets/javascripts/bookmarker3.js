$(document).ready(function(){

    $('.js-add-panel').on('click', function(){
        $(this).css('display', 'none');
        $('.js-panel-input').css('display','block');
    });
  
    $('.board-canvas').on('click', '.js-add-card', function() {
        var cardBtn = $(this);
        var panelMenu = cardBtn.parent();
        var cardInput = panelMenu.find('.add-card-form');
        panelMenu.css('background-color', '#eee');
        cardBtn.css('display', 'none');
        cardInput.css('display', 'block');
    });

//폴더생성취소
     $(document).on("click", ".js-delete-panel",function(){
         var deleteBtn = $(this);
         var panelInput = deleteBtn.parent();
         var panelAdd = panelInput.siblings('.js-add-panel');
         panelInput.css('display', 'none');
         panelAdd.css('display', 'block');
     });

//카드생성취소
    $(document).on("click", ".js-delete-btn",function(){
        console.log("dd");
         var deletecardBtn = $(this);
         var cardInput = deletecardBtn.parents('.add-card-form');
         var cardAdd = cardInput.siblings('.js-add-card');
         cardInput.css('display', 'none');
         cardAdd.css('display', 'block');
         cardAdd.parent().css('background-color', 'transparent');

     });

//폴더옮기기 도전
// $( ".panel" ).sortable({
//      connectWith: ".panel",
//      handle: ".panel-title",
//      start: function (event, ui) {
//        ui.item.addClass('tilt');
//      },
//      stop: function (event, ui) {
//        ui.item.removeClass('tilt');
//      }
//    });

    $(document).on('dblclick', ".panel-title", function (e) {
       e.stopPropagation();      //<-------stop the bubbling of the event here
       var currentEle = $(this);
       var value = $(this).html();
        var titleInput = currentEle.siblings('.thVal');
        titleInput.val(value);
        currentEle.css('display','none');
        titleInput.css('display','block');
        titleInput.focus();
    });
});