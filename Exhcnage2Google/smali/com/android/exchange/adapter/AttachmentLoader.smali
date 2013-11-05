.class public Lcom/android/exchange/adapter/AttachmentLoader;
.super Ljava/lang/Object;
.source "AttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AttachmentLoader$1;,
        Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    }
.end annotation


# instance fields
.field private final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mAttachmentId:J

.field private final mAttachmentSize:I

.field private final mContext:Landroid/content/Context;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mMessageId:J

.field private final mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;Lcom/android/emailsync/PartRequest;)V
    .locals 3
    .parameter "service"
    .parameter "req"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    .line 56
    iget-object v0, p1, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p2, Lcom/android/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 58
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    .line 59
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    #v0=(LongLo);
    long-to-int v0, v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    .line 60
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    .line 61
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 62
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 98
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 99
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private doProgressCallback(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 70
    return-void
.end method

.method private doStatusCallback(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 66
    return-void
.end method

.method static encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;

    #v0=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v2}, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;-><init>(Lcom/android/exchange/adapter/AttachmentLoader$1;)V

    .line 75
    .local v0, enc:Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v1, sb:Ljava/lang/StringBuilder;
    #v1=(Reference);
    invoke-virtual {v0, v1, p0}, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    return-object v2
.end method

.method private finishLoadAttachment(Ljava/io/File;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    #v1=(Null);
    new-instance v2, Ljava/io/FileInputStream;

    #v2=(UninitRef);
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    :try_start_1
    #v2=(Reference);
    iget-object v3, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v4=(Reference);
    invoke-static {v3, v2, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->saveAttachment(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 112
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {p0, v3}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    invoke-static {v2}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 119
    return-void

    .line 113
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :catch_0
    #v2=(Conflicted);v3=(Uninit);v4=(Uninit);
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    #v0=(Reference);v1=(Reference);v3=(Conflicted);v4=(Conflicted);
    new-instance v3, Ljava/io/IOException;

    #v3=(UninitRef);
    const-string v4, "Attachment file not found?"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v3

    :goto_1
    #v3=(Reference);
    invoke-static {v1}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :catchall_1
    #v0=(Uninit);v1=(Null);v2=(Reference);v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    #v1=(Reference);
    goto :goto_1

    .line 113
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_1
    #v1=(Null);v3=(Conflicted);
    move-exception v0

    #v0=(Reference);
    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    #v1=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public loadAttachment()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    #v5=(Reference);
    if-nez v5, :cond_1

    .line 127
    const/16 v5, 0x10

    #v5=(PosByte);
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 204
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    return-void

    .line 131
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Reference);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/AttachmentLoader;->doProgressCallback(I)V

    .line 133
    const/4 v14, 0x0

    .line 135
    .local v14, resp:Lcom/android/exchange/EasResponse;
    #v14=(Null);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    #v5=(DoubleLo);v6=(DoubleHi);
    const-wide/high16 v18, 0x402c

    #v18=(LongLo);v19=(LongHi);
    cmpl-double v5, v5, v18

    #v5=(Byte);
    if-ltz v5, :cond_3

    const/4 v10, 0x1

    .line 137
    .local v10, eas14:Z
    :goto_1
    #v10=(Boolean);
    if-eqz v10, :cond_4

    .line 138
    :try_start_0
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    #v15=(UninitRef);
    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 139
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    #v15=(Reference);
    const/16 v5, 0x505

    #v5=(PosShort);
    invoke-virtual {v15, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0x506

    #v6=(PosShort);
    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 140
    const/16 v5, 0x507

    #v5=(PosShort);
    const-string v6, "Mailbox"

    #v6=(Reference);
    invoke-virtual {v15, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 141
    const/16 v5, 0x451

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v15, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 142
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "ItemOperations"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v14

    .line 155
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    :goto_2
    #v7=(Conflicted);v8=(Conflicted);v12=(Conflicted);v14=(Reference);v15=(Conflicted);
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v16

    .line 156
    .local v16, status:I
    #v16=(Integer);
    const/16 v5, 0xc8

    #v5=(PosShort);
    move/from16 v0, v16

    #v0=(Integer);
    if-ne v0, v5, :cond_9

    .line 157
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_9

    .line 158
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 159
    .local v3, is:Ljava/io/InputStream;
    #v3=(Reference);
    const/4 v13, 0x0

    .line 160
    .local v13, os:Ljava/io/OutputStream;
    #v13=(Null);
    const/16 v17, 0x0

    .line 162
    .local v17, tmpFile:Ljava/io/File;
    :try_start_1
    #v17=(Null);
    const-string v5, "eas_"

    #v5=(Reference);
    const-string v6, "tmp"

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v7, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v17

    .line 163
    #v17=(Reference);
    new-instance v4, Ljava/io/FileOutputStream;

    #v4=(UninitRef);
    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .end local v13           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    #v4=(Reference);
    if-eqz v10, :cond_6

    .line 165
    :try_start_2
    new-instance v2, Lcom/android/exchange/adapter/ItemOperationsParser;

    #v2=(UninitRef);
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;)V

    .line 167
    .local v2, p:Lcom/android/exchange/adapter/ItemOperationsParser;
    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    .line 168
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatusCode()I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    if-ne v5, v6, :cond_c

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AttachmentLoader;->finishLoadAttachment(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    :try_start_3
    invoke-static {v3}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v4}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 189
    if-eqz v17, :cond_2

    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 200
    :cond_2
    if-eqz v14, :cond_0

    .line 201
    .end local v2           #p:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v17           #tmpFile:Ljava/io/File;
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v11=(Conflicted);v13=(Conflicted);v17=(Conflicted);
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 135
    .end local v10           #eas14:Z
    .end local v16           #status:I
    :cond_3
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Byte);v6=(DoubleHi);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Null);v15=(Uninit);v16=(Uninit);v17=(Uninit);
    const/4 v10, 0x0

    #v10=(Null);
    goto/16 :goto_1

    .line 145
    .restart local v10       #eas14:Z
    :cond_4
    :try_start_4
    #v10=(Boolean);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v5=(Reference);
    iget-object v12, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 148
    .local v12, location:Ljava/lang/String;
    #v12=(Reference);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    #v5=(DoubleLo);
    const-wide/high16 v18, 0x4028

    cmpg-double v5, v5, v18

    #v5=(Byte);
    if-gez v5, :cond_5

    .line 149
    invoke-static {v12}, Lcom/android/exchange/adapter/AttachmentLoader;->encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 151
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "GetAttachment&AttachmentName="

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, cmd:Ljava/lang/String;
    #v8=(Reference);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x0

    #v6=(Null);
    const/16 v7, 0x7530

    #v7=(PosShort);
    invoke-virtual {v5, v8, v6, v7}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v14

    #v14=(Reference);
    goto/16 :goto_2

    .line 173
    .end local v8           #cmd:Ljava/lang/String;
    .end local v12           #location:Ljava/lang/String;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v16       #status:I
    .restart local v17       #tmpFile:Ljava/io/File;
    :cond_6
    :try_start_5
    #v3=(Reference);v4=(Reference);v6=(Reference);v7=(Reference);v8=(Conflicted);v12=(Conflicted);v13=(Null);v15=(Conflicted);v16=(Integer);v17=(Reference);
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getLength()I

    move-result v11

    .line 174
    .local v11, len:I
    #v11=(Integer);
    if-eqz v11, :cond_c

    .line 177
    if-gez v11, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    #v5=(Integer);
    int-to-long v5, v5

    :goto_4
    #v5=(LongLo);v6=(LongHi);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;)V

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AttachmentLoader;->finishLoadAttachment(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 187
    :try_start_6
    invoke-static {v3}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v4}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 189
    if-eqz v17, :cond_7

    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 200
    :cond_7
    if-eqz v14, :cond_0

    goto :goto_3

    .line 177
    :cond_8
    #v1=(Uninit);v5=(Reference);v6=(Reference);v7=(Reference);
    int-to-long v5, v11

    #v5=(LongLo);v6=(LongHi);
    goto :goto_4

    .line 183
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v11           #len:I
    .restart local v13       #os:Ljava/io/OutputStream;
    :catch_0
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v7=(Conflicted);v11=(Uninit);
    move-exception v9

    #v9=(Reference);
    move-object v4, v13

    .line 184
    .end local v13           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .local v9, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    #v1=(Conflicted);v2=(Conflicted);v4=(Reference);v6=(Conflicted);v11=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v5, v0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    #v5=(Reference);
    const-string v6, "Can\'t get attachment; write file not found?"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 185
    const/16 v5, 0x11

    #v5=(PosByte);
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 187
    :try_start_8
    invoke-static {v3}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v4}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 189
    if-eqz v17, :cond_9

    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 200
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v17           #tmpFile:Ljava/io/File;
    :cond_9
    :goto_6
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Conflicted);v13=(Conflicted);v17=(Conflicted);
    if-eqz v14, :cond_0

    goto/16 :goto_3

    .line 187
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v13       #os:Ljava/io/OutputStream;
    .restart local v17       #tmpFile:Ljava/io/File;
    :catchall_0
    #v1=(Uninit);v2=(Uninit);v3=(Reference);v6=(Reference);v9=(Uninit);v11=(Uninit);v13=(Null);v17=(Reference);
    move-exception v5

    #v5=(Reference);
    move-object v4, v13

    .end local v13           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :goto_7
    #v1=(Conflicted);v2=(Conflicted);v4=(Reference);v6=(Conflicted);v9=(Conflicted);v11=(Conflicted);
    invoke-static {v3}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v4}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 189
    if-eqz v17, :cond_a

    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 187
    :cond_a
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 195
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v16           #status:I
    .end local v17           #tmpFile:Ljava/io/File;
    :catch_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v13=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-exception v9

    .line 197
    .local v9, e:Ljava/io/IOException;
    #v9=(Reference);
    const/16 v5, 0x20

    :try_start_9
    #v5=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 198
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 200
    .end local v9           #e:Ljava/io/IOException;
    :catchall_1
    #v0=(Conflicted);v5=(Conflicted);v9=(Conflicted);
    move-exception v5

    #v5=(Reference);
    if-eqz v14, :cond_b

    .line 201
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    .line 200
    :cond_b
    throw v5

    .line 187
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v16       #status:I
    .restart local v17       #tmpFile:Ljava/io/File;
    :cond_c
    :try_start_a
    #v0=(Reference);v1=(Uninit);v3=(Reference);v4=(Reference);v5=(Conflicted);v7=(Reference);v9=(Uninit);v13=(Null);v16=(Integer);v17=(Reference);
    invoke-static {v3}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v4}, Lcom/android/exchange/adapter/AttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 189
    if-eqz v17, :cond_9

    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6

    .line 187
    :catchall_2
    #v1=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    move-exception v5

    #v5=(Reference);
    goto :goto_7

    .line 183
    :catch_2
    #v5=(Conflicted);v7=(Reference);v9=(Uninit);
    move-exception v9

    #v9=(Reference);
    goto :goto_5
.end method
