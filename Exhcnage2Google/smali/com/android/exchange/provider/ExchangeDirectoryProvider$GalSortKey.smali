.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalSortKey"
.end annotation


# instance fields
.field final id:I

.field final sortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "sortName"
    .parameter "id"

    .prologue
    .line 571
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 572
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->sortName:Ljava/lang/String;

    .line 573
    iput p2, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    .line 574
    return-void
.end method
