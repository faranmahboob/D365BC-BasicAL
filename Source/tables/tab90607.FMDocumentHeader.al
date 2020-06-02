table 90607 "FM Document Header"
{
    fields
    {
        field(1; "No."; Code[20])
        {

            trigger OnValidate();
            begin
                IF "No." <> xRec."No." THEN BEGIN
                    ExampleSetup.GET;
                    NoSeriesManagement.TestManual(ExampleSetup."Document Nos.");
                    "No. Series" := '';
                END;
            end;
        }
        field(2; "Document Date"; Date)
        {
        }
        field(3; "No. Series"; Code[20])
        {
        }
        field(10; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(13; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
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
            ExampleSetup.GET;
            ExampleSetup.TESTFIELD("Document Nos.");
            NoSeriesManagement.InitSeries(ExampleSetup."Document Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        END;

        InitRecord;
    end;

    var
        NoSeriesManagement: Codeunit 396;
        ExampleSetup: Record "FM Example Setup table";
        DocumentHeader: Record "FM Document Header";
        DocumentLine: Record "FM Document Line";

    PROCEDURE AssistEdit(OldDocumentHeader: Record "FM Document Header"): Boolean;
    var
        DocumentHeader: Record "FM Document Header";
    begin
        WITH DocumentHeader DO BEGIN
            DocumentHeader := Rec;
            ExampleSetup.GET;
            ExampleSetup.TESTFIELD("Document Nos.");
            IF NoSeriesManagement.SelectSeries(ExampleSetup."Document Nos.", OldDocumentHeader."No. Series", "No. Series") THEN BEGIN
                NoSeriesManagement.SetSeries("No.");
                Rec := DocumentHeader;
                EXIT(TRUE);
            END;
        END;
    end;

    PROCEDURE InitRecord();
    begin
        IF "Posting Date" = 0D THEN
            "Posting Date" := WORKDATE;
        "Document Date" := WORKDATE;
        ExampleSetup.GET;
    end;
}
