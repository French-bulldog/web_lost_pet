function CheckForm() {
  var name = document.forms["myForm"]["name"].value;
  var species = document.forms["myForm"]["species"].value;
  var breed = document.forms["myForm"]["breed"].value;
  var color = document.forms["myForm"]["color"].value;
  var gender = document.forms["myForm"]["gender"].value;
  var age = document.forms["myForm"]["age"].value;
  var location = document.forms["myForm"]["location"].value;
  var contact_name = document.forms["myForm"]["contact_name"].value;
  var contact_phone = document.forms["myForm"]["contact_phone"].value;
  var description = document.forms["myForm"]["description"].value;
  var photo_url = document.forms["myForm"]["photo_url"].value;

  if (name == "") {
    alert("寵物名稱必填");
    return false;
  }
  if (species == "") {
    alert("種類必填");
    return false;
  }
  if (breed == "") {
    alert("品種必填");
    return false;
  }
  if (color == "") {
    alert("顏色必填");
    return false;
  }
  if (gender == "") {
    alert("性別必填");
    return false;
  }
  if (age == "") {
    alert("年紀必填");
    return false;
  }
  if (location == "") {
    alert("遺失地點必填");
    return false;
  }
  if (contact_name == "") {
    alert("失主姓名必填");
    return false;
  }
  if (contact_phone == "") {
    alert("失主電話必填");
    return false;
  }
  if (description == "") {
    alert("失蹤情形必填");
    return false;
  }
  if (photo_url == "") {
    alert("照片必填");
    return false;
  }
}