.class Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowBuilder"
.end annotation


# instance fields
.field builder:Landroid/content/ContentProviderOperation$Builder;

.field cv:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0
    .parameter "_builder"

    .prologue
    .line 774
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 775
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 776
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V
    .locals 1
    .parameter "_builder"
    .parameter "_ncv"

    .prologue
    .line 778
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 779
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 780
    iget-object v0, p2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 781
    return-void
.end method


# virtual methods
.method build()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 794
    return-object p0
.end method

.method withValueBackReference(Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 1
    .parameter "key"
    .parameter "previousResult"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 785
    return-object p0
.end method
