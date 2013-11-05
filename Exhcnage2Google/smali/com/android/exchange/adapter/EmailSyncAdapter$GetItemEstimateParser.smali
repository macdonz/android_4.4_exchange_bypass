.class Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
.super Lcom/android/exchange/adapter/Parser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetItemEstimateParser"
.end annotation


# instance fields
.field private mEstimate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 336
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 340
    return-void
.end method


# virtual methods
.method public parse()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    :goto_0
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 346
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x185

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseGetItemEstimate()V

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 352
    :cond_1
    #v1=(PosByte);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public parseCollection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 378
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Null);
    const/16 v0, 0x188

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_3

    .line 379
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x189

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 380
    const-string v0, "Exchange"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "GIE class: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 381
    :cond_0
    #v0=(Integer);v1=(PosShort);v2=(Conflicted);
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18a

    if-ne v0, v1, :cond_1

    .line 382
    const-string v0, "Exchange"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "GIE collectionId: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 383
    :cond_1
    #v0=(Integer);v1=(PosShort);v2=(Conflicted);
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18c

    if-ne v0, v1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 385
    const-string v0, "Exchange"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "GIE estimate: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 387
    :cond_2
    #v0=(Integer);v1=(PosShort);v2=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 390
    :cond_3
    #v1=(PosByte);
    return-void
.end method

.method public parseGetItemEstimate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    :goto_0
    const/16 v0, 0x185

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 357
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18d

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseResponse()V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 363
    :cond_1
    #v1=(PosByte);
    return-void
.end method

.method public parseResponse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    :goto_0
    const/16 v0, 0x18d

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    .line 367
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18e

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 368
    const-string v0, "Exchange"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "GIE status: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 369
    :cond_0
    #v0=(Integer);v1=(PosShort);v2=(Conflicted);
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x188

    if-ne v0, v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseCollection()V

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 375
    :cond_2
    #v1=(PosByte);
    return-void
.end method
