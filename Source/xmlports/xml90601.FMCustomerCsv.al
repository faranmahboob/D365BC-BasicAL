xmlport 90601 "FM Customer XML CSV"
{
    Direction = Export;
    Format = VariableText;
    schema
    {

        tableelement(Customer; Customer)
        {

            fieldattribute(Id; Customer.Id) { }
            fieldattribute(Number; Customer."No.") { }
            fieldattribute(Language; Customer."Language Code") { }
            fieldelement(Name; Customer.Name) { }
            textelement(Address)
            {
                fieldelement(StreetAndNr; Customer.Address)
                {
                    fieldattribute(Address2; customer."Address 2") { }
                }
                fieldelement(City; Customer.City)
                {
                    fieldattribute(Zipcode; Customer."Post Code") { }
                }
            }
            fieldelement(Phone; Customer."Phone No.") { }
        }

    }



    var
        myInt: Integer;
}