.class Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
.super Ljava/lang/Object;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncOptions"
.end annotation


# instance fields
.field private final mInterval:I

.field private final mLookback:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter "interval"
    .parameter "lookback"

    .prologue
    .line 319
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 320
    #p0=(Reference);
    iput p1, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I

    .line 321
    iput p2, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I

    .line 322
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/exchange/adapter/FolderSyncParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;-><init>(II)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 315
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 315
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I

    #v0=(Integer);
    return v0
.end method
