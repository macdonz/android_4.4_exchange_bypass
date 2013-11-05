.class Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "EasOutboxSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EasOutboxSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailEntity"
.end annotation


# instance fields
.field private final mFileLength:J

.field private final mFileStream:Ljava/io/FileInputStream;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mSendTag:I

.field private final mSmartSendInfo:Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)V
    .locals 0
    .parameter "instream"
    .parameter "length"
    .parameter "tag"
    .parameter "message"
    .parameter "smartSendInfo"

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 266
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    .line 267
    iput-wide p2, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J

    .line 268
    iput p4, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSendTag:I

    .line 269
    iput-object p5, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 270
    iput-object p6, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    .line 271
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 5

    .prologue
    .line 279
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    #v0=(Reference);
    const/4 v1, 0x0

    :try_start_0
    #v1=(Null);
    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 284
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    .line 289
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 294
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    return-wide v1

    .line 288
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Uninit);v4=(Uninit);
    move-exception v1

    .line 289
    :try_start_2
    #v1=(Reference);
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 288
    :goto_1
    throw v1

    .line 285
    :catch_0
    #v1=(Conflicted);
    move-exception v1

    .line 289
    :try_start_3
    #v1=(Reference);
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 294
    :goto_2
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    goto :goto_0

    .line 290
    :catch_1
    #v1=(Reference);v2=(Conflicted);
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    #v2=(Reference);
    goto :goto_1

    :catch_3
    #v1=(LongLo);v2=(LongHi);v3=(LongLo);v4=(LongHi);
    move-exception v3

    #v3=(Reference);
    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 300
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Z)V
    .locals 5
    .parameter "outstream"
    .parameter "withData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    const-string v2, "Output stream may not be null"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 317
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;)V

    .line 319
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    #v0=(Reference);
    iget v1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSendTag:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 322
    const/16 v1, 0x551

    #v1=(PosShort);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "SendMail-"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 324
    const/16 v1, 0x548

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 327
    iget v1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSendTag:I

    #v1=(Integer);
    const/16 v2, 0x545

    #v2=(PosShort);
    if-eq v1, v2, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 329
    const/16 v1, 0x54b

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 332
    iget-object v1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 333
    const/16 v1, 0x54e

    #v1=(PosShort);
    iget-object v2, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 338
    :goto_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 343
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    const/16 v1, 0x550

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 345
    if-eqz p2, :cond_3

    .line 346
    iget-object v1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J

    #v2=(LongLo);v3=(LongHi);
    long-to-int v2, v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->opaque(Ljava/io/InputStream;I)Lcom/android/exchange/adapter/Serializer;

    .line 351
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 352
    return-void

    .line 335
    :cond_2
    #v2=(PosShort);v3=(LongLo);
    const/16 v1, 0x54d

    #v1=(PosShort);
    iget-object v2, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 336
    const/16 v1, 0x54c

    iget-object v2, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mSmartSendInfo:Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    iget-object v2, v2, Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 348
    :cond_3
    #v2=(Conflicted);
    iget-wide v1, p0, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;->mFileLength:J

    #v1=(LongLo);v2=(LongHi);
    long-to-int v1, v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->opaqueWithoutData(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_1
.end method
