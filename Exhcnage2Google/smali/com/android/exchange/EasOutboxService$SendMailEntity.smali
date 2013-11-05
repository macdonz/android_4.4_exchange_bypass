.class Lcom/android/exchange/EasOutboxService$SendMailEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailEntity"
.end annotation


# static fields
.field private static final MODE_TAGS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileLength:J

.field private final mFileStream:Ljava/io/FileInputStream;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mSendTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    return-void

    #v0=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x45t 0x5t 0x0t 0x0t
        0x47t 0x5t 0x0t 0x0t
        0x46t 0x5t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter "context"
    .parameter "instream"
    .parameter "length"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 104
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 105
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    .line 107
    iput-wide p3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    .line 108
    iput p5, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    .line 109
    iput-object p6, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 110
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 5

    .prologue
    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    #v0=(Reference);
    const/4 v1, 0x0

    :try_start_0
    #v1=(Null);
    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    .line 128
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 133
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    return-wide v1

    .line 127
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Uninit);v4=(Uninit);
    move-exception v1

    .line 128
    :try_start_2
    #v1=(Reference);
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    :goto_1
    throw v1

    .line 124
    :catch_0
    #v1=(Conflicted);
    move-exception v1

    .line 128
    :try_start_3
    #v1=(Reference);
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 133
    :goto_2
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    goto :goto_0

    .line 129
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
    .line 138
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/EasOutboxService$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 139
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Z)V
    .locals 6
    .parameter "outstream"
    .parameter "withData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #v2=(UninitRef);
    const-string v3, "Output stream may not be null"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 155
    :cond_0
    #v2=(Uninit);v3=(Uninit);
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Lcom/android/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;)V

    .line 157
    .local v1, s:Lcom/android/exchange/adapter/Serializer;
    #v1=(Reference);
    iget v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 160
    const/16 v2, 0x551

    #v2=(PosShort);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "SendMail-"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 162
    const/16 v2, 0x548

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 165
    iget v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    #v2=(Integer);
    const/16 v3, 0x545

    #v3=(PosShort);
    if-eq v2, v3, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->access$000(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    .line 167
    .local v0, info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 168
    const/16 v2, 0x54b

    #v2=(PosShort);
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 171
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 172
    const/16 v2, 0x54e

    #v2=(PosShort);
    iget-object v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 177
    :goto_0
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 182
    .end local v0           #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/16 v2, 0x550

    #v2=(PosShort);
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 184
    if-eqz p2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    #v2=(Reference);
    iget-wide v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    #v3=(LongLo);v4=(LongHi);
    long-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->opaque(Ljava/io/InputStream;I)Lcom/android/exchange/adapter/Serializer;

    .line 190
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 191
    return-void

    .line 174
    .restart local v0       #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_2
    #v0=(Reference);v3=(LongLo);v4=(LongHi);
    const/16 v2, 0x54d

    #v2=(PosShort);
    iget-object v3, v0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 175
    const/16 v2, 0x54c

    iget-object v3, v0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 187
    .end local v0           #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-wide v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    #v2=(LongLo);v3=(LongHi);
    long-to-int v2, v2

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->opaqueWithoutData(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_1
.end method
