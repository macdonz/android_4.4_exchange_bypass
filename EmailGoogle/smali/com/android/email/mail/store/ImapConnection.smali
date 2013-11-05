.class Lcom/android/email/mail/store/ImapConnection;
.super Ljava/lang/Object;
.source "ImapConnection.java"


# instance fields
.field private mCapabilities:I

.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mIdPhrase:Ljava/lang/String;

.field private mImapStore:Lcom/android/email/mail/store/ImapStore;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field mTransport:Lcom/android/email/mail/transport/MailTransport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "store"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    #v0=(UninitRef);
    const/16 v1, 0x40

    #v1=(PosByte);
    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapConnection;->setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private createParser()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 214
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 215
    return-void
.end method

.method private doGetNamespace(Z)V
    .locals 12
    .parameter "hasNamespaceCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    #v11=(One);
    const/4 v10, 0x0

    .line 410
    #v10=(Null);
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_2

    .line 411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 414
    .local v6, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    #v6=(Reference);
    const-string v7, "NAMESPACE"

    #v7=(Reference);
    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 424
    :cond_0
    :goto_0
    #v1=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    #v0=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 425
    .local v5, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v7, "NAMESPACE"

    #v7=(Reference);
    invoke-virtual {v5, v10, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    .line 426
    invoke-virtual {v5, v11}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 427
    .local v3, namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    #v3=(Reference);
    invoke-virtual {v3, v10}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 428
    .local v2, namespace:Lcom/android/email/mail/store/imap/ImapList;
    #v2=(Reference);
    invoke-virtual {v2, v10}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, namespaceString:Ljava/lang/String;
    #v4=(Reference);
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 430
    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v4, v8}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->setPathPrefix(Ljava/lang/String;)V

    .line 431
    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2, v11}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #namespace:Lcom/android/email/mail/store/imap/ImapList;
    .end local v3           #namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v4           #namespaceString:Ljava/lang/String;
    .end local v5           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Conflicted);v8=(Uninit);v9=(Uninit);
    move-exception v1

    .line 417
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    #v1=(Reference);
    sget-boolean v7, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 418
    sget-object v7, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    new-array v9, v10, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 436
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v6           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 420
    .restart local v6       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v8=(Uninit);v9=(Uninit);
    move-exception v7

    #v7=(Reference);
    goto :goto_0
.end method

.method private doGetPathSeparator()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 465
    #v7=(Null);
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 469
    .local v3, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    #v3=(Reference);
    const-string v4, "LIST \"\" \"\""

    #v4=(Reference);
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 479
    :cond_0
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    #v0=(Reference);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 480
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v4, "LIST"

    #v4=(Reference);
    invoke-virtual {v2, v7, v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 481
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    #v4=(Reference);
    const/4 v5, 0x2

    #v5=(PosByte);
    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Conflicted);v5=(Uninit);v6=(Uninit);
    move-exception v1

    .line 472
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    #v1=(Reference);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 473
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    new-array v6, v7, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 485
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v3           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 475
    .restart local v3       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Reference);v4=(Conflicted);v5=(Uninit);v6=(Uninit);
    move-exception v4

    #v4=(Reference);
    goto :goto_0
.end method

.method private doLogin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v2, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 456
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    #v0=(Reference);
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 449
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 451
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    #v2=(UninitRef);
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v2=(Reference);
    throw v2

    .line 453
    .end local v0           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v1

    .line 454
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    #v1=(Reference);
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    #v2=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v2, v3, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v2=(Reference);
    throw v2
.end method

.method private doSendId(ZLjava/lang/String;)V
    .locals 6
    .parameter "hasIdCapability"
    .parameter "capabilities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 369
    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 372
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, host:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".secureserver.net"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4, v0, p2}, Lcom/android/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, mUserAgent:Ljava/lang/String;
    #v2=(Reference);
    if-eqz v2, :cond_2

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "ID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 392
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    #v1=(Reference);
    sget-boolean v3, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 393
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 395
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    #v1=(Uninit);v5=(Uninit);
    move-exception v3

    goto :goto_0
.end method

