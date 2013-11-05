.class public Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
.super Ljava/lang/Object;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OriginalMessageInfo"
.end annotation


# instance fields
.field final mCollectionId:Ljava/lang/String;

.field final mItemId:Ljava/lang/String;

.field final mRefId:J


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "refId"
    .parameter "itemId"
    .parameter "collectionId"

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    #p0=(Reference);
    iput-wide p1, p0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mRefId:J

    .line 237
    iput-object p3, p0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    .line 239
    return-void
.end method
