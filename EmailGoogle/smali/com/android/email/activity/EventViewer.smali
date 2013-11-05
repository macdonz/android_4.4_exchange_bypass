.class public Lcom/android/email/activity/EventViewer;
.super Landroid/app/Activity;
.source "EventViewer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/EventViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 37
    .local v19, uri:Landroid/net/Uri;
    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 38
    .local v13, messageId:J
    #v13=(LongLo);v14=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    .line 39
    .local v15, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v15=(Reference);
    if-nez v15, :cond_0

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/EventViewer;->finish()V

    .line 75
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return-void

    .line 42
    :cond_0
    #v1=(Uninit);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);
    new-instance v11, Lcom/android/emailcommon/mail/PackedString;

    #v11=(UninitRef);
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v11, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 43
    .local v11, info:Lcom/android/emailcommon/mail/PackedString;
    #v11=(Reference);
    const-string v2, "UID"

    invoke-virtual {v11, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 44
    .local v18, uid:Ljava/lang/String;
    #v18=(Reference);
    const-wide/16 v9, -0x1

    .line 45
    .local v9, eventId:J
    #v9=(LongLo);v10=(LongHi);
    if-eqz v18, :cond_2

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/EventViewer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "_id"

    #v6=(Reference);
    aput-object v6, v4, v5

    const-string v5, "sync_data2=?"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v18, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 50
    .local v8, c:Landroid/database/Cursor;
    #v8=(Reference);
    if-eqz v8, :cond_2

    .line 52
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-ne v2, v3, :cond_1

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 57
    :cond_1
    #v2=(Integer);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 61
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    new-instance v12, Landroid/content/Intent;

    #v12=(UninitRef);
    const-string v2, "android.intent.action.VIEW"

    #v2=(Reference);
    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v12, intent:Landroid/content/Intent;
    #v12=(Reference);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v9, v2

    #v2=(Byte);
    if-eqz v2, :cond_3

    .line 63
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 70
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-object/from16 v0, v19

    #v0=(Reference);
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    const/high16 v2, 0x8

    #v2=(Integer);
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/email/activity/EventViewer;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/EventViewer;->finish()V

    goto :goto_0

    .line 57
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_0
    #v1=(Uninit);v2=(Conflicted);v4=(Reference);v5=(Reference);v6=(Reference);v7=(Null);v8=(Reference);v12=(Uninit);v16=(Uninit);v17=(Uninit);
    move-exception v2

    #v2=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 65
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_3
    #v2=(Byte);v3=(LongHi);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v12=(Reference);
    const-string v2, "DTSTART"

    #v2=(Reference);
    invoke-virtual {v11, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v16

    .line 67
    .local v16, time:J
    #v16=(LongLo);v17=(LongHi);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "content://com.android.calendar/time/"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 68
    const-string v2, "VIEW"

    const-string v3, "DAY"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
