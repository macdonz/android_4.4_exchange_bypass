.class Lcom/android/exchange/adapter/ContactsSyncParser$PhoneRow;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"

# interfaces
.implements Lcom/android/exchange/adapter/ContactsSyncParser$UntypedRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneRow"
.end annotation


# instance fields
.field phone:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "_phone"
    .parameter "_type"

    .prologue
    .line 746
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 747
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncParser$PhoneRow;->phone:Ljava/lang/String;

    .line 748
    iput p2, p0, Lcom/android/exchange/adapter/ContactsSyncParser$PhoneRow;->type:I

    .line 749
    return-void
.end method


# virtual methods
.method public addValues(Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 753
    const-string v0, "data1"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncParser$PhoneRow;->phone:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 754
    const-string v0, "data2"

    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncParser$PhoneRow;->type:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 755
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .locals 1
    .parameter "_type"
    .parameter "value"

    .prologue
    .line 759
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$PhoneRow;->type:I

    #v0=(Integer);
    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$PhoneRow;->phone:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
