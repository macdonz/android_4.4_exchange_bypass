.class Lcom/android/exchange/ExchangeService$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field mAccountId:J

.field mAccountName:Ljava/lang/String;

.field mCalendarId:J

.field mSyncEvents:J

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method static synthetic access$700(Lcom/android/exchange/ExchangeService$CalendarObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService$CalendarObserver;->onChangeInBackground()V

    return-void
.end method

.method private onChangeInBackground()V
    .locals 17

    .prologue
    .line 423
    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "sync_events"

    #v5=(Reference);
    aput-object v5, v3, v4

    const-string v4, "_id=?"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    #v15=(LongLo);v16=(LongHi);
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    #v15=(Reference);
    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 426
    .local v7, c:Landroid/database/Cursor;
    #v7=(Reference);
    if-nez v7, :cond_0

    .line 495
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    return-void

    .line 429
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    #v1=(Reference);v2=(Reference);v3=(Reference);v4=(Reference);v5=(Reference);v6=(Null);v7=(Reference);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Reference);v16=(LongHi);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 430
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 431
    .local v12, newSyncEvents:J
    #v12=(LongLo);v13=(LongHi);
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v12, v1

    #v1=(Byte);
    if-eqz v1, :cond_2

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "_sync_events changed for calendar in "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$400()Lcom/android/emailsync/SyncManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    #v2=(LongLo);v3=(LongHi);
    const/16 v4, 0x41

    #v4=(PosByte);
    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 436
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v11=(Reference);
    if-nez v11, :cond_1

    .line 490
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 492
    .end local v7           #c:Landroid/database/Cursor;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v12           #newSyncEvents:J
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v9

    .line 493
    .local v9, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    #v9=(Reference);
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "Observer failed; provider unavailable"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 437
    .end local v9           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v12       #newSyncEvents:J
    :cond_1
    :try_start_3
    #v2=(LongLo);v3=(LongHi);v4=(PosByte);v5=(Reference);v6=(Null);v7=(Reference);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Reference);v12=(LongLo);v13=(LongHi);v14=(Uninit);v15=(Reference);v16=(LongHi);
    new-instance v8, Landroid/content/ContentValues;

    #v8=(UninitRef);
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v8, cv:Landroid/content/ContentValues;
    #v8=(Reference);
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v12, v1

    #v1=(Byte);
    if-nez v1, :cond_3

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Deleting events and setting syncKey to 0 for "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 444
    iget-wide v1, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/android/emailsync/SyncManager;->stopManualSync(J)V

    .line 446
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$500()Lcom/android/emailsync/SyncManager;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1, v11}, Lcom/android/exchange/EasSyncService;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/EasSyncService;

    move-result-object v14

    .line 461
    .local v14, service:Lcom/android/exchange/EasSyncService;
    #v14=(Reference);
    const-string v1, "syncKey"

    const-string v2, "0"

    #v2=(Reference);
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "syncInterval"

    const/4 v2, -0x1

    #v2=(Byte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v1, v1, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    const-string v3, "com.google.android.exchange"

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/exchange/ExchangeService;->access$600(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 471
    .local v10, eventsAsSyncAdapter:Landroid/net/Uri;
    #v10=(Reference);
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v1, v1, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "calendar_id=?"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 486
    .end local v10           #eventsAsSyncAdapter:Landroid/net/Uri;
    .end local v14           #service:Lcom/android/exchange/EasSyncService;
    :goto_1
    #v6=(Conflicted);v10=(Conflicted);v14=(Conflicted);
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 490
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v12           #newSyncEvents:J
    :cond_2
    :try_start_4
    #v1=(Conflicted);v2=(Conflicted);v4=(Reference);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 477
    .restart local v8       #cv:Landroid/content/ContentValues;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v12       #newSyncEvents:J
    :cond_3
    :try_start_5
    #v1=(Byte);v2=(LongHi);v3=(LongHi);v4=(PosByte);v6=(Null);v8=(Reference);v10=(Uninit);v11=(Reference);v12=(LongLo);v13=(LongHi);v14=(Uninit);
    const-string v1, "syncInterval"

    #v1=(Reference);
    const/4 v2, -0x2

    #v2=(Byte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v1, v1, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    const-string v1, "calendar sync changed"

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 490
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v12           #newSyncEvents:J
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    move-exception v1

    :try_start_6
    #v1=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 501
    monitor-enter p0

    if-nez p1, :cond_0

    .line 502
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/exchange/ExchangeService$CalendarObserver$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$CalendarObserver$1;-><init>(Lcom/android/exchange/ExchangeService$CalendarObserver;)V

    #v1=(Reference);
    const-string v2, "Calendar Observer"

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method
