.class public Lcom/android/exchange/service/EasAttachmentLoader;
.super Lcom/android/exchange/service/EasServerConnection;
.source "EasAttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/service/EasAttachmentLoader$1;,
        Lcom/android/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;,
        Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 0
    .parameter "context"
    .parameter "account"
    .parameter "callback"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 43
    #p0=(Reference);
    iput-object p3, p0, Lcom/android/exchange/service/EasAttachmentLoader;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 35
    invoke-static/range {p0 .. p6}, Lcom/android/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 183
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "IOException while cleaning up attachment: %s"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V
    .locals 6
    .parameter "callback"
    .parameter "messageKey"
    .parameter "attachmentId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .line 52
    :try_start_0
    invoke-interface/range {p0 .. p6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 53
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move-exception v0

    .line 54
    .local v0, e:Landroid/os/RemoteException;
    #v0=(Reference);
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "RemoteException in loadAttachment: %s"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 134
    new-instance v0, Lcom/android/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;

    #v0=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v2}, Lcom/android/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;-><init>(Lcom/android/exchange/service/EasAttachmentLoader$1;)V

    .line 135
    .local v0, enc:Lcom/android/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;
    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v1, sb:Ljava/lang/StringBuilder;
    #v1=(Reference);
    invoke-virtual {v0, v1, p0}, Lcom/android/exchange/service/EasAttachmentLoader$AttachmentNameEncoder;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    return-object v2
.end method

.method private finishLoadAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/io/File;)Z
    .locals 7
    .parameter "attachment"
    .parameter "file"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 195
    :try_start_0
    #v3=(Null);
    new-instance v1, Ljava/io/FileInputStream;

    #v1=(UninitRef);
    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v1, in:Ljava/io/InputStream;
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-static {v3, v1, p1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->saveAttachment(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 202
    invoke-static {v1}, Lcom/android/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V

    .line 203
    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v2

    .line 196
    :catch_0
    #v0=(Uninit);v2=(One);v3=(Null);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/FileNotFoundException;
    #v0=(Reference);
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Could not open attachment file: %s"

    #v5=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v2, v3

    .line 199
    #v2=(Null);
    goto :goto_0
.end method

.method private handleResponse(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 15
    .parameter "resp"
    .parameter "attachment"

    .prologue
    .line 215
    :try_start_0
    const-string v4, "eas_"

    #v4=(Reference);
    const-string v5, "tmp"

    #v5=(Reference);
    iget-object v12, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v12=(Reference);
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-static {v4, v5, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 225
    .local v11, tmpFile:Ljava/io/File;
    :try_start_1
    #v11=(Reference);
    new-instance v3, Ljava/io/FileOutputStream;

    #v3=(UninitRef);
    invoke-direct {v3, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    .local v3, os:Ljava/io/OutputStream;
    :try_start_2
    #v3=(Reference);
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 233
    .local v2, is:Ljava/io/InputStream;
    :try_start_3
    #v2=(Reference);
    new-instance v6, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;

    #v6=(UninitRef);
    iget-object v4, p0, Lcom/android/exchange/service/EasAttachmentLoader;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-object/from16 v0, p2

    #v0=(Reference);
    invoke-direct {v6, v4, v0}, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;-><init>(Lcom/android/emailcommon/service/IEmailServiceCallback;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 235
    .local v6, callback:Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;
    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/service/EasAttachmentLoader;->getProtocolVersion()D

    move-result-wide v4

    #v4=(DoubleLo);v5=(DoubleHi);
    const-wide/high16 v12, 0x402c

    #v12=(LongLo);v13=(LongHi);
    cmpl-double v4, v4, v12

    #v4=(Byte);
    if-ltz v4, :cond_1

    .line 236
    new-instance v1, Lcom/android/exchange/adapter/ItemOperationsParser;

    #v1=(UninitRef);
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    #v4=(LongLo);v5=(LongHi);
    invoke-direct/range {v1 .. v6}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;)V

    .line 238
    .local v1, parser:Lcom/android/exchange/adapter/ItemOperationsParser;
    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    .line 239
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatusCode()I

    move-result v4

    #v4=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    if-ne v4, v5, :cond_0

    const/4 v10, 0x1

    .line 251
    .end local v1           #parser:Lcom/android/exchange/adapter/ItemOperationsParser;
    .local v10, success:Z
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v10=(Boolean);
    if-eqz v10, :cond_4

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11}, Lcom/android/exchange/service/EasAttachmentLoader;->finishLoadAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 252
    const/4 v9, 0x0

    .line 261
    .local v9, status:I
    :goto_1
    :try_start_4
    #v4=(Conflicted);v9=(PosByte);
    invoke-static {v2}, Lcom/android/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 264
    :try_start_5
    invoke-static {v3}, Lcom/android/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v6           #callback:Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;
    .end local v9           #status:I
    .end local v10           #success:Z
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 259
    .end local v11           #tmpFile:Ljava/io/File;
    :goto_3
    #v11=(Conflicted);
    return v9

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, e:Ljava/io/IOException;
    #v7=(Reference);
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Could not open temp file: %s"

    #v5=(Reference);
    const/4 v12, 0x1

    #v12=(One);
    new-array v12, v12, [Ljava/lang/Object;

    #v12=(Reference);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    aput-object v14, v12, v13

    invoke-static {v4, v5, v12}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    const/16 v9, 0x20

    #v9=(PosByte);
    goto :goto_3

    .line 226
    .end local v7           #e:Ljava/io/IOException;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_1
    #v3=(Conflicted);v7=(Uninit);v9=(Uninit);v11=(Reference);v13=(Uninit);v14=(Uninit);
    move-exception v7

    .line 227
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_6
    #v7=(Reference);
    const-string v4, "Exchange"

    const-string v5, "Temp file not found: %s"

    const/4 v12, 0x1

    #v12=(One);
    new-array v12, v12, [Ljava/lang/Object;

    #v12=(Reference);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    aput-object v14, v12, v13

    invoke-static {v4, v5, v12}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 228
    const/16 v9, 0x11

    #v9=(PosByte);
    goto :goto_2

    .line 239
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #parser:Lcom/android/exchange/adapter/ItemOperationsParser;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v6       #callback:Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;
    :cond_0
    #v0=(Reference);v1=(Reference);v2=(Reference);v3=(Reference);v4=(Integer);v5=(One);v6=(Reference);v7=(Uninit);v9=(Uninit);v12=(LongLo);v13=(LongHi);v14=(Uninit);
    const/4 v10, 0x0

    #v10=(Null);
    goto :goto_0

    .line 241
    .end local v1           #parser:Lcom/android/exchange/adapter/ItemOperationsParser;
    :cond_1
    :try_start_7
    #v1=(Uninit);v4=(Byte);v5=(DoubleHi);v10=(Uninit);
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/EasResponse;->getLength()I

    move-result v8

    .line 242
    .local v8, length:I
    #v8=(Integer);
    if-eqz v8, :cond_2

    .line 245
    if-gez v8, :cond_3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    :goto_4
    #v4=(LongLo);v5=(LongHi);
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 248
    :cond_2
    #v4=(Conflicted);
    const/4 v10, 0x1

    .restart local v10       #success:Z
    #v10=(One);
    goto :goto_0

    .line 245
    .end local v10           #success:Z
    :cond_3
    #v4=(Byte);v5=(DoubleHi);v10=(Uninit);
    int-to-long v4, v8

    #v4=(LongLo);v5=(LongHi);
    goto :goto_4

    .line 254
    .end local v8           #length:I
    .restart local v10       #success:Z
    :cond_4
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v10=(Boolean);
    const/16 v9, 0x20

    .restart local v9       #status:I
    #v9=(PosByte);
    goto :goto_1

    .line 257
    .end local v6           #callback:Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;
    .end local v9           #status:I
    .end local v10           #success:Z
    :catch_2
    #v0=(Conflicted);v6=(Conflicted);v9=(Uninit);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-exception v7

    .line 258
    .local v7, e:Ljava/io/IOException;
    :try_start_8
    #v7=(Reference);
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Error reading attachment: %s"

    #v5=(Reference);
    const/4 v12, 0x1

    #v12=(One);
    new-array v12, v12, [Ljava/lang/Object;

    #v12=(Reference);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    aput-object v14, v12, v13

    invoke-static {v4, v5, v12}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 259
    const/16 v9, 0x20

    .line 261
    :try_start_9
    #v9=(PosByte);
    invoke-static {v2}, Lcom/android/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 264
    :try_start_a
    invoke-static {v3}, Lcom/android/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 267
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v9=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    move-exception v4

    #v4=(Reference);
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    throw v4

    .line 261
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catchall_1
    #v2=(Reference);v3=(Reference);v4=(Conflicted);v9=(Uninit);
    move-exception v4

    :try_start_b
    #v4=(Reference);
    invoke-static {v2}, Lcom/android/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 264
    .end local v2           #is:Ljava/io/InputStream;
    :catchall_2
    #v2=(Conflicted);v4=(Conflicted);v9=(Conflicted);
    move-exception v4

    :try_start_c
    #v4=(Reference);
    invoke-static {v3}, Lcom/android/exchange/service/EasAttachmentLoader;->close(Ljava/io/Closeable;)V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method private load(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 8
    .parameter "attachment"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/exchange/service/EasAttachmentLoader;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static/range {v0 .. v6}, Lcom/android/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    .line 280
    invoke-direct {p0, p1}, Lcom/android/exchange/service/EasAttachmentLoader;->performServerRequest(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/android/exchange/EasResponse;

    move-result-object v7

    .line 281
    .local v7, resp:Lcom/android/exchange/EasResponse;
    #v7=(Reference);
    if-nez v7, :cond_0

    .line 282
    const/16 v0, 0x20

    .line 289
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .line 286
    :cond_0
    :try_start_0
    #v0=(Reference);v1=(LongLo);
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0xc8

    #v1=(PosShort);
    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 287
    :cond_1
    #v0=(Integer);
    const/16 v0, 0x11

    .line 291
    :goto_1
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    goto :goto_0

    .line 289
    :cond_2
    :try_start_1
    #v0=(Boolean);
    invoke-direct {p0, v7, p1}, Lcom/android/exchange/service/EasAttachmentLoader;->handleResponse(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    #v0=(Integer);
    goto :goto_1

    .line 291
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
.end method

.method public static loadAttachment(Landroid/content/Context;JLcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 12
    .parameter "context"
    .parameter "attachmentId"
    .parameter "callback"

    .prologue
    const/16 v5, 0x11

    #v5=(PosByte);
    const/4 v11, 0x1

    #v11=(One);
    const/4 v6, 0x0

    .line 86
    #v6=(Null);
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v8

    .line 87
    .local v8, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v8=(Reference);
    if-nez v8, :cond_0

    .line 88
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Could not load attachment %d"

    #v1=(Reference);
    new-array v2, v11, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    move-object v0, p3

    move-wide v3, p1

    #v3=(LongLo);v4=(LongHi);
    invoke-static/range {v0 .. v6}, Lcom/android/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    .line 113
    :goto_0
    #v5=(Integer);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 93
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(PosByte);v7=(Uninit);v9=(Uninit);v10=(Uninit);
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 94
    .local v7, account:Lcom/android/emailcommon/provider/Account;
    #v7=(Reference);
    if-nez v7, :cond_1

    .line 95
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Attachment %d has bad account key %d"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v6

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    #v3=(LongLo);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v1=(LongLo);v2=(LongHi);
    move-object v0, p3

    move-wide v3, p1

    #v3=(LongLo);
    invoke-static/range {v0 .. v6}, Lcom/android/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    goto :goto_0

    .line 101
    :cond_1
    #v0=(LongLo);v1=(LongHi);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    .line 102
    .local v10, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v10=(Reference);
    if-nez v10, :cond_2

    .line 103
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v1=(LongLo);v2=(LongHi);
    const/16 v5, 0x10

    move-object v0, p3

    #v0=(Reference);
    move-wide v3, p1

    #v3=(LongLo);v4=(LongHi);
    invoke-static/range {v0 .. v6}, Lcom/android/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    goto :goto_0

    .line 109
    :cond_2
    #v0=(LongLo);v1=(LongHi);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v9, Lcom/android/exchange/service/EasAttachmentLoader;

    #v9=(UninitRef);
    invoke-direct {v9, p0, v7, p3}, Lcom/android/exchange/service/EasAttachmentLoader;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 111
    .local v9, loader:Lcom/android/exchange/service/EasAttachmentLoader;
    #v9=(Reference);
    invoke-direct {v9, v8}, Lcom/android/exchange/service/EasAttachmentLoader;->load(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v5

    .line 112
    .local v5, status:I
    #v5=(Integer);
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v1=(LongLo);v2=(LongHi);
    move-object v0, p3

    #v0=(Reference);
    move-wide v3, p1

    #v3=(LongLo);v4=(LongHi);
    invoke-static/range {v0 .. v6}, Lcom/android/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    goto :goto_0
.end method

.method private performServerRequest(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/android/exchange/EasResponse;
    .locals 10
    .parameter "attachment"

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/service/EasAttachmentLoader;->getProtocolVersion()D

    move-result-wide v5

    #v5=(DoubleLo);v6=(DoubleHi);
    const-wide/high16 v7, 0x402c

    #v7=(LongLo);v8=(LongHi);
    cmpl-double v5, v5, v7

    #v5=(Byte);
    if-ltz v5, :cond_0

    .line 151
    new-instance v4, Lcom/android/exchange/adapter/Serializer;

    #v4=(UninitRef);
    invoke-direct {v4}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 152
    .local v4, s:Lcom/android/exchange/adapter/Serializer;
    #v4=(Reference);
    const/16 v5, 0x505

    #v5=(PosShort);
    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v6, 0x506

    #v6=(PosShort);
    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 153
    const/16 v5, 0x507

    #v5=(PosShort);
    const-string v6, "Mailbox"

    #v6=(Reference);
    invoke-virtual {v4, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 154
    const/16 v5, 0x451

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 155
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 156
    const-string v1, "ItemOperations"

    .line 157
    .local v1, cmd:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 170
    .end local v4           #s:Lcom/android/exchange/adapter/Serializer;
    .local v0, bytes:[B
    :goto_0
    #v0=(Reference);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/service/EasAttachmentLoader;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v5

    .line 173
    .end local v0           #bytes:[B
    .end local v1           #cmd:Ljava/lang/String;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object v5

    .line 162
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Byte);v6=(DoubleHi);v7=(LongLo);v8=(LongHi);v9=(Uninit);
    invoke-virtual {p0}, Lcom/android/exchange/service/EasAttachmentLoader;->getProtocolVersion()D

    move-result-wide v5

    #v5=(DoubleLo);
    const-wide/high16 v7, 0x4028

    cmpg-double v5, v5, v7

    #v5=(Byte);
    if-gez v5, :cond_1

    .line 163
    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/exchange/service/EasAttachmentLoader;->encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, location:Ljava/lang/String;
    :goto_2
    #v3=(Reference);v5=(Conflicted);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "GetAttachment&AttachmentName="

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .restart local v1       #cmd:Ljava/lang/String;
    #v1=(Reference);
    const/4 v0, 0x0

    .restart local v0       #bytes:[B
    #v0=(Null);
    goto :goto_0

    .line 165
    .end local v0           #bytes:[B
    .end local v1           #cmd:Ljava/lang/String;
    .end local v3           #location:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v5=(Byte);v6=(DoubleHi);
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #location:Ljava/lang/String;
    #v3=(Reference);
    goto :goto_2

    .line 171
    .end local v3           #location:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 172
    .local v2, e:Ljava/io/IOException;
    #v2=(Reference);
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "IOException while loading attachment from server: %s"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 173
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_1
.end method
