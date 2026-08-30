@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Reporte Libro 7.1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_LIBRO_7_1 
as select from I_JournalEntryItem
{
    key AssetClass,
    key FixedAsset,
    key GLAccount,
    key MasterFixedAsset,
    Ledger,
    PostingDate,
    AccountingDocument    
 }
 where
    //Ledger = '2L' and
       AssetClass <> ''
 and   IsReversal =  ''
 and   IsReversed =  ''
 group by
    PostingDate,
    GLAccount,
    Ledger,
    AssetClass,
    AccountingDocument,
    MasterFixedAsset,
    FixedAsset
