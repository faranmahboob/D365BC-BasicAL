codeunit 90604 "FM Reset Customer Credit Limit"
{
    trigger OnRun()
    begin
        Top10Cust.SETFILTER(Sum_Amount_LCY, '>%1', 0);
        Top10Cust.OPEN;
        WHILE Top10Cust.READ DO BEGIN
            Customer.GET(Top10Cust.No_);
            CustomerTemp := Customer;
            CustomerTemp.INSERT;
        END;
        Top10Cust.CLOSE;
        IF PAGE.RUNMODAL(PAGE::"Customer List", CustomerTemp) = ACTION::LookupOK THEN
            ConfirmReset;
    end;

    local procedure ResetCreditLimit()
    var
    begin
        IF CustomerTemp.FINDSET THEN
            REPEAT
                Customer.GET(CustomerTemp."No.");
                Customer."Credit Limit (LCY)" := 0;
                Customer.MODIFY;
            UNTIL CustomerTemp.NEXT = 0;
        MESSAGE(ActionCompletedMsg);
    end;

    procedure ConfirmReset()
    var
        myInt: Integer;
    begin
        IF CONFIRM(ResetCreditLimitMsg, FALSE, Customer.FIELDCAPTION("Credit Limit (LCY)"), 0)
        THEN
            ResetCreditLimit;
    end;

    var
        Top10Cust: Query "FM Cust Ledger Entry Query";
        Customer: Record Customer;
        CustomerTemp: Record Customer temporary;
        ResetCreditLimitMsg: label 'Do you want to reset the %1 to %2 for these customers?';
        ActionCompletedMsg: Label 'Action Completed Successfully';
}
