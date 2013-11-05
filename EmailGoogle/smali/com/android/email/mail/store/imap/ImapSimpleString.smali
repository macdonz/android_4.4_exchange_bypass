.class public Lcom/android/email/mail/store/imap/ImapSimpleString;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapSimpleString.java"


# instance fields
.field private mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 31
    #p0=(Reference);
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    .line 32
    return-void

    .line 31
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    .line 37
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapString;->destroy()V

    .line 38
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #v0=(Reference);
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "\""

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
