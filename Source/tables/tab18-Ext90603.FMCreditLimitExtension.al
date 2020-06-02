tableextension 90603 "FM Credit Limit Extension" extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50]) { DataClassification = CustomerContent; }
        field(50111; Twitter; Text[50]) { DataClassification = CustomerContent; }
        field(50112; Instagram; Text[50]) { DataClassification = CustomerContent; }
        field(50113; Linkdin; Text[50]) { DataClassification = CustomerContent; }
    }
    procedure UpdateCreditLimit(NewCreditLimit: Decimal)
    var
        myInt: Integer;
    begin
        NewCreditLimit := ROUND(NewCreditLimit, 10000);
        Rec.VALIDATE("Credit Limit (LCY)", NewCreditLimit);
        Rec.MODIFY;
    end;

    procedure CalculateCreditLimit(): Decimal
    var
        Cust: Record Customer;
    begin
        Cust.SETRANGE("Date Filter", CALCDATE('<-12M>', WORKDATE), WORKDATE);
        Cust.CALCFIELDS("Sales (LCY)", "Balance (LCY)");
        EXIT(ROUND(Cust."Sales (LCY)" * 0.5));
    end;
}