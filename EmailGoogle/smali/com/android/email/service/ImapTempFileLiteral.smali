.class public Lcom/android/email/service/ImapTempFileLiteral;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapTempFileLiteral.java"


# instance fields
.field final mFile:Ljava/io/File;

.field private final mSize:I


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/service/ImapTempFileLiteral;->isDestroyed()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/service/ImapTempFileLiteral;->mFile:Ljava/io/File;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/email/service/ImapTempFileLiteral;->mFile:Ljava/io/File;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapString;->destroy()V

    .line 116
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, re:Ljava/lang/RuntimeException;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Failed to remove temp file: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/service/ImapTempFileLiteral;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 77
    #v4=(Null);
    invoke-virtual {p0}, Lcom/android/email/service/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 79
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/email/service/ImapTempFileLiteral;->mFile:Ljava/io/File;

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);
    return-object v1

    .line 80
    :catch_0
    #v0=(Uninit);v1=(Conflicted);v2=(Conflicted);v3=(Uninit);
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/FileNotFoundException;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "ImapTempFileLiteral: Temp file not found"

    #v2=(Reference);
    new-array v3, v4, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #v1=(UninitRef);
    new-array v2, v4, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #v1=(Reference);
    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/email/service/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/service/ImapTempFileLiteral;->getAsStream()Ljava/io/InputStream;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 95
    .local v0, bytes:[B
    #v0=(Reference);
    array-length v2, v0

    #v2=(Integer);
    const/high16 v3, 0x20

    #v3=(Integer);
    if-le v2, v3, :cond_0

    .line 96
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #v2=(Reference);
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0           #bytes:[B
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    .line 100
    .local v1, e:Ljava/io/IOException;
    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "ImapTempFileLiteral: Error while reading temp file"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    const-string v2, ""

    .end local v1           #e:Ljava/io/IOException;
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v2

    .line 98
    .restart local v0       #bytes:[B
    :cond_0
    :try_start_1
    #v0=(Reference);v1=(Uninit);v2=(Integer);v3=(Integer);v4=(Uninit);v5=(Uninit);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    #v2=(Reference);
    goto :goto_0
.end method

.method public tempFileExistsForTest()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/email/service/ImapTempFileLiteral;->mFile:Ljava/io/File;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    const-string v0, "{%d byte literal(file)}"

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget v3, p0, Lcom/android/email/service/ImapTempFileLiteral;->mSize:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
