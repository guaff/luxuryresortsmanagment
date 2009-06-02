function same_as_address(){
	// alert("I am an alert box!");
	$client_full_name = document.getElementById("client_full_name").value
	$client_address = document.getElementById("client_address").value
	$client_city = document.getElementById("client_city").value
	$client_state = document.getElementById("client_state").value
	$client_zip = document.getElementById("client_zip").value
	
	document.getElementById("client_billing_zip").value = $client_zip
	document.getElementById("client_billing_state").value = $client_state
	document.getElementById("client_billing_city").value = $client_city
	document.getElementById("client_billing_address").value = $client_address	
	document.getElementById("client_billing_name").value = $client_full_name
}

/// $return_zip = document.getElementById("CAT_Custom_63558").value;
/// $return_price = document.getElementById($return_zip).value;
/// $precio = document.getElementById("Amount").value;