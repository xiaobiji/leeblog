
function articlelike($aid) {
    var aid = $aid;
    $.ajax({
        type: "post",
        url: 'index/article/like',
        data: {
            aid:aid
        },
        dataType: "json",
        success: function(result){
        }
    });

}


document.write('45');