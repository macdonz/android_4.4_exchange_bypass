.class public Lcom/android/exchange/service/EasCalendarSyncHandler;
.super Lcom/android/exchange/service/EasSyncHandler;
.source "EasCalendarSyncHandler.java"


# static fields
.field private static final CALENDAR_ID_PROJECTION:[Ljava/lang/String;

.field private static final ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccountManagerAccount:Landroid/accounts/Account;

.field private final mCalendarId:J

.field private final mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutgoingMailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mUploadedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 57
    #v2=(Null);
    new-array v0, v3, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->CALENDAR_ID_PROJECTION:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "original_id"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 13
    .parameter "context"
    .parameter "contentResolver"
    .parameter "accountManagerAccount"
    .parameter "account"
    .parameter "mailbox"
    .parameter "syncExtras"
    .parameter "syncResult"

    .prologue
    .line 127
    move-object v1, p0

    #v1=(UninitThis);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p2

    #v3=(Reference);
    move-object/from16 v4, p4

    #v4=(Reference);
    move-object/from16 v5, p5

    #v5=(Reference);
    move-object/from16 v6, p6

    #v6=(Reference);
    move-object/from16 v7, p7

    #v7=(Reference);
    invoke-direct/range {v1 .. v7}, Lcom/android/exchange/service/EasSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 118
    #v1=(Reference);p0=(Reference);
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    .line 128
    move-object/from16 v0, p3

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 129
    iget-object v1, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/exchange/service/EasCalendarSyncHandler;->CALENDAR_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "account_name=? AND account_type=? AND _sync_id=?"

    const/4 v5, 0x3

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    iget-object v7, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    const-string v7, "com.google.android.exchange"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    #v6=(PosByte);
    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 136
    .local v8, c:Landroid/database/Cursor;
    #v8=(Reference);
    if-nez v8, :cond_0

    .line 137
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mCalendarId:J

    .line 183
    :goto_0
    #v1=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 140
    :cond_0
    :try_start_0
    #v1=(Reference);v2=(Reference);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mCalendarId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_1
    #v1=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 143
    :cond_1
    #v1=(Boolean);v2=(Reference);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    const-wide/16 v10, -0x1

    .line 147
    .local v10, id:J
    :try_start_1
    #v10=(LongLo);v11=(LongHi);
    iget-object v1, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v1=(Reference);
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/exchange/service/EasCalendarSyncHandler;->CALENDAR_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "account_name=? AND account_type=? AND _sync_id IS NULL"

    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    const-string v7, "com.google.android.exchange"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 154
    .local v9, c1:Landroid/database/Cursor;
    #v9=(Reference);
    if-eqz v9, :cond_3

    .line 156
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 157
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 158
    new-instance v12, Landroid/content/ContentValues;

    #v12=(UninitRef);
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v12, values:Landroid/content/ContentValues;
    #v12=(Reference);
    const-string v1, "_sync_id"

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    #v1=(Conflicted);v3=(Reference);v4=(Reference);v12=(Conflicted);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_3
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v10, v1

    #v1=(Byte);
    if-ltz v1, :cond_4

    .line 173
    iput-wide v10, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mCalendarId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 180
    .end local v9           #c1:Landroid/database/Cursor;
    .end local v10           #id:J
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Boolean);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 168
    .restart local v9       #c1:Landroid/database/Cursor;
    .restart local v10       #id:J
    :catchall_1
    #v2=(Reference);v5=(Reference);v6=(Null);v9=(Reference);v10=(LongLo);v11=(LongHi);
    move-exception v1

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 175
    :cond_4
    #v1=(Byte);v2=(LongHi);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v1, v2, v3, v4}, Lcom/android/exchange/utility/CalendarUtilities;->createCalendar(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mCalendarId:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "emailAddress"

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "caller_is_syncadapter"

    #v1=(Reference);
    const-string v2, "true"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.google.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static decodeVisibility(I)Ljava/lang/String;
    .locals 2
    .parameter "visibility"

    .prologue
    .line 336
    packed-switch p0, :pswitch_data_0

    .line 350
    const/4 v0, 0x0

    .line 353
    .local v0, easVisibility:I
    :goto_0
    #v0=(PosByte);
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    return-object v1

    .line 338
    .end local v0           #easVisibility:I
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);
    const/4 v0, 0x0

    .line 339
    .restart local v0       #easVisibility:I
    #v0=(Null);
    goto :goto_0

    .line 341
    .end local v0           #easVisibility:I
    :pswitch_1
    #v0=(Uninit);
    const/4 v0, 0x1

    .line 342
    .restart local v0       #easVisibility:I
    #v0=(One);
    goto :goto_0

    .line 344
    .end local v0           #easVisibility:I
    :pswitch_2
    #v0=(Uninit);
    const/4 v0, 0x2

    .line 345
    .restart local v0       #easVisibility:I
    #v0=(PosByte);
    goto :goto_0

    .line 347
    .end local v0           #easVisibility:I
    :pswitch_3
    #v0=(Uninit);
    const/4 v0, 0x3

    .line 348
    .restart local v0       #easVisibility:I
    #v0=(PosByte);
    goto :goto_0

    .line 336
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getEntityVersion(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2
    .parameter "entityValues"

    .prologue
    .line 287
    const-string v1, "sync_data4"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, version:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 293
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 299
    :goto_0
    #v1=(Reference);
    return-object v1

    .line 294
    :catch_0
    #v1=(Conflicted);
    move-exception v1

    .line 299
    :cond_0
    #v1=(Reference);
    const-string v1, "0"

    goto :goto_0
.end method

.method private static getInt(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2
    .parameter "cv"
    .parameter "column"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 325
    .local v0, i:Ljava/lang/Integer;
    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 326
    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Uninit);
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    goto :goto_0
.end method

.method private handleEntity(Lcom/android/exchange/adapter/Serializer;Landroid/content/Entity;Ljava/lang/String;Z)Z
    .locals 28
    .parameter "s"
    .parameter "entity"
    .parameter "calendarIdString"
    .parameter "first"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    .line 864
    .local v9, entityValues:Landroid/content/ContentValues;
    #v9=(Reference);
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v3=(Conflicted);v6=(Conflicted);v22=(Reference);v24=(Conflicted);v25=(Conflicted);
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    #v24=(Reference);
    check-cast v24, Landroid/content/Entity$NamedContentValues;

    .line 865
    .local v24, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v24

    #v0=(Reference);
    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    #v3=(Reference);
    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    #v6=(Reference);
    invoke-virtual {v3, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 866
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    .line 867
    .local v25, ncvValues:Landroid/content/ContentValues;
    #v25=(Reference);
    const-string v3, "name"

    #v3=(Reference);
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "upsyncProhibited"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 869
    const-string v3, "1"

    #v3=(Reference);
    const-string v6, "value"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    #v3=(Reference);
    const-string v6, "_id"

    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    const/4 v3, 0x0

    .line 952
    .end local v24           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v25           #ncvValues:Landroid/content/ContentValues;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    return v3

    .line 880
    :cond_1
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v23=(Uninit);v26=(Uninit);v27=(Uninit);
    const-string v3, "organizer"

    #v3=(Reference);
    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 881
    .local v26, organizerEmail:Ljava/lang/String;
    #v26=(Reference);
    if-eqz v26, :cond_2

    const-string v3, "dtstart"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    const-string v3, "duration"

    #v3=(Reference);
    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    const-string v3, "dtend"

    #v3=(Reference);
    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 884
    :cond_2
    #v3=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0

    .line 887
    :cond_3
    #v3=(Boolean);
    if-eqz p4, :cond_4

    .line 888
    const/16 v3, 0x16

    #v3=(PosByte);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 889
    const-string v3, "Exchange"

    #v3=(Reference);
    const-string v6, "Sending Calendar changes to the server"

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 892
    :cond_4
    #v0=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v3, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 894
    .local v13, selfOrganizer:Z
    #v13=(Boolean);
    const-string v3, "sync_data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 895
    .local v11, clientId:Ljava/lang/String;
    #v11=(Reference);
    if-nez v11, :cond_5

    .line 896
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 898
    :cond_5
    const-string v3, "_sync_id"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 899
    .local v10, serverId:Ljava/lang/String;
    #v10=(Reference);
    const-string v3, "_id"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 900
    .local v4, eventId:J
    #v4=(LongLo);v5=(LongHi);
    if-nez v10, :cond_7

    .line 902
    const-string v3, "Exchange"

    const-string v6, "Creating new event with clientId: %s"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v11, v7, v8

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 903
    const/4 v3, 0x7

    #v3=(PosByte);
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    #v3=(Reference);
    const/16 v6, 0xc

    #v6=(PosByte);
    invoke-virtual {v3, v6, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 905
    new-instance v21, Landroid/content/ContentValues;

    #v21=(UninitRef);
    const/4 v3, 0x2

    #v3=(PosByte);
    move-object/from16 v0, v21

    #v0=(UninitRef);
    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 906
    .local v21, cv:Landroid/content/ContentValues;
    #v0=(Reference);v21=(Reference);
    const-string v3, "sync_data2"

    #v3=(Reference);
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v3, "sync_data4"

    const-string v6, "0"

    #v6=(Reference);
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 940
    :goto_1
    #v1=(Conflicted);v27=(Conflicted);
    const/16 v3, 0x1d

    #v3=(PosByte);
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 941
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference);
    move-object/from16 v2, p1

    #v2=(Reference);
    invoke-direct {v0, v1, v11, v2}, Lcom/android/exchange/service/EasCalendarSyncHandler;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 944
    if-eqz v10, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    #v7=(Reference);
    move-object/from16 v8, p2

    #v8=(Reference);
    move-object/from16 v12, p3

    .line 945
    #v12=(Reference);
    invoke-direct/range {v6 .. v13}, Lcom/android/exchange/service/EasCalendarSyncHandler;->handleExceptionsToRecurrenceRules(Lcom/android/exchange/adapter/Serializer;Landroid/content/Entity;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 949
    :cond_6
    #v12=(Conflicted);
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p0

    #v14=(Reference);
    move-object/from16 v15, p2

    #v15=(Reference);
    move-object/from16 v16, v9

    #v16=(Reference);
    move/from16 v17, v13

    #v17=(Boolean);
    move-wide/from16 v18, v4

    #v18=(LongLo);v19=(LongHi);
    move-object/from16 v20, v11

    .line 951
    #v20=(Reference);
    invoke-direct/range {v14 .. v20}, Lcom/android/exchange/service/EasCalendarSyncHandler;->updateAttendeesAndSendMail(Landroid/content/Entity;Landroid/content/ContentValues;ZJLjava/lang/String;)V

    .line 952
    const/4 v3, 0x1

    #v3=(One);
    goto/16 :goto_0

    .line 911
    .end local v21           #cv:Landroid/content/ContentValues;
    :cond_7
    #v1=(Uninit);v2=(Uninit);v3=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Uninit);v12=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v27=(Uninit);
    const-string v3, "deleted"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    if-ne v3, v6, :cond_a

    .line 912
    const-string v3, "Exchange"

    #v3=(Reference);
    const-string v6, "Deleting event with serverId: %s"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v10, v7, v8

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 913
    const/16 v3, 0x9

    #v3=(PosByte);
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    #v3=(Reference);
    const/16 v6, 0xd

    #v6=(PosByte);
    invoke-virtual {v3, v6, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    if-eqz v13, :cond_9

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    const/16 v6, 0x20

    #v6=(PosByte);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v8=(Reference);
    invoke-static/range {v3 .. v8}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v23

    .line 918
    .local v23, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v23=(Reference);
    if-eqz v23, :cond_8

    .line 919
    const-string v3, "Exchange"

    const-string v6, "Queueing cancellation to %s"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    #v12=(Reference);
    aput-object v12, v7, v8

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    .end local v23           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_8
    :goto_2
    #v1=(Conflicted);v6=(Conflicted);v8=(Reference);v12=(Conflicted);v23=(Conflicted);
    const/4 v3, 0x1

    #v3=(One);
    goto/16 :goto_0

    .line 923
    :cond_9
    #v1=(Uninit);v3=(Reference);v6=(Reference);v8=(Null);v12=(Uninit);v23=(Uninit);
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-direct {v0, v1, v11}, Lcom/android/exchange/service/EasCalendarSyncHandler;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    goto :goto_2

    .line 928
    :cond_a
    #v1=(Uninit);v3=(Integer);v6=(One);v7=(Conflicted);v8=(Uninit);
    const-string v3, "Exchange"

    #v3=(Reference);
    const-string v6, "Upsync change to event with serverId: %s"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v10, v7, v8

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 929
    const/16 v3, 0x8

    #v3=(PosByte);
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    #v3=(Reference);
    const/16 v6, 0xd

    #v6=(PosByte);
    invoke-virtual {v3, v6, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 931
    invoke-static {v9}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getEntityVersion(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v27

    .line 932
    .local v27, version:Ljava/lang/String;
    #v27=(Reference);
    new-instance v21, Landroid/content/ContentValues;

    #v21=(UninitRef);
    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, v21

    #v0=(UninitRef);
    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 933
    .restart local v21       #cv:Landroid/content/ContentValues;
    #v0=(Reference);v21=(Reference);
    const-string v3, "sync_data4"

    #v3=(Reference);
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    #v1=(Reference);
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v6=(Reference);
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 938
    const-string v3, "sync_data4"

    move-object/from16 v0, v27

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private handleExceptionsToRecurrenceRules(Lcom/android/exchange/adapter/Serializer;Landroid/content/Entity;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .parameter "s"
    .parameter "entity"
    .parameter "entityValues"
    .parameter "serverId"
    .parameter "clientId"
    .parameter "calendarIdString"
    .parameter "selfOrganizer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "original_sync_id=? AND calendar_id=?"

    #v5=(Reference);
    const/4 v6, 0x2

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object p4, v6, v7

    const/4 v7, 0x1

    #v7=(One);
    aput-object p6, v6, v7

    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v12

    .line 643
    .local v12, exIterator:Landroid/content/EntityIterator;
    #v12=(Reference);
    const/4 v11, 0x1

    .line 644
    .local v11, exFirst:Z
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Boolean);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    invoke-interface {v12}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 645
    invoke-interface {v12}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Landroid/content/Entity;

    .line 646
    .local v8, exEntity:Landroid/content/Entity;
    if-eqz v11, :cond_0

    .line 647
    const/16 v2, 0x114

    #v2=(PosShort);
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 648
    const/4 v11, 0x0

    .line 650
    :cond_0
    const/16 v2, 0x113

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 651
    const/4 v2, 0x0

    #v2=(Null);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-direct {v0, v8, v2, v1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 652
    invoke-virtual {v8}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    .line 653
    .local v13, exValues:Landroid/content/ContentValues;
    #v13=(Reference);
    const-string v2, "dirty"

    #v2=(Reference);
    invoke-static {v13, v2}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-ne v2, v3, :cond_5

    .line 656
    const-string v2, "_id"

    #v2=(Reference);
    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 660
    .local v9, exEventId:J
    #v9=(LongLo);v10=(LongHi);
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    #v3=(Conflicted);v15=(Reference);
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 661
    .local v17, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    #v2=(Reference);
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v3=(Reference);
    invoke-virtual {v8, v2, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 665
    .end local v17           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_1
    #v2=(Boolean);v3=(Conflicted);v17=(Conflicted);
    const-string v2, "deleted"

    #v2=(Reference);
    invoke-static {v13, v2}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-eq v2, v3, :cond_2

    const-string v2, "eventStatus"

    #v2=(Reference);
    invoke-static {v13, v2}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    if-ne v2, v3, :cond_6

    .line 667
    :cond_2
    const/16 v14, 0x20

    .line 668
    .local v14, flag:I
    #v14=(PosByte);
    if-nez p7, :cond_3

    .line 673
    const-string v2, "organizer"

    #v2=(Reference);
    const-string v3, "organizer"

    #v3=(Reference);
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v8, v1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    .line 681
    :cond_3
    :goto_2
    #v2=(Conflicted);v3=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    const-string v2, "sync_data4"

    const-string v3, "sync_data4"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v2, "eventLocation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 688
    const-string v2, "eventLocation"

    #v2=(Reference);
    const-string v3, "eventLocation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_4
    #v2=(Conflicted);
    if-eqz p7, :cond_5

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v2=(Reference);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, p5

    invoke-static {v2, v8, v14, v0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 695
    .local v16, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v16=(Reference);
    if-eqz v16, :cond_5

    .line 696
    const-string v2, "Exchange"

    const-string v3, "Queueing exception update to %s"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v9           #exEventId:J
    .end local v14           #flag:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_5
    #v2=(Conflicted);v3=(Conflicted);v5=(Reference);v9=(Conflicted);v10=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 677
    .restart local v9       #exEventId:J
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_6
    #v2=(Integer);v3=(PosByte);v9=(LongLo);v10=(LongHi);v15=(Reference);
    const/16 v14, 0x10

    .restart local v14       #flag:I
    #v14=(PosByte);
    goto :goto_2

    .line 703
    .end local v8           #exEntity:Landroid/content/Entity;
    .end local v9           #exEventId:J
    .end local v13           #exValues:Landroid/content/ContentValues;
    .end local v14           #flag:I
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_7
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    if-nez v11, :cond_8

    .line 704
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 706
    :cond_8
    return-void
.end method

.method private markParentsOfDirtyEvents(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "calendarIdString"
    .parameter "calendarIdArgument"

    .prologue
    .line 247
    new-instance v12, Ljava/util/ArrayList;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v12, orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    #v12=(Reference);
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/exchange/service/EasCalendarSyncHandler;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "dirty=1 AND original_id NOTNULL AND calendar_id=?"

    #v3=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v4, p2

    #v4=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    if-eqz v6, :cond_2

    .line 252
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    #v8=(UninitRef);
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 255
    .local v8, cv:Landroid/content/ContentValues;
    #v8=(Reference);
    const-string v0, "sync_data8"

    #v0=(Reference);
    const-string v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Reference);v7=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 259
    .local v13, parentId:J
    #v13=(LongLo);v14=(LongHi);
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-direct {p0, v1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 263
    .local v7, cnt:I
    #v7=(Integer);
    if-nez v7, :cond_0

    .line 264
    const/4 v0, 0x1

    #v0=(One);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    .end local v7           #cnt:I
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v13           #parentId:J
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_1
    #v0=(Boolean);v3=(Reference);v8=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 273
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_2
    #v0=(Conflicted);v8=(Conflicted);
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    #v9=(Reference);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 274
    .local v10, orphan:J
    #v10=(LongLo);v11=(LongHi);
    const-string v0, "Exchange"

    const-string v1, "Deleted orphaned exception: %d"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 278
    .end local v10           #orphan:J
    :cond_3
    #v0=(Boolean);v1=(Conflicted);v2=(Reference);v3=(Reference);v4=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void
.end method

.method private sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 6
    .parameter "entity"
    .parameter "clientId"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v1=(Reference);
    const/16 v2, 0x80

    #v2=(PosShort);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v3=(Reference);
    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 311
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 312
    const-string v1, "Exchange"

    const-string v2, "Queueing declined response to %s"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 313
    iget-object v1, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method private sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 52
    .parameter "entity"
    .parameter "clientId"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v18

    .line 372
    .local v18, entityValues:Landroid/content/ContentValues;
    #v18=(Reference);
    if-nez p2, :cond_d

    const/16 v27, 0x1

    .line 373
    .local v27, isException:Z
    :goto_0
    #v27=(Boolean);
    const/16 v22, 0x0

    .line 374
    .local v22, hasAttendees:Z
    #v22=(Null);
    const-string v48, "_sync_id"

    #v48=(Reference);
    move-object/from16 v0, v18

    #v0=(Reference);
    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v25

    .line 375
    .local v25, isChange:Z
    #v25=(Boolean);
    const-string v48, "allDay"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v5

    .line 377
    .local v5, allDay:Z
    #v5=(Boolean);
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v29

    .line 382
    .local v29, localTimeZone:Ljava/util/TimeZone;
    #v29=(Reference);
    if-eqz v27, :cond_3

    .line 384
    const-string v48, "deleted"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 385
    .local v11, deleted:Ljava/lang/Integer;
    #v11=(Reference);
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v48

    #v48=(Integer);
    const/16 v49, 0x1

    #v49=(One);
    move/from16 v0, v48

    #v0=(Integer);
    move/from16 v1, v49

    #v1=(One);
    if-ne v0, v1, :cond_e

    const/16 v26, 0x1

    .line 386
    .local v26, isDeleted:Z
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v26=(Boolean);v48=(Conflicted);v49=(Conflicted);
    const-string v48, "eventStatus"

    #v48=(Reference);
    move-object/from16 v0, v18

    #v0=(Reference);
    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 387
    .local v21, eventStatus:Ljava/lang/Integer;
    #v21=(Reference);
    if-eqz v21, :cond_f

    const/16 v48, 0x2

    #v48=(PosByte);
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    #v48=(Reference);
    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_f

    const/16 v24, 0x1

    .line 389
    .local v24, isCanceled:Z
    :goto_2
    #v24=(Boolean);v48=(Conflicted);
    if-nez v26, :cond_0

    if-eqz v24, :cond_10

    .line 390
    :cond_0
    const/16 v48, 0x115

    #v48=(PosShort);
    const-string v49, "1"

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 393
    if-eqz v26, :cond_1

    if-nez v24, :cond_1

    .line 394
    const-string v48, "_id"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 395
    .local v19, eventId:J
    #v19=(LongLo);v20=(LongHi);
    new-instance v10, Landroid/content/ContentValues;

    #v10=(UninitRef);
    const/16 v48, 0x1

    #v48=(One);
    move/from16 v0, v48

    #v0=(One);
    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 396
    .local v10, cv:Landroid/content/ContentValues;
    #v10=(Reference);
    const-string v48, "eventStatus"

    #v48=(Reference);
    const/16 v49, 0x2

    #v49=(PosByte);
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, v48

    #v0=(Reference);
    move-object/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v48, v0

    sget-object v49, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v49

    move-wide/from16 v1, v19

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v49

    const/16 v50, 0x0

    #v50=(Null);
    const/16 v51, 0x0

    #v51=(Null);
    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    #v2=(Null);
    move-object/from16 v3, v51

    #v3=(Null);
    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 406
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v19           #eventId:J
    :cond_1
    :goto_3
    #v1=(Conflicted);v2=(Reference);v3=(Conflicted);v10=(Conflicted);v19=(Conflicted);v20=(Conflicted);v48=(Conflicted);v50=(Conflicted);v51=(Conflicted);
    const-string v48, "originalInstanceTime"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v37

    .line 407
    .local v37, originalTime:Ljava/lang/Long;
    #v37=(Reference);
    if-eqz v37, :cond_3

    .line 408
    const-string v48, "originalAllDay"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v36

    .line 411
    .local v36, originalAllDay:Z
    #v36=(Boolean);
    if-eqz v36, :cond_2

    .line 413
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    #v48=(LongLo);v49=(LongHi);
    move-wide/from16 v0, v48

    #v0=(LongLo);v1=(LongHi);
    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    .line 416
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v48=(Conflicted);v49=(Conflicted);
    const/16 v48, 0x116

    #v48=(PosShort);
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v49

    #v49=(LongLo);v50=(LongHi);
    invoke-static/range {v49 .. v50}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, p3

    #v0=(Reference);
    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 423
    .end local v11           #deleted:Ljava/lang/Integer;
    .end local v21           #eventStatus:Ljava/lang/Integer;
    .end local v24           #isCanceled:Z
    .end local v26           #isDeleted:Z
    .end local v36           #originalAllDay:Z
    .end local v37           #originalTime:Ljava/lang/Long;
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v11=(Conflicted);v21=(Conflicted);v24=(Conflicted);v26=(Conflicted);v36=(Conflicted);v37=(Conflicted);v48=(Conflicted);v49=(Conflicted);v50=(Conflicted);
    if-nez v27, :cond_5

    .line 426
    if-eqz v5, :cond_11

    const-string v48, "sync_data1"

    :goto_4
    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 428
    .local v46, timeZoneName:Ljava/lang/String;
    #v46=(Reference);
    if-nez v46, :cond_4

    .line 429
    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    .line 431
    :cond_4
    const/16 v48, 0x105

    #v48=(PosShort);
    invoke-static/range {v46 .. v46}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v49

    #v49=(Reference);
    invoke-static/range {v49 .. v49}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 435
    .end local v46           #timeZoneName:Ljava/lang/String;
    :cond_5
    #v1=(Conflicted);v2=(Conflicted);v46=(Conflicted);v48=(Conflicted);v49=(Conflicted);
    const/16 v49, 0x106

    #v49=(PosShort);
    if-eqz v5, :cond_12

    const-string v48, "1"

    :goto_5
    #v48=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v49

    #v1=(PosShort);
    move-object/from16 v2, v48

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 438
    const-string v48, "dtstart"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    .line 442
    .local v43, startTime:J
    #v43=(LongLo);v44=(LongHi);
    const-string v48, "dtend"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_13

    .line 443
    const-string v48, "dtend"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 457
    .local v16, endTime:J
    :goto_6
    #v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(LongLo);v17=(LongHi);v48=(Conflicted);
    if-eqz v5, :cond_6

    .line 458
    move-wide/from16 v0, v43

    #v0=(LongLo);v1=(LongHi);
    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v43

    .line 459
    move-wide/from16 v0, v16

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v16

    .line 461
    :cond_6
    #v0=(Conflicted);v1=(Conflicted);
    const/16 v48, 0x127

    #v48=(PosShort);
    invoke-static/range {v43 .. v44}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, p3

    #v0=(Reference);
    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 462
    const/16 v48, 0x112

    invoke-static/range {v16 .. v17}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 464
    const/16 v48, 0x111

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v49

    #v49=(LongLo);v50=(LongHi);
    invoke-static/range {v49 .. v50}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 467
    const-string v48, "eventLocation"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 468
    .local v28, loc:Ljava/lang/String;
    #v28=(Reference);
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    #v48=(Boolean);
    if-nez v48, :cond_8

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    #v48=(DoubleLo);v49=(DoubleHi);
    const-wide/high16 v50, 0x4028

    #v50=(LongLo);v51=(LongHi);
    cmpg-double v48, v48, v50

    #v48=(Byte);
    if-gez v48, :cond_7

    .line 471
    invoke-static/range {v28 .. v28}, Lcom/android/emailcommon/utility/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 473
    :cond_7
    const/16 v48, 0x117

    #v48=(PosShort);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 475
    :cond_8
    #v1=(Conflicted);v49=(Conflicted);v50=(Conflicted);v51=(Conflicted);
    const-string v48, "title"

    #v48=(Reference);
    const/16 v49, 0x126

    #v49=(PosShort);
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    #v1=(Reference);
    move-object/from16 v2, v48

    move/from16 v3, v49

    #v3=(PosShort);
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    #v48=(DoubleLo);v49=(DoubleHi);
    const-wide/high16 v50, 0x4028

    #v50=(LongLo);v51=(LongHi);
    cmpl-double v48, v48, v50

    #v48=(Byte);
    if-ltz v48, :cond_15

    .line 478
    const/16 v48, 0x44a

    #v48=(PosShort);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 479
    const/16 v48, 0x446

    const-string v49, "1"

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 480
    const-string v48, "description"

    #v48=(Reference);
    const/16 v49, 0x44b

    #v49=(PosShort);
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    #v1=(Reference);
    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 487
    :goto_7
    if-nez v27, :cond_26

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    #v48=(DoubleLo);v49=(DoubleHi);
    const-wide/high16 v50, 0x4028

    cmpl-double v48, v48, v50

    #v48=(Byte);
    if-gez v48, :cond_9

    if-nez v25, :cond_a

    .line 490
    :cond_9
    const-string v48, "organizer"

    #v48=(Reference);
    const/16 v49, 0x119

    #v49=(PosShort);
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 493
    :cond_a
    #v48=(Conflicted);v49=(Conflicted);
    const-string v48, "rrule"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 494
    .local v41, rrule:Ljava/lang/String;
    #v41=(Reference);
    if-eqz v41, :cond_b

    .line 495
    move-object/from16 v0, v41

    move-wide/from16 v1, v43

    #v1=(LongLo);v2=(LongHi);
    move-object/from16 v3, v29

    #v3=(Reference);
    move-object/from16 v4, p3

    #v4=(Reference);
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceFromRrule(Ljava/lang/String;JLjava/util/TimeZone;Lcom/android/exchange/adapter/Serializer;)V

    .line 499
    :cond_b
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v45

    .line 501
    .local v45, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    #v45=(Reference);
    const/4 v15, -0x1

    .line 502
    .local v15, earliestReminder:I
    #v15=(Byte);
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_c
    :goto_8
    #v0=(Conflicted);v15=(Integer);v23=(Reference);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v38=(Conflicted);v39=(Conflicted);v42=(Conflicted);v48=(Conflicted);
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_19

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    #v31=(Reference);
    check-cast v31, Landroid/content/Entity$NamedContentValues;

    .line 503
    .local v31, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v31

    #v0=(Reference);
    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 504
    .local v32, ncvUri:Landroid/net/Uri;
    #v32=(Reference);
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v33, v0

    .line 505
    .local v33, ncvValues:Landroid/content/ContentValues;
    #v33=(Reference);
    sget-object v48, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    #v48=(Reference);
    move-object/from16 v0, v32

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_17

    .line 506
    const-string v48, "name"

    #v48=(Reference);
    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 507
    .local v38, propertyName:Ljava/lang/String;
    #v38=(Reference);
    const-string v48, "value"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 508
    .local v39, propertyValue:Ljava/lang/String;
    #v39=(Reference);
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    #v48=(Boolean);
    if-nez v48, :cond_c

    .line 511
    const-string v48, "categories"

    #v48=(Reference);
    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_c

    .line 514
    new-instance v42, Ljava/util/StringTokenizer;

    #v42=(UninitRef);
    const-string v48, "\\"

    #v48=(Reference);
    move-object/from16 v0, v42

    #v0=(UninitRef);
    move-object/from16 v1, v39

    move-object/from16 v2, v48

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v42, st:Ljava/util/StringTokenizer;
    #v0=(Reference);v42=(Reference);
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v48

    #v48=(Integer);
    if-lez v48, :cond_c

    .line 517
    const/16 v48, 0x10e

    #v48=(PosShort);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 518
    :goto_9
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_16

    .line 519
    const/16 v48, 0x10f

    #v48=(PosShort);
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 372
    .end local v5           #allDay:Z
    .end local v15           #earliestReminder:I
    .end local v16           #endTime:J
    .end local v22           #hasAttendees:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #isChange:Z
    .end local v27           #isException:Z
    .end local v28           #loc:Ljava/lang/String;
    .end local v29           #localTimeZone:Ljava/util/TimeZone;
    .end local v31           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v32           #ncvUri:Landroid/net/Uri;
    .end local v33           #ncvValues:Landroid/content/ContentValues;
    .end local v38           #propertyName:Ljava/lang/String;
    .end local v39           #propertyValue:Ljava/lang/String;
    .end local v41           #rrule:Ljava/lang/String;
    .end local v42           #st:Ljava/util/StringTokenizer;
    .end local v43           #startTime:J
    .end local v45           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_d
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v36=(Uninit);v37=(Uninit);v38=(Uninit);v39=(Uninit);v41=(Uninit);v42=(Uninit);v43=(Uninit);v44=(Uninit);v45=(Uninit);v46=(Uninit);v48=(Uninit);v49=(Uninit);v50=(Uninit);v51=(Uninit);
    const/16 v27, 0x0

    #v27=(Null);
    goto/16 :goto_0

    .line 385
    .restart local v5       #allDay:Z
    .restart local v11       #deleted:Ljava/lang/Integer;
    .restart local v22       #hasAttendees:Z
    .restart local v25       #isChange:Z
    .restart local v27       #isException:Z
    .restart local v29       #localTimeZone:Ljava/util/TimeZone;
    :cond_e
    #v0=(Conflicted);v1=(Conflicted);v5=(Boolean);v11=(Reference);v22=(Null);v25=(Boolean);v27=(Boolean);v29=(Reference);v48=(Conflicted);v49=(Conflicted);
    const/16 v26, 0x0

    #v26=(Null);
    goto/16 :goto_1

    .line 387
    .restart local v21       #eventStatus:Ljava/lang/Integer;
    .restart local v26       #isDeleted:Z
    :cond_f
    #v0=(Reference);v1=(Reference);v21=(Reference);v26=(Boolean);
    const/16 v24, 0x0

    #v24=(Null);
    goto/16 :goto_2

    .line 402
    .restart local v24       #isCanceled:Z
    :cond_10
    #v24=(Boolean);
    const/16 v48, 0x115

    #v48=(PosShort);
    const-string v49, "0"

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 426
    .end local v11           #deleted:Ljava/lang/Integer;
    .end local v21           #eventStatus:Ljava/lang/Integer;
    .end local v24           #isCanceled:Z
    .end local v26           #isDeleted:Z
    :cond_11
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v10=(Conflicted);v11=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v24=(Conflicted);v26=(Conflicted);v36=(Conflicted);v37=(Conflicted);v48=(Conflicted);v49=(Conflicted);v50=(Conflicted);v51=(Conflicted);
    const-string v48, "eventTimezone"

    #v48=(Reference);
    goto/16 :goto_4

    .line 435
    :cond_12
    #v46=(Conflicted);v48=(Conflicted);v49=(PosShort);
    const-string v48, "0"

    #v48=(Reference);
    goto/16 :goto_5

    .line 445
    .restart local v43       #startTime:J
    :cond_13
    #v1=(Reference);v2=(Reference);v43=(LongLo);v44=(LongHi);v48=(Boolean);
    const-wide/32 v13, 0x36ee80

    .line 446
    .local v13, durationMillis:J
    #v13=(LongLo);v14=(LongHi);
    const-string v48, "duration"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_14

    .line 447
    new-instance v12, Lcom/android/calendarcommon2/Duration;

    #v12=(UninitRef);
    invoke-direct {v12}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 449
    .local v12, duration:Lcom/android/calendarcommon2/Duration;
    :try_start_0
    #v12=(Reference);
    const-string v48, "duration"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v12}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 455
    .end local v12           #duration:Lcom/android/calendarcommon2/Duration;
    :cond_14
    :goto_a
    #v12=(Conflicted);v48=(Conflicted);
    add-long v16, v43, v13

    .restart local v16       #endTime:J
    #v16=(LongLo);v17=(LongHi);
    goto/16 :goto_6

    .line 484
    .end local v13           #durationMillis:J
    .restart local v28       #loc:Ljava/lang/String;
    :cond_15
    #v3=(PosShort);v13=(Conflicted);v14=(Conflicted);v28=(Reference);v48=(Byte);v49=(DoubleHi);v50=(LongLo);v51=(LongHi);
    const-string v48, "description"

    #v48=(Reference);
    const/16 v49, 0x10b

    #v49=(PosShort);
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 521
    .restart local v15       #earliestReminder:I
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v31       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v32       #ncvUri:Landroid/net/Uri;
    .restart local v33       #ncvValues:Landroid/content/ContentValues;
    .restart local v38       #propertyName:Ljava/lang/String;
    .restart local v39       #propertyValue:Ljava/lang/String;
    .restart local v41       #rrule:Ljava/lang/String;
    .restart local v42       #st:Ljava/util/StringTokenizer;
    .restart local v45       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_16
    #v1=(PosShort);v3=(Conflicted);v4=(Conflicted);v15=(Integer);v23=(Reference);v30=(Conflicted);v31=(Reference);v32=(Reference);v33=(Reference);v38=(Reference);v39=(Reference);v41=(Reference);v42=(Reference);v45=(Reference);v48=(Boolean);v49=(Conflicted);
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_8

    .line 524
    .end local v38           #propertyName:Ljava/lang/String;
    .end local v39           #propertyValue:Ljava/lang/String;
    .end local v42           #st:Ljava/util/StringTokenizer;
    :cond_17
    #v1=(Reference);v2=(Conflicted);v38=(Conflicted);v39=(Conflicted);v42=(Conflicted);
    sget-object v48, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    #v48=(Reference);
    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_c

    .line 525
    const-string v48, "minutes"

    #v48=(Reference);
    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 526
    .local v30, mins:Ljava/lang/Integer;
    #v30=(Reference);
    if-eqz v30, :cond_c

    .line 528
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v48

    #v48=(Integer);
    if-gez v48, :cond_18

    .line 529
    const/16 v48, 0x1e

    #v48=(PosByte);
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 532
    :cond_18
    #v48=(Integer);
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v48

    move/from16 v0, v48

    #v0=(Integer);
    if-le v0, v15, :cond_c

    .line 533
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_8

    .line 540
    .end local v30           #mins:Ljava/lang/Integer;
    .end local v31           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v32           #ncvUri:Landroid/net/Uri;
    .end local v33           #ncvValues:Landroid/content/ContentValues;
    :cond_19
    #v0=(Conflicted);v1=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v48=(Boolean);
    if-ltz v15, :cond_1a

    .line 541
    const/16 v48, 0x124

    #v48=(PosShort);
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, p3

    #v0=(Reference);
    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 546
    :cond_1a
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v49=(Conflicted);
    if-eqz p2, :cond_1b

    .line 547
    const/16 v48, 0x128

    move-object/from16 v0, p3

    #v0=(Reference);
    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, p2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 551
    :cond_1b
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const/16 v35, 0x0

    .line 552
    .local v35, organizerName:Ljava/lang/String;
    #v35=(Null);
    const/16 v34, 0x0

    .line 553
    .local v34, organizerEmail:Ljava/lang/String;
    #v34=(Null);
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1c
    :goto_b
    #v6=(Conflicted);v7=(Conflicted);v22=(Boolean);v34=(Reference);v35=(Reference);v40=(Conflicted);v48=(Conflicted);
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    #v31=(Reference);
    check-cast v31, Landroid/content/Entity$NamedContentValues;

    .line 554
    .restart local v31       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v31

    #v0=(Reference);
    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 555
    .restart local v32       #ncvUri:Landroid/net/Uri;
    #v32=(Reference);
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v33, v0

    .line 556
    .restart local v33       #ncvValues:Landroid/content/ContentValues;
    #v33=(Reference);
    sget-object v48, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #v48=(Reference);
    move-object/from16 v0, v32

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_1c

    .line 557
    const-string v48, "attendeeRelationship"

    #v48=(Reference);
    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v40

    .line 561
    .local v40, relationship:Ljava/lang/Integer;
    #v40=(Reference);
    if-eqz v40, :cond_1c

    const-string v48, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_1c

    .line 563
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v48

    #v48=(Integer);
    const/16 v49, 0x2

    #v49=(PosByte);
    move/from16 v0, v48

    #v0=(Integer);
    move/from16 v1, v49

    #v1=(PosByte);
    if-ne v0, v1, :cond_1d

    .line 564
    const-string v48, "attendeeName"

    #v48=(Reference);
    move-object/from16 v0, v33

    #v0=(Reference);
    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 565
    const-string v48, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 566
    goto :goto_b

    .line 568
    :cond_1d
    #v0=(Integer);v1=(PosByte);v48=(Integer);
    if-nez v22, :cond_1e

    .line 569
    const/16 v48, 0x107

    #v48=(PosShort);
    move-object/from16 v0, p3

    #v0=(Reference);
    move/from16 v1, v48

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 570
    const/16 v22, 0x1

    .line 572
    :cond_1e
    #v0=(Conflicted);v48=(Integer);
    const/16 v48, 0x108

    #v48=(PosShort);
    move-object/from16 v0, p3

    #v0=(Reference);
    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 573
    const-string v48, "attendeeEmail"

    #v48=(Reference);
    move-object/from16 v0, v33

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, attendeeEmail:Ljava/lang/String;
    #v6=(Reference);
    const-string v48, "attendeeName"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 576
    .local v7, attendeeName:Ljava/lang/String;
    #v7=(Reference);
    if-nez v7, :cond_1f

    .line 577
    move-object v7, v6

    .line 579
    :cond_1f
    const/16 v48, 0x10a

    #v48=(PosShort);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    invoke-virtual {v0, v1, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 580
    const/16 v48, 0x109

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    #v48=(DoubleLo);v49=(DoubleHi);
    const-wide/high16 v50, 0x4028

    cmpl-double v48, v48, v50

    #v48=(Byte);
    if-ltz v48, :cond_20

    .line 582
    const/16 v48, 0x12a

    #v48=(PosShort);
    const-string v49, "1"

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 584
    :cond_20
    #v2=(Conflicted);v48=(Short);v49=(Conflicted);
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_b

    .line 588
    .end local v6           #attendeeEmail:Ljava/lang/String;
    .end local v7           #attendeeName:Ljava/lang/String;
    .end local v31           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v32           #ncvUri:Landroid/net/Uri;
    .end local v33           #ncvValues:Landroid/content/ContentValues;
    .end local v40           #relationship:Ljava/lang/Integer;
    :cond_21
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);v40=(Conflicted);v48=(Boolean);
    if-eqz v22, :cond_22

    .line 589
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 593
    :cond_22
    const-string v48, "availability"

    #v48=(Reference);
    move-object/from16 v0, v18

    #v0=(Reference);
    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 594
    .local v8, availability:I
    #v8=(Integer);
    invoke-static {v8}, Lcom/android/exchange/utility/CalendarUtilities;->busyStatusFromAvailability(I)I

    move-result v9

    .line 595
    .local v9, busyStatus:I
    #v9=(Integer);
    const/16 v48, 0x10d

    #v48=(PosShort);
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 599
    if-nez v34, :cond_23

    const-string v48, "organizer"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_23

    .line 600
    const-string v48, "organizer"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 602
    :cond_23
    #v1=(Conflicted);v48=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v48, v0

    #v48=(Reference);
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    #v48=(Boolean);
    if-eqz v48, :cond_28

    .line 603
    const/16 v49, 0x118

    #v49=(PosShort);
    if-eqz v22, :cond_27

    const-string v48, "1"

    :goto_c
    #v48=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v49

    #v1=(PosShort);
    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 609
    :goto_d
    #v48=(Conflicted);v49=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    #v48=(DoubleLo);v49=(DoubleHi);
    const-wide/high16 v50, 0x4028

    cmpl-double v48, v48, v50

    #v48=(Byte);
    if-gez v48, :cond_24

    if-nez v25, :cond_25

    :cond_24
    if-eqz v35, :cond_25

    .line 611
    const/16 v48, 0x11a

    #v48=(PosShort);
    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 616
    :cond_25
    #v48=(Short);
    const-string v48, "accessLevel"

    #v48=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 617
    .local v47, visibility:Ljava/lang/Integer;
    #v47=(Reference);
    if-eqz v47, :cond_29

    .line 618
    const/16 v48, 0x125

    #v48=(PosShort);
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v49

    #v49=(Integer);
    invoke-static/range {v49 .. v49}, Lcom/android/exchange/service/EasCalendarSyncHandler;->decodeVisibility(I)Ljava/lang/String;

    move-result-object v49

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 624
    .end local v8           #availability:I
    .end local v9           #busyStatus:I
    .end local v15           #earliestReminder:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v34           #organizerEmail:Ljava/lang/String;
    .end local v35           #organizerName:Ljava/lang/String;
    .end local v41           #rrule:Ljava/lang/String;
    .end local v45           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v47           #visibility:Ljava/lang/Integer;
    :cond_26
    :goto_e
    #v1=(Conflicted);v8=(Conflicted);v9=(Conflicted);v15=(Conflicted);v23=(Conflicted);v34=(Conflicted);v35=(Conflicted);v41=(Conflicted);v45=(Conflicted);v47=(Conflicted);v48=(Conflicted);v49=(Conflicted);
    return-void

    .line 603
    .restart local v8       #availability:I
    .restart local v9       #busyStatus:I
    .restart local v15       #earliestReminder:I
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v34       #organizerEmail:Ljava/lang/String;
    .restart local v35       #organizerName:Ljava/lang/String;
    .restart local v41       #rrule:Ljava/lang/String;
    .restart local v45       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_27
    #v1=(Reference);v8=(Integer);v9=(Integer);v15=(Integer);v23=(Reference);v34=(Reference);v35=(Reference);v41=(Reference);v45=(Reference);v47=(Uninit);v48=(Boolean);v49=(PosShort);
    const-string v48, "0"

    #v48=(Reference);
    goto :goto_c

    .line 605
    :cond_28
    #v48=(Boolean);v49=(Reference);
    const/16 v48, 0x118

    #v48=(PosShort);
    const-string v49, "3"

    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_d

    .line 621
    .restart local v47       #visibility:Ljava/lang/Integer;
    :cond_29
    #v1=(Reference);v47=(Reference);v48=(Reference);v49=(DoubleHi);
    const/16 v48, 0x125

    #v48=(PosShort);
    const-string v49, "1"

    #v49=(Reference);
    move-object/from16 v0, p3

    move/from16 v1, v48

    #v1=(PosShort);
    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_e

    .line 451
    .end local v8           #availability:I
    .end local v9           #busyStatus:I
    .end local v15           #earliestReminder:I
    .end local v16           #endTime:J
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v28           #loc:Ljava/lang/String;
    .end local v34           #organizerEmail:Ljava/lang/String;
    .end local v35           #organizerName:Ljava/lang/String;
    .end local v41           #rrule:Ljava/lang/String;
    .end local v45           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v47           #visibility:Ljava/lang/Integer;
    .restart local v12       #duration:Lcom/android/calendarcommon2/Duration;
    .restart local v13       #durationMillis:J
    :catch_0
    #v1=(Reference);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v12=(Reference);v13=(LongLo);v14=(LongHi);v15=(Uninit);v16=(Uninit);v17=(Uninit);v22=(Null);v23=(Uninit);v28=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);v38=(Uninit);v39=(Uninit);v40=(Uninit);v41=(Uninit);v42=(Uninit);v45=(Uninit);v47=(Uninit);v48=(Conflicted);v49=(PosShort);v50=(Conflicted);v51=(Conflicted);
    move-exception v48

    #v48=(Reference);
    goto/16 :goto_a
.end method

.method private updateAttendeesAndSendMail(Landroid/content/Entity;Landroid/content/ContentValues;ZJLjava/lang/String;)V
    .locals 28
    .parameter "entity"
    .parameter "entityValues"
    .parameter "selfOrganizer"
    .parameter "eventId"
    .parameter "clientId"

    .prologue
    .line 720
    const/4 v10, 0x0

    .line 721
    .local v10, attendeeString:Ljava/lang/String;
    #v10=(Null);
    const-wide/16 v11, -0x1

    .line 722
    .local v11, attendeeStringId:J
    #v11=(LongLo);v12=(LongHi);
    const/16 v25, 0x0

    .line 723
    .local v25, userAttendeeStatus:Ljava/lang/String;
    #v25=(Null);
    const-wide/16 v26, -0x1

    .line 724
    .local v26, userAttendeeStatusId:J
    #v26=(LongLo);v27=(LongHi);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v10=(Reference);v16=(Reference);v18=(Conflicted);v19=(Conflicted);v22=(Conflicted);v25=(Reference);
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference);
    check-cast v18, Landroid/content/Entity$NamedContentValues;

    .line 725
    .local v18, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v18

    #v0=(Reference);
    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    #v2=(Reference);
    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 726
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 727
    .local v19, ncvValues:Landroid/content/ContentValues;
    #v19=(Reference);
    const-string v2, "name"

    #v2=(Reference);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 728
    .local v22, propertyName:Ljava/lang/String;
    #v22=(Reference);
    const-string v2, "attendees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 729
    const-string v2, "value"

    #v2=(Reference);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 730
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_0

    .line 731
    :cond_1
    #v2=(Boolean);
    const-string v2, "userAttendeeStatus"

    #v2=(Reference);
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 732
    const-string v2, "value"

    #v2=(Reference);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 733
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto :goto_0

    .line 741
    .end local v18           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v19           #ncvValues:Landroid/content/ContentValues;
    .end local v22           #propertyName:Ljava/lang/String;
    :cond_2
    #v0=(Conflicted);v2=(Boolean);v3=(Conflicted);v18=(Conflicted);v19=(Conflicted);v22=(Conflicted);
    if-eqz p3, :cond_9

    const-string v2, "dirty"

    #v2=(Reference);
    move-object/from16 v0, p2

    #v0=(Reference);
    invoke-static {v0, v2}, Lcom/android/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-ne v2, v3, :cond_9

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v2=(Reference);
    const/16 v5, 0x10

    #v5=(PosByte);
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v7=(Reference);
    move-wide/from16 v3, p4

    #v3=(LongLo);v4=(LongHi);
    move-object/from16 v6, p6

    #v6=(Reference);
    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 745
    .local v17, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v17=(Reference);
    if-eqz v17, :cond_3

    .line 746
    const-string v2, "Exchange"

    const-string v3, "Queueing invitation to %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_3
    #v3=(Conflicted);v4=(Conflicted);v6=(Reference);
    new-instance v21, Ljava/util/ArrayList;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v21, originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v21=(Reference);
    if-eqz v10, :cond_4

    .line 752
    new-instance v23, Ljava/util/StringTokenizer;

    #v23=(UninitRef);
    const-string v2, "\\"

    move-object/from16 v0, v23

    #v0=(UninitRef);
    invoke-direct {v0, v10, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .local v23, st:Ljava/util/StringTokenizer;
    :goto_1
    #v0=(Reference);v23=(Reference);
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 755
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 758
    .end local v23           #st:Ljava/util/StringTokenizer;
    :cond_4
    #v2=(Conflicted);v23=(Conflicted);
    new-instance v20, Ljava/lang/StringBuilder;

    #v20=(UninitRef);
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .local v20, newTokenizedAttendees:Ljava/lang/StringBuilder;
    #v20=(Reference);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    #v2=(Conflicted);v9=(Conflicted);
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference);
    check-cast v18, Landroid/content/Entity$NamedContentValues;

    .line 762
    .restart local v18       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    #v2=(Reference);
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 763
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v2=(Reference);
    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 765
    .local v9, attendeeEmail:Ljava/lang/String;
    #v9=(Reference);
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 766
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v2, "\\"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 773
    .end local v9           #attendeeEmail:Ljava/lang/String;
    .end local v18           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_6
    #v2=(Boolean);v3=(Conflicted);v9=(Conflicted);v18=(Conflicted);
    new-instance v15, Landroid/content/ContentValues;

    #v15=(UninitRef);
    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v15, cv:Landroid/content/ContentValues;
    #v15=(Reference);
    const-string v2, "value"

    #v2=(Reference);
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    if-eqz v10, :cond_8

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v2, v3, v15, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 786
    :goto_3
    #v4=(Conflicted);v6=(Reference);
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_4
    #v3=(Conflicted);v8=(Conflicted);v13=(Conflicted);
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Ljava/lang/String;

    .line 788
    .local v8, removedAttendee:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v2=(Reference);
    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v3, p4

    #v3=(LongLo);v4=(LongHi);
    move-object/from16 v6, p6

    invoke-static/range {v2 .. v8}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    .line 791
    .local v13, cancelMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v13=(Reference);
    if-eqz v13, :cond_7

    .line 793
    const-string v2, "Exchange"

    const-string v3, "Queueing cancellation to removed attendee %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    iget-object v7, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 780
    .end local v8           #removedAttendee:Ljava/lang/String;
    .end local v13           #cancelMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_8
    #v4=(Conflicted);v6=(Reference);v8=(Uninit);v13=(Uninit);
    const-string v2, "name"

    const-string v3, "attendees"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v2, "event_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 797
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v17           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v20           #newTokenizedAttendees:Ljava/lang/StringBuilder;
    .end local v21           #originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v15=(Uninit);v17=(Uninit);v20=(Uninit);v21=(Uninit);v23=(Uninit);
    if-nez p3, :cond_b

    .line 801
    const-string v2, "selfAttendeeStatus"

    #v2=(Reference);
    move-object/from16 v0, p2

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 802
    .local v14, currentStatus:I
    #v14=(Integer);
    const/16 v24, 0x0

    .line 803
    .local v24, syncStatus:I
    #v24=(Null);
    if-eqz v25, :cond_a

    .line 805
    :try_start_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    .line 810
    :cond_a
    :goto_5
    #v24=(Integer);
    move/from16 v0, v24

    #v0=(Integer);
    if-eq v14, v0, :cond_b

    if-eqz v14, :cond_b

    .line 814
    packed-switch v14, :pswitch_data_0

    .line 825
    :pswitch_0
    const/4 v5, 0x0

    .line 829
    .local v5, messageFlag:I
    :goto_6
    #v5=(PosShort);
    if-eqz v5, :cond_b

    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v26, v2

    #v2=(Byte);
    if-ltz v2, :cond_b

    .line 831
    new-instance v15, Landroid/content/ContentValues;

    #v15=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 832
    .restart local v15       #cv:Landroid/content/ContentValues;
    #v15=(Reference);
    const-string v2, "value"

    #v2=(Reference);
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v3}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v2, v3, v15, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v7=(Reference);
    move-wide/from16 v3, p4

    #v3=(LongLo);v4=(LongHi);
    move-object/from16 v6, p6

    #v6=(Reference);
    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 839
    .restart local v17       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v17=(Reference);
    if-eqz v17, :cond_b

    .line 840
    const-string v2, "Exchange"

    const-string v3, "Queueing invitation reply to %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v5           #messageFlag:I
    .end local v14           #currentStatus:I
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v17           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v24           #syncStatus:I
    :cond_b
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v20=(Conflicted);v21=(Conflicted);v23=(Conflicted);v24=(Conflicted);
    return-void

    .line 816
    .restart local v14       #currentStatus:I
    .restart local v24       #syncStatus:I
    :pswitch_1
    #v0=(Integer);v1=(Uninit);v2=(Reference);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v13=(Uninit);v14=(Integer);v15=(Uninit);v17=(Uninit);v20=(Uninit);v21=(Uninit);v23=(Uninit);v24=(Integer);
    const/16 v5, 0x40

    .line 817
    .restart local v5       #messageFlag:I
    #v5=(PosByte);
    goto :goto_6

    .line 819
    .end local v5           #messageFlag:I
    :pswitch_2
    #v5=(Uninit);
    const/16 v5, 0x80

    .line 820
    .restart local v5       #messageFlag:I
    #v5=(PosShort);
    goto :goto_6

    .line 822
    .end local v5           #messageFlag:I
    :pswitch_3
    #v5=(Uninit);
    const/16 v5, 0x100

    .line 823
    .restart local v5       #messageFlag:I
    #v5=(PosShort);
    goto :goto_6

    .line 806
    .end local v5           #messageFlag:I
    :catch_0
    #v0=(Reference);v5=(Uninit);v24=(Null);
    move-exception v2

    goto :goto_5

    .line 814
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);v22=(Unknown);v23=(Unknown);v24=(Unknown);v25=(Unknown);v26=(Unknown);v27=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);p6=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "emailAddress"

    .prologue
    .line 1024
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1, p1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "account_name="

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050036

    #v3=(Integer);
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1028
    return-void
.end method


# virtual methods
.method protected cleanup(I)V
    .locals 8
    .parameter "syncResult"

    .prologue
    const/4 v7, 0x0

    .line 986
    #v7=(Null);
    const/4 v5, -0x1

    #v5=(Byte);
    if-eq p1, v5, :cond_2

    .line 988
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 989
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v5, 0x2

    #v5=(PosByte);
    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 990
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v5, "dirty"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    const-string v5, "sync_data8"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 993
    .local v1, eventId:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v5, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 998
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #eventId:J
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Boolean);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 999
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1000
    .restart local v1       #eventId:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v5, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v6=(Reference);
    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1005
    .end local v1           #eventId:J
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Boolean);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    #v3=(Reference);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1006
    .local v4, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v5, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    invoke-virtual {p0, v5, v4}, Lcom/android/exchange/service/EasCalendarSyncHandler;->sendMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_2

    .line 1010
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    #v3=(Conflicted);v4=(Conflicted);v5=(Byte);
    const/4 v5, 0x1

    #v5=(One);
    if-eq p1, v5, :cond_3

    .line 1011
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1012
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1013
    iget-object v5, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1015
    :cond_3
    #v5=(Conflicted);
    return-void
.end method

.method protected getFolderClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string v0, "Calendar"

    #v0=(Reference);
    return-object v0
.end method

.method protected getParser(Ljava/io/InputStream;)Lcom/android/exchange/adapter/AbstractSyncParser;
    .locals 9
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncParser;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    iget-object v4, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mAccountManagerAccount:Landroid/accounts/Account;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mCalendarId:J

    #v7=(LongLo);v8=(LongHi);
    move-object v3, p1

    #v3=(Reference);
    invoke-direct/range {v0 .. v8}, Lcom/android/exchange/adapter/CalendarSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;J)V

    #v0=(Reference);
    return-object v0
