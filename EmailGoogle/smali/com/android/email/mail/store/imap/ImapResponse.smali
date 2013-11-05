.class public Lcom/android/email/mail/store/imap/ImapResponse;
.super Lcom/android/email/mail/store/imap/ImapList;
.source "ImapResponse.java"


# instance fields
.field private final mIsContinuationRequest:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "tag"
    .parameter "isContinuationRequest"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapList;-><init>()V

    .line 28
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    .line 30
    return-void
.end method

.method static isStatusResponse(Ljava/lang/String;)Z
    .locals 1
    .parameter "symbol"

    .prologue
    .line 33
    const-string v0, "OK"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "NO"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "BAD"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "PREAUTH"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "BYE"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .locals 4
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 134
    #v1=(Null);
    invoke-super {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Boolean);v3=(Uninit);
    move-object v0, p1

    .line 137
    #v0=(Reference);
    check-cast v0, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 138
    .local v0, thatResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    #v2=(Reference);
    if-nez v2, :cond_3

    .line 139
    iget-object v2, v0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 147
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    iget-boolean v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    #v2=(Boolean);
    iget-boolean v3, v0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    #v3=(Boolean);
    if-ne v2, v3, :cond_0

    .line 150
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 143
    :cond_3
    #v1=(Null);v2=(Reference);v3=(Uninit);
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "ALERT"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 110
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 97
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 117
    #v0=(One);
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 118
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 120
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public isBad()Z
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    const-string v1, "BAD"

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isContinuationRequest()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    #v0=(Boolean);
    return v0
.end method

.method public final isDataResponse(ILjava/lang/String;)Z
    .locals 1
    .parameter "index"
    .parameter "responseType"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isNo()Z
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    #v0=(Null);
    const-string v1, "NO"

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    #v0=(Null);
    const-string v1, "OK"

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isStatusResponse()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 126
    .local v0, tag:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 127
    const-string v0, "+"

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "#"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
