.class public Lcom/android/exchange/MessageMoveRequest;
.super Lcom/android/emailsync/Request;
.source "MessageMoveRequest.java"


# instance fields
.field public final mMailboxId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/emailsync/Request;-><init>(J)V

    .line 29
    #p0=(Reference);
    iput-wide p3, p0, Lcom/android/exchange/MessageMoveRequest;->mMailboxId:J

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 36
    #v0=(Null);
    instance-of v1, p1, Lcom/android/exchange/MessageMoveRequest;

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 37
    .end local p1
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Byte);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .restart local p1
    :cond_1
    #v0=(Null);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    check-cast p1, Lcom/android/exchange/MessageMoveRequest;

    .end local p1
    iget-wide v1, p1, Lcom/android/emailsync/Request;->mMessageId:J

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lcom/android/emailsync/Request;->mMessageId:J

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
    .line 42
    iget-wide v0, p0, Lcom/android/emailsync/Request;->mMessageId:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method
