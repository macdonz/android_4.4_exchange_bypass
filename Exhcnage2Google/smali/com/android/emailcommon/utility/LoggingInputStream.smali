.class public Lcom/android/emailcommon/utility/LoggingInputStream;
.super Ljava/io/FilterInputStream;
.source "LoggingInputStream.java"


# instance fields
.field private mDumpEmptyLines:Z

.field private mSb:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 38
    const-string v0, "RAW"

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, p1, v0, v1}, Lcom/android/emailcommon/utility/LoggingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 39
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 3
    .parameter "in"
    .parameter "tag"
    .parameter "dumpEmptyLines"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    #p0=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mDumpEmptyLines:Z

    .line 45
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->initBuffer()V

    .line 46
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dump start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 47
    return-void
.end method

.method private flushLog()V
    .locals 3

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mDumpEmptyLines:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    if-le v0, v1, :cond_1

    .line 98
    :cond_0
    #v1=(Conflicted);
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->initBuffer()V

    .line 101
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private initBuffer()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mTag:Ljava/lang/String;

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method private logRaw(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 83
    const/16 v0, 0xd

    #v0=(PosByte);
    if-ne p1, v0, :cond_0

    .line 94
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 85
    :cond_0
    #v0=(PosByte);v1=(Uninit);v2=(Uninit);
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->flushLog()V

    goto :goto_0

    .line 87
    :cond_1
    const/16 v0, 0x20

    if-gt v0, p1, :cond_2

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    #v0=(Reference);
    int-to-char v1, p1

    #v1=(Char);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_2
    #v0=(PosByte);v1=(Uninit);
    iget-object v0, p0, Lcom/android/emailcommon/utility/LoggingInputStream;->mSb:Ljava/lang/StringBuilder;

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "\\x"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->byteToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 106
    invoke-direct {p0}, Lcom/android/emailcommon/utility/LoggingInputStream;->flushLog()V

    .line 107
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 59
    .local v0, oneByte:I
    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/LoggingInputStream;->logRaw(I)V

    .line 60
    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 69
    .local v0, bytesRead:I
    #v0=(Integer);
    move v1, v0

    .line 70
    .local v1, copyBytes:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    if-lez v1, :cond_0

    .line 71
    aget-byte v2, p1, p2

    #v2=(Byte);
    and-int/lit16 v2, v2, 0xff

    #v2=(Integer);
    invoke-direct {p0, v2}, Lcom/android/emailcommon/utility/LoggingInputStream;->logRaw(I)V

    .line 72
    add-int/lit8 v1, v1, -0x1

    .line 73
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    #v2=(Conflicted);
    return v0
.end method
