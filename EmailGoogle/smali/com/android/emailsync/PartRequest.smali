.class public Lcom/android/emailsync/PartRequest;
.super Lcom/android/emailsync/Request;
.source "PartRequest.java"


# instance fields
.field public final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 45
    #v0=(Null);
    instance-of v1, p1, Lcom/android/emailsync/PartRequest;

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 46
    .end local p1
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Byte);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .restart local p1
    :cond_1
    #v0=(Null);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    check-cast p1, Lcom/android/emailsync/PartRequest;

    .end local p1
    iget-object v1, p1, Lcom/android/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v1=(Reference);
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p0, Lcom/android/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-nez v1, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method