.end method

.method protected getTrafficFlag()I
    .locals 1

    .prologue
    .line 187
    const/high16 v0, 0x8

    #v0=(Integer);
    return v0
.end method

.method protected setInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;)V
    .locals 0
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method protected setNonInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;I)V
    .locals 3
    .parameter "s"
    .parameter "numWindows"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x200

    .line 229
    #v1=(PosShort);
    mul-int/lit8 v0, p2, 0xa

    .line 230
    .local v0, windowSize:I
    #v0=(Integer);
    const/16 v2, 0x20a

    #v2=(PosShort);
    if-le v0, v2, :cond_0

    .line 231
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Max window size reached and still no data"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 233
    :cond_0
    #v1=(PosShort);v2=(PosShort);
    const-string v2, "4"

    #v2=(Reference);
    if-ge v0, v1, :cond_1

    .end local v0           #windowSize:I
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/exchange/service/EasCalendarSyncHandler;->setPimSyncOptions(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;I)V

    .line 235
    return-void

    .restart local v0       #windowSize:I
    :cond_1
    move v0, v1

    .line 233
    #v0=(PosShort);
    goto :goto_0
.end method

.method protected setUpsyncCommands(Lcom/android/exchange/adapter/Serializer;)V
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 957
    #v2=(Null);
    iget-wide v0, p0, Lcom/android/exchange/service/EasCalendarSyncHandler;->mCalendarId:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 958
    .local v7, calendarIdString:Ljava/lang/String;
    #v7=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    new-array v4, v0, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    aput-object v7, v4, v0

    .line 960
    .local v4, calendarIdArgument:[Ljava/lang/String;
    invoke-direct {p0, v7, v4}, Lcom/android/exchange/service/EasCalendarSyncHandler;->markParentsOfDirtyEvents(Ljava/lang/String;[Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-direct {p0, v1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "(dirty=1 OR sync_data8= 1) AND original_id ISNULL AND calendar_id=?"

    #v3=(Reference);
    move-object v5, v2

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v8

    .line 968
    .local v8, eventIterator:Landroid/content/EntityIterator;
    #v8=(Reference);
    const/4 v9, 0x1

    .line 969
    .local v9, first:Z
    :cond_0
    :goto_0
    :try_start_0
    #v6=(Conflicted);v9=(Boolean);
    invoke-interface {v8}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 970
    invoke-interface {v8}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/content/Entity;

    invoke-direct {p0, p1, v0, v7, v9}, Lcom/android/exchange/service/EasCalendarSyncHandler;->handleEntity(Lcom/android/exchange/adapter/Serializer;Landroid/content/Entity;Ljava/lang/String;Z)Z

    move-result v6

    .line 972
    .local v6, addedCommand:Z
    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 973
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_0

    .line 976
    .end local v6           #addedCommand:Z
    :cond_1
    #v0=(Boolean);v6=(Conflicted);v9=(Boolean);
    if-nez v9, :cond_2

    .line 977
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    :cond_2
    invoke-interface {v8}, Landroid/content/EntityIterator;->close()V

    .line 982
    return-void

    .line 980
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v8}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method
