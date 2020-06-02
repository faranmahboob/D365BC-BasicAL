pageextension 90616 "FM Item Card Extension" extends "Item Card"
{
    layout
    {
    }
    actions
    {
        addafter(Functions)
        {
            action("ImportItemPicture")
            {
                Caption = 'Import Item Picture';
                ApplicationArea = all;
                trigger OnAction()
                var
                    ImageManagement: Codeunit "FM Image Management";
                begin
                    ImageManagement.ImportItemPicture(Rec);
                end;
            }
            action("ExportItemPicture")
            {
                Caption = 'Export Item Picture';
                ApplicationArea = all;
                trigger OnAction()
                var
                    ImageManagement: Codeunit "FM Image Management";
                begin
                    ImageManagement.ExportItemPicture(Rec);
                end;
            }
        }
    }
}