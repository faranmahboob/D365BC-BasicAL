pageextension 90604 "FM Credit Limit Page Extension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Facebook; Facebook) { ApplicationArea = all; }
            field(Twitter; Twitter) { ApplicationArea = all; }
            field(Instagram; Instagram) { ApplicationArea = all; }
            field(Linkdin; Linkdin) { ApplicationArea = all; }
        }
    }
    actions
    {
        addafter("F&unctions")
        {
            action("Update Credit Limit")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CalculateCost;
                trigger OnAction()
                var
                begin
                    CallUpdateCreditLimit();
                end;
            }
        }
    }
    local procedure CallUpdateCreditLimit()
    var
        CreditLimitCalculated: Decimal;
        CreditLimitActual: Decimal;
    begin
        CreditLimitCalculated := Rec.CalculateCreditLimit;
        IF CreditLimitCalculated = Rec."Credit Limit (LCY)" THEN BEGIN
            MESSAGE(Text3);
            EXIT;
        END;
        IF GUIALLOWED AND NOT CONFIRM(ComfirmationMsg, FALSE, FIELDCAPTION("Credit Limit (LCY)"), CreditLimitCalculated) THEN
            EXIT;
        CreditLimitActual := CreditLimitCalculated;
        Rec.UpdateCreditLimit(CreditLimitActual);
        IF CreditLimitActual <> CreditLimitCalculated THEN
            MESSAGE(Text2, CreditLimitActual);



    end;

    var
        ComfirmationMsg: Label 'Are you sure that you want to set the %1 to %2?';
        Text2: Label 'The credit limit was rounded to %1 to comply with company policies.';
        Text3: Label 'The credit limit is up to date.';

}