.class Lcom/android/email/provider/EmailProvider$5;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/provider/EmailProvider;->getDelayedSyncHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 5498
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$5;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    .line 5501
    #v9=(One);
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider$5;->this$0:Lcom/android/email/provider/EmailProvider;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/email/provider/EmailProvider;->access$700(Lcom/android/email/provider/EmailProvider;)Ljava/util/Set;

    move-result-object v4

    #v4=(Reference);
    monitor-enter v4

    .line 5502
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #v2=(Reference);
    check-cast v2, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;

    .line 5505
    .local v2, request:Lcom/android/email/provider/EmailProvider$SyncRequestMessage;
    invoke-static {v2}, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->access$800(Lcom/android/email/provider/EmailProvider$SyncRequestMessage;)Landroid/accounts/Account;

    move-result-object v0

    .line 5506
    .local v0, account:Landroid/accounts/Account;
    #v0=(Reference);
    invoke-static {v2}, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->access$900(Lcom/android/email/provider/EmailProvider$SyncRequestMessage;)J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v1

    .line 5507
    .local v1, extras:Landroid/os/Bundle;
    #v1=(Reference);
    invoke-static {v2}, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->access$1000(Lcom/android/email/provider/EmailProvider$SyncRequestMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5508
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v5, "requestSync getDelayedSyncHandler %s, %s"

    #v5=(Reference);
    const/4 v6, 0x2

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v6, v7

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5510
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider$5;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-static {v3}, Lcom/android/email/provider/EmailProvider;->access$700(Lcom/android/email/provider/EmailProvider;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5511
    monitor-exit v4

    return v9

    .line 5512
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #request:Lcom/android/email/provider/EmailProvider$SyncRequestMessage;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
