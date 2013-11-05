.class public abstract Lcom/android/email/mail/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field static final sStoreClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/email/mail/Store;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sStores:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Lcom/android/email/mail/Store;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccount:Lcom/android/emailcommon/provider/Account;

.field protected mContext:Landroid/content/Context;

.field protected mPassword:Ljava/lang/String;

.field protected mTransport:Lcom/android/email/mail/transport/MailTransport;

.field protected mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/mail/Store;->sStores:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    #v0=(Null);
    const-class v2, Lcom/android/email/mail/Store;

    #v2=(Reference);
    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/email/mail/Store;->sStores:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    #v1=(Reference);
    const v3, 0x7f0a0257

    #v3=(Integer);
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const-class v4, Lcom/android/email/mail/store/Pop3Store;

    #v4=(Reference);
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    const v3, 0x7f0a0255

    #v3=(Integer);
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const-class v4, Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 91
    #v3=(Reference);
    if-nez v3, :cond_2

    .line 114
    :cond_1
    :goto_0
    #v0=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit v2

    return-object v0

    .line 92
    :cond_2
    :try_start_1
    #v0=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    sget-object v0, Lcom/android/email/mail/Store;->sStores:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Store;

    .line 93
    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 95
    #v4=(Reference);
    sget-object v0, Lcom/android/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    iget-object v1, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 96
    if-nez v0, :cond_3

    .line 97
    const-class v0, Lcom/android/email/mail/store/ServiceStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 101
    :goto_1
    :try_start_2
    const-string v0, "newInstance"

    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Class;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-class v7, Lcom/android/emailcommon/provider/Account;

    #v7=(Reference);
    aput-object v7, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 102
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x2

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object p0, v6, v7

    const/4 v7, 0x1

    #v7=(One);
    aput-object v4, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Store;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :try_start_3
    iget-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    const-wide/16 v6, -0x1

    #v6=(LongLo);v7=(LongHi);
    cmp-long v1, v4, v6

    #v1=(Byte);
    if-eqz v1, :cond_1

    .line 111
    sget-object v1, Lcom/android/email/mail/Store;->sStores:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v2

    throw v0

    .line 103
    :catch_0
    #v1=(Reference);v3=(Reference);v4=(Reference);
    move-exception v0

    .line 104
    :try_start_4
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v4, "exception %s invoking method %s#newInstance(Account, Context) for %s"

    const/4 v5, 0x3

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    invoke-static {v3, v0, v1}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 107
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v3, "Can\'t instantiate Store for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);
    move-object v1, v0

    goto :goto_1
.end method

.method protected static updateMailbox(Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V
    .locals 3
    .parameter "mailbox"
    .parameter "accountId"
    .parameter "mailboxPath"
    .parameter "delimiter"
    .parameter "selectable"
    .parameter "type"

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 179
    iput p4, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 180
    move-object v0, p3

    .line 181
    .local v0, displayPath:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p3, p4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 182
    .local v1, pathIndex:I
    #v1=(Integer);
    if-lez v1, :cond_0

    .line 183
    add-int/lit8 v2, v1, 0x1

    #v2=(Integer);
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_0
    #v2=(Conflicted);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 186
    if-eqz p5, :cond_1

    .line 187
    const/16 v2, 0x18

    #v2=(PosByte);
    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 189
    :cond_1
    #v2=(Conflicted);
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 192
    iput-object p3, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 198
    iput p6, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 200
    return-void
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"
    .parameter "emailAddress"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public abstract checkSettings()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public requireCopyMessageToSentFolder()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public updateFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method
