codeunit 90601 "FM Validataions"
{
    trigger OnRun()
    begin

    end;

    local procedure CheckForPlusSign(TextToVerify: Text)
    var
        Result: Integer;
    begin
        Result := StrPos(TextToVerify, '+');
        if Result > 0 then
            Message('+ sign cannot be used');
    end;

    [EventSubscriber(ObjectType::Page, page::"Customer Card", 'OnAfterValidateEvent', 'Address', false, false)]
    local procedure OnCustomerPageAddressValidate(Rec: Record customer; xRec: Record customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;

    var
        myInt: Integer;
}