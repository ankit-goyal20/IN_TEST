codeunit 50103 FlowNarration
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostCustomerEntry', '', FALSE, FALSE)]
    local procedure passnarration(var GenJnlLine: Record "Gen. Journal Line"; var SalesHeader: Record "Sales Header")
    begin

        GenJnlLine.Narration := SalesHeader.Narration;

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitCustLedgEntry', '', FALSE, FALSE)]
    local procedure passnarrationcustledg(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        CustLedgerEntry.narration := GenJournalLine.Narration;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post", 'OnBeforeCode', '', FALSE, false)]
    local procedure CheckAmountNeg(var GenJournalLine: Record "Gen. Journal Line")
    begin
        SourceCodeSetup.get;
        if SourceCodeSetup."Cash Receipt Journal" = GenJournalLine."Source Code" then BEGIN
            if GenJournalLine.Amount < 0 then
                Error('Amount Must not be negative');
                END;
        Error('amout');

    end;

    var
        SourceCodeSetup: Record "Source Code Setup";


}
