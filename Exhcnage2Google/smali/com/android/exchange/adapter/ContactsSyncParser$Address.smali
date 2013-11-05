.class public final Lcom/android/exchange/adapter/ContactsSyncParser$Address;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field city:Ljava/lang/String;

.field code:Ljava/lang/String;

.field country:Ljava/lang/String;

.field state:Ljava/lang/String;

.field street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method hasData()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$Address;->city:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$Address;->country:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$Address;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$Address;->state:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$Address;->street:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
