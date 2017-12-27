/**
 * Created by keke on 2017/12/13.
 *
 */
$(document).ready(function() {
    // $.ajax({
    //     url: "http://rest-service.guides.spring.io/greeting"
    // }).then(function(data) {
    //     $('.greeting-id').append(data.id);
    //     $('.greeting-content').append(data.content);
    // });
    $.ajax({
        url: "http://localhost:8080/greeting?name=keke"
    }).then(function(data, status, jqxhr) {
        $('.greeting-id').append(data.id);
        $('.greeting-content').append(data.content);
        console.log(jqxhr);
    });
});