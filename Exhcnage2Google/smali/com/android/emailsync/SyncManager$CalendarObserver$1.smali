.class Lcom/android/emailsync/SyncManager$CalendarObserver$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailsync/SyncManager$CalendarObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;


# direct methods
.method constructor <init>(Lcom/android/emailsync/SyncManager$CalendarObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 633
    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/android/emailsync/SyncManager;

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

    iget-object v15, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    #v15=(Reference);
    iget-wide v15, v15, Lcom/android/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

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

    .line 636
    .local v7, c:Landroid/database/Cursor;
    #v7=(Reference);
    if-nez v7, :cond_0

    .line 697
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    return-void

    .line 639
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    #v1=(Reference);v2=(Reference);v3=(Reference);v4=(Reference);v5=(Reference);v6=(Null);v7=(Reference);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Reference);v16=(LongHi);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 640
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 641
    .local v12, newSyncEvents:J
    #v12=(LongLo);v13=(LongHi);
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    #v1=(Reference);
    iget-wide v1, v1, Lcom/android/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v12, v1

    #v1=(Byte);
    if-eqz v1, :cond_2

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "_sync_events changed for calendar in "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-object v2, v2, Lcom/android/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 643
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-wide v2, v2, Lcom/android/emailsync/SyncManager$CalendarObserver;->mAccountId:J

    #v2=(LongLo);v3=(LongHi);
    const/16 v4, 0x41

    #v4=(PosByte);
    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 646
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v11=(Reference);
    if-nez v11, :cond_1

    .line 692
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 694
    .end local v7           #c:Landroid/database/Cursor;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v12           #newSyncEvents:J
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v9

    .line 695
    .local v9, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    #v9=(Reference);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$200()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Observer failed; provider unavailable"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 647
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

    .line 648
    .local v8, cv:Landroid/content/ContentValues;
    #v8=(Reference);
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v12, v1

    #v1=(Byte);
    if-nez v1, :cond_3

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Deleting events and setting syncKey to 0 for "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-object v2, v2, Lcom/android/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 654
    iget-wide v1, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/android/emailsync/SyncManager;->stopManualSync(J)V

    .line 656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/android/emailsync/SyncManager;

    sget-object v2, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v2=(Reference);
    invoke-virtual {v1, v2, v11}, Lcom/android/emailsync/SyncManager;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailsync/AbstractSyncService;

    move-result-object v14

    .line 658
    .local v14, service:Lcom/android/emailsync/AbstractSyncService;
    #v14=(Reference);
    invoke-virtual {v14}, Lcom/android/emailsync/AbstractSyncService;->resetCalendarSyncKey()V

    .line 660
    const-string v1, "syncKey"

    const-string v2, "0"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v1, "syncInterval"

    const/4 v2, -0x1

    #v2=(Byte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/android/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/android/emailsync/SyncManager;

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

    .line 668
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-object v2, v2, Lcom/android/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v3}, Lcom/android/emailsync/SyncManager;->getAccountManagerType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/emailsync/SyncManager;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 673
    .local v10, eventsAsSyncAdapter:Landroid/net/Uri;
    #v10=(Reference);
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/android/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v1, v1, Lcom/android/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "calendar_id=?"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-wide v5, v5, Lcom/android/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 688
    .end local v10           #eventsAsSyncAdapter:Landroid/net/Uri;
    .end local v14           #service:Lcom/android/emailsync/AbstractSyncService;
    :goto_1
    #v6=(Conflicted);v10=(Conflicted);v14=(Conflicted);
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iput-wide v12, v1, Lcom/android/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 692
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

    .line 679
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

    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/android/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/android/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/android/emailsync/SyncManager;

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

    .line 684
    const-string v1, "calendar sync changed"

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 692
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
