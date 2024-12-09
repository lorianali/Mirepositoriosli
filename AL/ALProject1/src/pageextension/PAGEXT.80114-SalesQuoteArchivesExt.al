pageextension 80114 SalesQuoteArchivesExt extends "Sales Quote Archives"
{
    layout
    {
        addafter("Due Date")
        {
            field(MyField; FieldSource)
            {
                Editable = false;
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