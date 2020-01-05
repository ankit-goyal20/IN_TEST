pageextension 50105 SalesrderExt extends "Order Processor Role Center"
{
    layout
    {
        // Add changes to page layout here

    }

    actions
    {
        addlast(sections)
        {
            group(mygroup)
            {
                action(Newcustcard)
                {
                    RunObject = page "Customer Card";
                }


            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}