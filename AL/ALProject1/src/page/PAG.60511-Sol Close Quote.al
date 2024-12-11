page 60511 "Sol Close Quote"
{
    PageType = Card;
    LinksAllowed = false;
    DeleteAllowed = false;
    InsertAllowed = false;
    UsageCategory = None;
    SourceTable = "Sales Header";


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field(QuoteWon; rec."SOL Won/Lost Quote Status")
                {
                    ApplicationArea = All;
                    Editable = AllowChangeStatus;
                    ToolTip = 'Please Specify the Won/Lost Quote Status';
                }
                field("Won/Lost Date"; rec."SOL Won/Lost Date")
                {
                    ApplicationArea = All;
                    Editable = AllowChangeStatus;
                    ToolTip = 'Specified the data this quote was closed';
                }
                field("Won/Lost Reason"; rec."SOL Won/Lost Reason Code")
                {
                    ApplicationArea = All;
                    Editable = AllowChangeStatus;
                    ToolTip = 'Specifies the reason closing the quote.';
                }
                field("Won/Lost Reason Desc."; rec."SOL Won/Lost Reason Desc.")
                {
                    ApplicationArea = All;
                    Editable = AllowChangeStatus;
                    ToolTip = 'Specifies the reason closing the quote';
                }
                field("Won/Lost Remarks"; rec."SOL Won/Lost Remarks")
                {
                    ApplicationArea = All;
                    Editable = AllowChangeStatus;
                    Caption = 'Remarks';
                    MultiLine = true;
                    ToolTip = 'Specified an extra remark on the quote status';
                }
            }

        }
    }


    actions
    {
        area(Processing)
        {

        }
    }
    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
    begin
        if CloseAction = Action::LookupOK then
            FinishWizard();
    end;



    local procedure FinishWizard()
    var
        MustSelectWonOrLostErr: Label 'You must select eighter Won or Lost';
        FieldMustBeFilledInErr: Label 'You must fill in the %1 field.', Comment = '%1 = caption of the field.';
    begin
        if not (rec."SOL Won/Lost Quote Status" in [rec."SOL Won/Lost Quote Status"::Won, rec."SOL Won/Lost Quote Status"::Lost]) then
            Error(MustSelectWonOrLostErr);

        if rec."SOL Won/Lost Reason Code" = '' then
            Error(FieldMustBeFilledInErr, rec.FieldCaption("SOL Won/Lost Reason Code"));
        Rec.Modify();
    end;

    var
        AllowChangeStatus: Boolean;

    trigger OnOpenPage()
    begin
        AllowChangeStatus := Rec."SOL Won/Lost Quote Status" <> Rec."SOL Won/Lost Quote Status"::"Won";
    end;


  
}