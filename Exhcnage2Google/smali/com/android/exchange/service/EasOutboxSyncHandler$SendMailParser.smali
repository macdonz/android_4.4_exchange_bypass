.class Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;
.super Lcom/android/exchange/adapter/Parser;
.source "EasOutboxSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EasOutboxSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailParser"
.end annotation


# instance fields
.field private final mStartTag:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .parameter "in"
    .parameter "startTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 361
    #p0=(Reference);
    iput p2, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStartTag:I

    .line 362
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStatus:I

    #v0=(Integer);
    return v0
.end method

.method public parse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 373
    #v2=(Null);
    invoke-virtual {p0, v2}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStartTag:I

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 374
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 376
    :cond_0
    :goto_0
    #v0=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    .line 377
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x552

    #v1=(PosShort);
    if-ne v0, v1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->mStatus:I

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->skipTag()V

    goto :goto_0

    .line 383
    :cond_2
    #v1=(PosByte);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method
