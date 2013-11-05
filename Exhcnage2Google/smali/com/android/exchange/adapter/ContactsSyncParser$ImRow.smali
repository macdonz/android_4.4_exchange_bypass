.class Lcom/android/exchange/adapter/ContactsSyncParser$ImRow;
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
    name = "ImRow"
.end annotation


# instance fields
.field im:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "_im"

    .prologue
    .line 727
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 728
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncParser$ImRow;->im:Ljava/lang/String;

    .line 729
    return-void
.end method


# virtual methods
.method public addValues(Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 733
    const-string v0, "data1"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncParser$ImRow;->im:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 734
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$ImRow;->im:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
