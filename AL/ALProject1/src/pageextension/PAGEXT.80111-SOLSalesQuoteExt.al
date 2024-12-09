pageextension 80111 "SOL Sales Quote Ext" extends "Sales Quote"
{
    layout
    {
        addlast(General)
        {
            field("Quote Status"; rec."SOL Won/Lost Quote Status")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the status of the quote.';
            }
            field("Won/Lost Date"; rec."SOL Won/Lost Date")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the date of this quote was closed.';
            }
            field("Won/Lost Reason Desc."; rec."SOL Won/Lost Reason Desc.")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the reason closing the quote.';
            }
            field("Won/Lost Remarks"; rec."SOL Won/Lost Remarks")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies an extra remark on the quote status.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}