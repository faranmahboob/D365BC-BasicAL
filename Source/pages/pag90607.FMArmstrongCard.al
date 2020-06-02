page 90607 "FM Armstrong Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Armstrong Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
            }
        }
    }

    trigger OnOpenPage()
    var
        intJ: Integer;
        intI: Integer;
        intPower: Integer;
        intNumber: Integer;
        intResult: Integer;
        intList: List of [Integer];
        MagicNumbers: Text;
    begin
        for intI := 1 to 10000 do begin
            evaluate(intPower, CopyStr(Format(intI), StrLen(Format(intI)), 1));
            for intJ := 1 to StrLen(Format(intI)) do begin
                evaluate(intNumber, CopyStr(Format(intI), intJ, 1));
                intResult += Power(intNumber, intPower);
            end;
            if intResult = intI then
                intList.Add(intResult);
            Clear(intResult);
        end;
        foreach intI in intList do
            MagicNumbers += Format(intI) + '\';
        Message(MagicNumbers);
    end;


    var

}