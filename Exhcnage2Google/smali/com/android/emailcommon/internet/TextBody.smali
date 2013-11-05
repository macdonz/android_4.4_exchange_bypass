.class public Lcom/android/emailcommon/internet/TextBody;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;


# instance fields
.field mBody:Ljava/lang/String;


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/internet/TextBody;->mBody:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "UTF-8"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    .local v0, b:[B
    #v0=(Reference);
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0           #b:[B
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);
    return-object v2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, usee:Ljava/io/UnsupportedEncodingException;
    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method
