.class final Lcom/android/emailsync/SyncManager$2;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailsync/SyncManager;->alert(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:J

.field final synthetic val$service:Lcom/android/emailsync/AbstractSyncService;

.field final synthetic val$ssm:Lcom/android/emailsync/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/emailsync/SyncManager;JLcom/android/emailsync/AbstractSyncService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$2;->val$ssm:Lcom/android/emailsync/SyncManager;

    iput-wide p2, p0, Lcom/android/emailsync/SyncManager$2;->val$id:J

    iput-object p4, p0, Lcom/android/emailsync/SyncManager$2;->val$service:Lcom/android/emailsync/AbstractSyncService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1144
    #v7=(Null);
    iget-object v3, p0, Lcom/android/emailsync/SyncManager$2;->val$ssm:Lcom/android/emailsync/SyncManager;

    #v3=(Reference);
    iget-wide v4, p0, Lcom/android/emailsync/SyncManager$2;->val$id:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1145
    .local v1, m:Lcom/android/emailcommon/provider/Mailbox;
    #v1=(Reference);
    if-eqz v1, :cond_2

    .line 1148
    sget-boolean v3, Lcom/android/emailsync/SyncManager;->sUserLog:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1149
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$200()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Alert for mailbox "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/emailsync/SyncManager$2;->val$id:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1152
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v3=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1153
    :cond_1
    const/4 v3, 0x1

    #v3=(One);
    new-array v0, v3, [Ljava/lang/String;

    #v0=(Reference);
    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v0, v7

    .line 1154
    .local v0, args:[Ljava/lang/String;
    sget-object v3, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    iget-object v2, v3, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1155
    .local v2, resolver:Landroid/content/ContentResolver;
    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    #v4=(Reference);
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1157
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1177
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1161
    :cond_3
    #v0=(Uninit);v2=(Uninit);v3=(Integer);v4=(PosByte);
    iget-object v3, p0, Lcom/android/emailsync/SyncManager$2;->val$service:Lcom/android/emailsync/AbstractSyncService;

    #v3=(Reference);
    sget-object v4, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v4=(Reference);
    iget-wide v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 1162
    iget-object v3, p0, Lcom/android/emailsync/SyncManager$2;->val$service:Lcom/android/emailsync/AbstractSyncService;

    iput-object v1, v3, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1164
    iget-object v3, p0, Lcom/android/emailsync/SyncManager$2;->val$service:Lcom/android/emailsync/AbstractSyncService;

    invoke-virtual {v3}, Lcom/android/emailsync/AbstractSyncService;->alarm()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 1168
    const-string v3, "Alarm failed; releasing mailbox"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1170
    :try_start_0
    iget-object v3, p0, Lcom/android/emailsync/SyncManager$2;->val$ssm:Lcom/android/emailsync/SyncManager;

    iget-wide v5, p0, Lcom/android/emailsync/SyncManager$2;->val$id:J

    invoke-virtual {v3, v5, v6}, Lcom/android/emailsync/SyncManager;->releaseMailbox(J)V

    .line 1171
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$400()V

    goto :goto_0

    .line 1171
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
