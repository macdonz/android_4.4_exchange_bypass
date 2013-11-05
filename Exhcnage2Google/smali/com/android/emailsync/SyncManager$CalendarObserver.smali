.class Lcom/android/emailsync/SyncManager$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field final mAccountId:J

.field final mAccountName:Ljava/lang/String;

.field mCalendarId:J

.field mSyncEvents:J

.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .parameter
    .parameter "handler"
    .parameter "account"

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 602
    #v7=(Null);
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/android/emailsync/SyncManager;

    .line 603
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 604
    #p0=(Reference);
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/emailsync/SyncManager$CalendarObserver;->mAccountId:J

    .line 605
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    .line 607
    iget-object v0, p1, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    new-array v2, v4, [Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "_id"

    #v3=(Reference);
    aput-object v3, v2, v7

    const-string v3, "sync_events"

    aput-object v3, v2, v8

    const-string v3, "account_name=? AND account_type=?"

    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    iget-object v5, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    #v5=(Reference);
    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/android/emailsync/SyncManager;->getAccountManagerType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 612
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 615
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    .line 617
    const/4 v0, 0x1

    #v0=(One);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 623
    :cond_1
    return-void

    .line 620
    :catchall_0
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 628
    monitor-enter p0

    if-nez p1, :cond_0

    .line 629
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/emailsync/SyncManager$CalendarObserver$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/emailsync/SyncManager$CalendarObserver$1;-><init>(Lcom/android/emailsync/SyncManager$CalendarObserver;)V

    #v1=(Reference);
    const-string v2, "Calendar Observer"

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 628
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method
