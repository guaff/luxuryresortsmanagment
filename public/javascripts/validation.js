function validate_required(field,alerttxt)
{
with (field)
  {
  if (value==null||value=="")
    {
    alert(alerttxt);return false;
    }
  else
    {
    return true;
    }
  }
}

function validate_form(thisform)
{
with (thisform)
  {
  if (validate_required(interested_name,"name must be filled out!")==false)
  {interested_name.focus();return false;}
  if (validate_required(interested_email,"email must be filled out!")==false)
  {interested_email.focus();return false;}
  if (validate_required(interested_phone_number,"phone number must be filled out!")==false)
  {interested_phone_number.focus();return false;}
	}
}

