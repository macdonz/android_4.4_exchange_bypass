.class public abstract Lcom/android/email/mail/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private static findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    .locals 8
    .parameter "context"
    .parameter "resourceId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, sender:Lcom/android/email/mail/Sender;
    :try_start_0
    #v2=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 76
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    #v3=(Reference);
    invoke-virtual {p2, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 78
    .local v1, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, xmlEventType:I
    #v4=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    if-eq v4, v6, :cond_1

    .line 79
    const/4 v6, 0x2

    #v6=(PosByte);
    if-ne v4, v6, :cond_0

    const-string v6, "sender"

    #v6=(Reference);
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 81
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "scheme"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, xmlScheme:Ljava/lang/String;
    #v5=(Reference);
    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    #v6=(Reference);
    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 85
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "class"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, className:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {p0, v0, p2}, Lcom/android/email/mail/Sender;->instantiateSender(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 92
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v3           #xml:Landroid/content/res/XmlResourceParser;
    .end local v4           #xmlEventType:I
    .end local v5           #xmlScheme:Ljava/lang/String;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v6

    .line 95
    :cond_1
    :goto_1
    return-object v2

    .line 90
    :catch_1
    move-exception v6

    #v6=(Reference);
    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    .locals 6
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    const-class v3, Lcom/android/email/mail/Sender;

    #v3=(Reference);
    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    .local v0, appContext:Landroid/content/Context;
    #v0=(Reference);
    const v2, 0x7f060011

    #v2=(Integer);
    invoke-static {v0, v2, p1}, Lcom/android/email/mail/Sender;->findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v1

    .line 111
    .local v1, sender:Lcom/android/email/mail/Sender;
    #v1=(Reference);
    if-nez v1, :cond_0

    .line 112
    const v2, 0x7f060010

    invoke-static {v0, v2, p1}, Lcom/android/email/mail/Sender;->findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v1

    .line 114
    :cond_0
    if-nez v1, :cond_1

    .line 115
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    #v2=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Cannot find sender for account "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v0           #appContext:Landroid/content/Context;
    .end local v1           #sender:Lcom/android/email/mail/Sender;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v3

    throw v2

    .line 117
    .restart local v0       #appContext:Landroid/content/Context;
    .restart local v1       #sender:Lcom/android/email/mail/Sender;
    :cond_1
    #v0=(Reference);v1=(Reference);v2=(Integer);v4=(Uninit);v5=(Uninit);
    monitor-exit v3

    return-object v1
.end method

.method private static instantiateSender(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 47
    .line 49
    :try_start_0
    #v5=(Null);
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    #v0=(Reference);
    const-string v1, "newInstance"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Class;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-class v4, Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aput-object p2, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    instance-of v1, v0, Lcom/android/email/mail/Sender;

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 61
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    iget-object v2, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create incompatible object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 54
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 55
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "exception %s invoking method %s#newInstance(Account, Context) for %s"

    #v2=(Reference);
    const/4 v3, 0x3

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object p1, v3, v6

    iget-object v0, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "can not instantiate Sender for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 64
    :cond_0
    #v1=(Boolean);v3=(One);v4=(Reference);
    check-cast v0, Lcom/android/email/mail/Sender;

    return-object v0
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract sendMessage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
