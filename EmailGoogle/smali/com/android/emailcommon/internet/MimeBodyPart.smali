.class public Lcom/android/emailcommon/internet/MimeBodyPart;
.super Lcom/android/emailcommon/mail/BodyPart;
.source "MimeBodyPart.java"


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBody:Lcom/android/emailcommon/mail/Body;

.field protected mHeader:Lcom/android/emailcommon/internet/MimeHeader;

.field protected mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "^<?([^>]+)>?$"

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeBodyPart;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;)V

    .line 46
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/mail/Body;)V
    .locals 1
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 50
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V
    .locals 1
    .parameter "body"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/emailcommon/mail/BodyPart;-><init>()V

    .line 34
    #p0=(Reference);
    new-instance v0, Lcom/android/emailcommon/internet/MimeHeader;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 57
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public getBody()Lcom/android/emailcommon/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mBody:Lcom/android/emailcommon/mail/Body;

    #v0=(Reference);
    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "Content-ID"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, contentId:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 135
    :goto_0
    #v2=(Conflicted);
    return-object v1

    :cond_0
    #v2=(Uninit);
    sget-object v1, Lcom/android/emailcommon/internet/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v1, "Content-Type"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, contentType:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 112
    const-string v0, "text/plain"

    .line 114
    .end local v0           #contentType:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v1, "Content-Disposition"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, contentDisposition:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    .end local v0           #contentDisposition:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mSize:I

    #v0=(Integer);
    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public setBody(Lcom/android/emailcommon/mail/Body;)V
    .locals 8
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 90
    #v6=(Null);
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mBody:Lcom/android/emailcommon/mail/Body;

    .line 91
    instance-of v3, p1, Lcom/android/emailcommon/mail/Multipart;

    #v3=(Boolean);
    if-eqz v3, :cond_1

    move-object v1, p1

    .line 92
    #v1=(Reference);
    check-cast v1, Lcom/android/emailcommon/mail/Multipart;

    .line 94
    .local v1, multipart:Lcom/android/emailcommon/mail/Multipart;
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/mail/Multipart;->setParent(Lcom/android/emailcommon/mail/Part;)V

    .line 95
    const-string v3, "Content-Type"

    #v3=(Reference);
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v1           #multipart:Lcom/android/emailcommon/mail/Multipart;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 97
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    instance-of v3, p1, Lcom/android/emailcommon/internet/TextBody;

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "%s;\n charset=utf-8"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, contentType:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, name:Ljava/lang/String;
    #v2=(Reference);
    if-eqz v2, :cond_2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n name=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_2
    const-string v3, "Content-Type"

    invoke-virtual {p0, v3, v0}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "base64"

    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mSize:I

    .line 151
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/io/BufferedWriter;

    #v0=(UninitRef);
    new-instance v1, Ljava/io/OutputStreamWriter;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #v1=(Reference);
    const/16 v2, 0x400

    #v2=(PosShort);
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 201
    .local v0, writer:Ljava/io/BufferedWriter;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/android/emailcommon/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 202
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 204
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mBody:Lcom/android/emailcommon/mail/Body;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mBody:Lcom/android/emailcommon/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/emailcommon/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 207
    :cond_0
    return-void
.end method
