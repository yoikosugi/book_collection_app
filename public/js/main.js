$(function(){
  $('.delete').on('click', function(){
    var li = $(this).parent();
    if (!confirm('本当に削除しますか？')){
      return;
    }
    $.post('/destroy',{
      id: li.data('id'),
      _csrf: li.data('token')
    },function(){
      li.fadeOut(800);
    });
  });
});
