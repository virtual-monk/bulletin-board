// $(".edit_event").click(function (event) {
//   event.preventDefault();

//   var href = this.href.split("/");
//   var eventId = href[href.length - 2];
//   if (this.text == "Edit event") {
//     var eventTitle = $("#event_title").text();
//     var eventDate = $("#event_date").text();
//     var eventStartTime= $("#start_time").text();
//     var eventEndTime = $("#end_time").text();
//     var eventDetails = $("#event_details").text();
//     var eventAddress = $("#event_address").text();
//     var eventAddress2 = $("#event_address_2").text();
//     var eventCity = $("#event_city").text();
//     var eventState = $("#event_state").text();
//     var eventZipcode = $("#event_zip_code").text()
//     $(".event_editable").remove();
//     debugger
//     $(".event#event_new_title").append(editBox("#event_title", eventTitle));
//     $(".columns#event_new_style").append(selectStyle(eventStyle));
//     $(".columns#event_new_abv").append(editBox(eventAbv[0], "abv", eventAbv[1]));
//     $(".columns#event_new_ibu").append(editBox(eventIbu[0], "ibu", eventIbu[1]));
//     $(".column#event_new_description").append(editBox("Description:", "description", eventDescription));
//     this.text = "Resubmit Event";
// } else {
//     var NewName = $("#edit_event_name").val();
//     var NewAbv = $("#edit_abv").val();
//     var NewIbu = $("#edit_ibu").val();
//     var NewDescription = $("#edit_description").val();
//     $.ajax({
//       type: "PUT",
//       url: "/event/" + eventId,
//       dataType: "json",
//       data: { event: { name: NewName, abv: NewAbv, ibu: NewIbu, description: NewDescription } }
//     });
//   }
// });

// // function selectStyle(style){
// //   var html = "<select class='style_box' id='edit_style_box'>";
// //   $.get("/styles.json",function (data){
// //     for (var i=0; i < data.length; i++) {
// //       html += "<option value ='" + data[i].id + "'>" + data[i].name + "</option>";
// //     }
// //     return html;
// //   });
// //   html += "</select>";
// //   return html;
// //   debugger
// // }%textarea#edit.event_editable

// function editBox(label, value){
//   var html = %textarea{:cols => "50", :name => "textarea", :rows => "10"}
//   return html;
// }

// // function reloadName(name){
// //   var html = "<h1 class='white-text event_editable' id='event_name'>"+ name
// //       html += "</h1>";
// //   return html;
// // }

// // function reloadAbv(label, abv){
// //   var html = "<p class='white-text event_editable' id='event_abv'>" + label + abv
// //       html += "</p>";
// //   return html;
// // }

// // function reloadIbu(label, ibu){
// //   var html = "<p class='white-text event_editable' id='event_ibu'>" + label + ibu
// //       html += "</p>";
// //   return html;
// // }

// // function reloadDescription(description){
// //   var html = "<p class='text-left white-text event_editable' id='event_description'>"
// //       html += description + "</p>";
// //   return html;
// // }
