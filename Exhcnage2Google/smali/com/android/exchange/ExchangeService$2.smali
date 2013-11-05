.class Lcom/android/exchange/ExchangeService$2;
.super Lcom/android/emailsync/SyncManager$AccountObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->getAccountObserver(Landroid/os/Handler;)Lcom/android/emailsync/SyncManager$AccountObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0, p1, p2}, Lcom/android/emailsync/SyncManager$AccountObserver;-><init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public newAccount(J)V
    .locals 6
    .parameter "acctId"

    .prologue
    const/4 v5, 0x0

    .line 660
    #v5=(Null);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 661
    .local v0, acct:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 663
    const-string v2, "Exchange"

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Cannot initialize bad acctId: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 675
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);
    return-void

    .line 666
    :cond_0
    #v1=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v1, Lcom/android/emailcommon/provider/Mailbox;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 667
    .local v1, main:Lcom/android/emailcommon/provider/Mailbox;
    #v1=(Reference);
    const-string v2, "__eas"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "__eas"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 669
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 670
    const/16 v2, 0x44

    #v2=(PosByte);
    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 671
    const/4 v2, -0x2

    #v2=(Byte);
    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 672
    iput-boolean v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 673
    invoke-static {}, Lcom/android/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Initializing account: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
