.class public Lcom/android/email/mail/store/imap/ImapMemoryLiteral;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapMemoryLiteral.java"


# instance fields
.field private mData:[B


# direct methods
.method constructor <init>(Lcom/android/email/FixedLengthInputStream;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 37
    #p0=(Reference);
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v2

    #v2=(Integer);
    new-array v2, v2, [B

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, pos:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    #v2=(Integer);
    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    #v3=(Reference);
    array-length v3, v3

    #v3=(Integer);
    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v1

    .line 41
    .local v1, read:I
    #v1=(Integer);
    if-gez v1, :cond_2

    .line 46
    .end local v1           #read:I
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    #v2=(Reference);
    array-length v2, v2

    #v2=(Integer);
    if-eq v0, v2, :cond_1

    .line 47
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, ""

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 44
    .restart local v1       #read:I
    :cond_2
    #v1=(Integer);v2=(Reference);v3=(Integer);v4=(Uninit);
    add-int/2addr v0, v1

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 54
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapString;->destroy()V

    .line 55
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #v0=(Reference);
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "{%d byte literal(memory)}"

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    #v3=(Reference);
    array-length v3, v3

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
