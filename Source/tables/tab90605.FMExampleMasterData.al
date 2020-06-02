table 90605 "FM Example Master Data"
{
    DrillDownPageID = "FM Example List";
    LookupPageID = "FM Example List";

    fields
    {
        field(1; "No."; Code[20])
        {

            trigger OnValidate();
            begin
                IF "No." <> xRec."No." THEN BEGIN
                    ExampleSetup.GET;
                    NoSeriesManagement.TestManual(ExampleSetup."Example Nos.");
                    "No. Series" := '';
                END;
            end;
        }
        field(2; Description; Text[50])
        {
        }
        field(3; "Example Type Code"; Code[20])
        {
            TableRelation = "FM Example Type";
        }
        field(4; "No. Series"; Code[20])
        {
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        IF "No." = '' THEN BEGIN
            ExampleSetup.Get;
            ExampleSetup.TESTFIELD("Example Nos.");
            NoSeriesManagement.InitSeries(ExampleSetup."Example Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        END;
    end;

    var
        NoSeriesManagement: Codeunit NoSeriesManagement;
        ExampleSetup: Record "FM Example Setup table";

    PROCEDURE AssistEdit(OldExample: Record "FM Example Master Data"): Boolean;
    var
        Example: Record "FM Example Master Data";
    begin
        WITH Example DO BEGIN
            Example := Rec;
            ExampleSetup.GET;
            ExampleSetup.TESTFIELD("Example Nos.");
            IF NoSeriesManagement.SelectSeries(ExampleSetup."Example Nos.", OldExample."No. Series", "No. Series") THEN BEGIN
                NoSeriesManagement.SetSeries("No.");
                Rec := Example;
                EXIT(TRUE);
            END;
        END;
    end;
}
