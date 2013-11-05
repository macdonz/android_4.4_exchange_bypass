.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$NameComparator;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 580
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 581
    #p0=(Reference);
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$NameComparator;->collator:Ljava/text/Collator;

    .line 583
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$NameComparator;->collator:Ljava/text/Collator;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 584
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$NameComparator;->collator:Ljava/text/Collator;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->sortName:Ljava/lang/String;

    #v2=(Reference);
    iget-object v3, p2, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->sortName:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 589
    .local v0, res:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 595
    .end local v0           #res:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return v0

    .line 592
    .restart local v0       #res:I
    :cond_0
    #v1=(Reference);v2=(Reference);
    iget v1, p1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    #v1=(Integer);
    iget v2, p2, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    #v2=(Integer);
    if-eq v1, v2, :cond_2

    .line 593
    iget v1, p1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    iget v2, p2, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    #v1=(Byte);
    move v0, v1

    #v0=(Byte);
    goto :goto_0

    :cond_1
    #v0=(Integer);v1=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_1

    .line 595
    :cond_2
    #v1=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 577
    check-cast p1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;

    .end local p1
    check-cast p2, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$NameComparator;->compare(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalSortKey;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