.method private doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 3
    .parameter "hasStartTlsCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/mail/transport/MailTransport;->canTryTlsSecurity()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 495
    if-eqz p1, :cond_0

    .line 497
    const-string v0, "STARTTLS"

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 499
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/MailTransport;->reopenTls()V

    .line 500
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->createParser()V

    .line 502
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    .line 504
    :cond_0
    #v0=(Boolean);
    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 505
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "TLS not supported but required"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 507
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    #v0=(UninitRef);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    #v0=(Reference);
    throw v0

    .line 510
    :cond_2
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private isCapable(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    #v0=(Integer);
    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    #v0=(Null);
    const-string v3, "CAPABILITY"

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 349
    .local v2, r:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "CAPABILITY"

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 350
    move-object v0, v2

    .line 354
    .end local v2           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    #v0=(Reference);v2=(Conflicted);v4=(Conflicted);
    if-nez v0, :cond_2

    .line 355
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    #v3=(UninitRef);
    const-string v4, "Invalid CAPABILITY response received"

    #v4=(Reference);
    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 357
    :cond_2
    #v3=(Boolean);v4=(Conflicted);
    return-object v0
.end method

.method private setCapabilities(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 191
    const-string v0, "ID"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    #v0=(Integer);
    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 194
    :cond_0
    const-string v0, "NAMESPACE"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 195
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    #v0=(Integer);
    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 197
    :cond_1
    const-string v0, "UIDPLUS"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 198
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    #v0=(Integer);
    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 200
    :cond_2
    const-string v0, "STARTTLS"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 201
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    #v0=(Integer);
    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 203
    :cond_3
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    #v1=(Null);
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/MailTransport;->close()V

    .line 171
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 174
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 175
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    .line 176
    return-void
.end method

.method destroyResponses()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    .line 221
    :cond_0
    return-void
.end method

.method executeComplexCommand(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 339
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapConnection;->sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method getCommandResponses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_0
    #v1=(Conflicted);v2=(Reference);v4=(Conflicted);
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 300
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    #v1=(Reference);
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 302
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, toString:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, alert:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 306
    new-instance v4, Lcom/android/email/mail/store/ImapStore$ImapException;

    #v4=(UninitRef);
    invoke-direct {v4, v3, v0}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v4=(Reference);
    throw v4

    .line 308
    .end local v0           #alert:Ljava/lang/String;
    .end local v3           #toString:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v3=(Uninit);v4=(Boolean);
    return-object v2
.end method

.method isTransportOpenForTest()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method logLastDiscourse()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 516
    return-void
.end method

.method open()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v6=(Reference);
    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    invoke-virtual {v6}, Lcom/android/email/mail/transport/MailTransport;->isOpen()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 162
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 104
    :cond_0
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v5=(Uninit);
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v6=(Reference);
    if-nez v6, :cond_1

    .line 105
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v6}, Lcom/android/email/mail/store/ImapStore;->cloneTransport()Lcom/android/email/mail/transport/MailTransport;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    .line 108
    :cond_1
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    invoke-virtual {v6}, Lcom/android/email/mail/transport/MailTransport;->open()V

    .line 110
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->createParser()V

    .line 113
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    .line 116
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 118
    .local v0, capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    #v0=(Reference);
    const-string v6, "STARTTLS"

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v3

    .line 122
    .local v3, hasStartTlsCapability:Z
    #v3=(Boolean);
    invoke-direct {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v5

    .line 123
    .local v5, newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    #v5=(Reference);
    if-eqz v5, :cond_2

    .line 124
    move-object v0, v5

    .line 130
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapConnection;->setCapabilities(Lcom/android/email/mail/store/imap/ImapResponse;)V

    .line 131
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, capabilityString:Ljava/lang/String;
    #v1=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v6

    #v6=(Boolean);
    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/ImapConnection;->doSendId(ZLjava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->doLogin()V

    .line 140
    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v6

    #v6=(Boolean);
    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->doGetNamespace(Z)V

    .line 143
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->doGetPathSeparator()V

    .line 145
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/email/mail/store/ImapStore;->ensurePrefixIsValid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    goto :goto_0

    .line 146
    .end local v0           #capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v1           #capabilityString:Ljava/lang/String;
    .end local v3           #hasStartTlsCapability:Z
    .end local v5           #newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v2

    .line 147
    .local v2, e:Ljavax/net/ssl/SSLException;
    :try_start_1
    #v2=(Reference);
    sget-boolean v6, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 148
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    :cond_3
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    new-instance v6, Lcom/android/emailcommon/mail/CertificateValidationException;

    #v6=(UninitRef);
    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-direct {v6, v7, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v6=(Reference);
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    :catchall_0
    #v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v6

    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    throw v6

    .line 151
    :catch_1
    #v2=(Uninit);v4=(Uninit);v6=(Conflicted);v7=(Uninit);v8=(Uninit);
    move-exception v4

    .line 155
    .local v4, ioe:Ljava/io/IOException;
    :try_start_2
    #v4=(Reference);
    sget-boolean v6, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v6=(Boolean);
    if-eqz v6, :cond_4

    .line 156
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    :cond_4
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 242
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, tag:Ljava/lang/String;
    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, commandToSend:Ljava/lang/String;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    if-eqz p2, :cond_1

    const-string v2, "[IMAP command redacted]"

    :goto_0
    invoke-virtual {v3, v0, v2}, Lcom/android/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_0

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 246
    return-object v1

    .line 244
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 261
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, tag:Ljava/lang/String;
    #v4=(Reference);
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 263
    .local v2, len:I
    #v2=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-ge v1, v2, :cond_3

    .line 264
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, commandToSend:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    #v5=(Conflicted);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/transport/MailTransport;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v0, v6}, Lcom/android/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_1

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_2
    #v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v3

    .line 272
    .local v3, response:Lcom/android/email/mail/store/imap/ImapResponse;
    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 273
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    #v5=(UninitRef);
    const-string v6, "Expected continuation request"

    #v6=(Reference);
    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    #v5=(Reference);
    throw v5

    .line 280
    .end local v0           #commandToSend:Ljava/lang/String;
    .end local v3           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v4
.end method

.method setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "store"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 87
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 88
    iput-object p2, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "LOGIN "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/android/email/mail/store/imap/ImapUtility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    .line 95
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iput-object p1, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    .line 96
    return-void
.end method
