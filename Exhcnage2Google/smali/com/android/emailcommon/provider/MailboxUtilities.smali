.class public Lcom/android/emailcommon/provider/MailboxUtilities;
.super Ljava/lang/Object;
.source "MailboxUtilities.java"


# static fields
.field private static final HIERARCHY_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "_id"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hierarchicalName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/MailboxUtilities;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static checkMailboxConsistency(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 204
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 205
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v4=(Integer);
    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_0

    .line 206
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Account "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has inconsistent mailbox data; fixing up..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v3, values:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v4, "parentKey"

    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, accountSelector:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 213
    .local v2, resolver:Landroid/content/ContentResolver;
    #v2=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static endMailboxChanges(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 190
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 191
    return-void
.end method

.method public static fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "accountSelector"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    #v4=(Null);
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #v1=(Reference);
    throw v1

    .line 136
    :cond_0
    #v1=(Uninit);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "(parentKey isnull OR parentKey=0) AND "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, noParentKeySelection:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, noParentKeyMailboxCursor:Landroid/database/Cursor;
    #v6=(Reference);
    if-nez v6, :cond_1

    .line 162
    :goto_0
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 145
    :cond_1
    :goto_1
    :try_start_0
    #v1=(Conflicted);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 146
    invoke-static {p0, v6, p1}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, parentServerId:Ljava/lang/String;
    #v7=(Reference);
    if-eqz v7, :cond_1

    .line 151
    invoke-static {p0, p1, v7}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 155
    .end local v7           #parentServerId:Ljava/lang/String;
    :catchall_0
    #v1=(Conflicted);v7=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    #v1=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    new-instance v8, Landroid/content/ContentValues;

    #v8=(UninitRef);
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v8, values:Landroid/content/ContentValues;
    #v8=(Reference);
    const-string v1, "parentKey"

    #v1=(Reference);
    const-wide/16 v9, -0x1

    #v9=(LongLo);v10=(LongHi);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "start"

    .prologue
    const/4 v6, 0x0

    .line 165
    #v6=(Null);
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 166
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 173
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 168
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v1, cv:Landroid/content/ContentValues;
    #v1=(Reference);
    const-string v3, "flags"

    #v3=(Reference);
    if-eqz p3, :cond_1

    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v2=(Integer);
    or-int/lit16 v2, v2, 0x200

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_1
    #v2=(Uninit);v4=(Uninit);v5=(Uninit);
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v2=(Integer);
    and-int/lit16 v2, v2, -0x201

    goto :goto_1
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "parentCursor"
    .parameter "accountSelector"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 51
    .local v1, resolver:Landroid/content/ContentResolver;
    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v5, v2, [Ljava/lang/String;

    .line 52
    .local v5, selectionArgs:[Ljava/lang/String;
    #v5=(Reference);
    new-instance v16, Landroid/content/ContentValues;

    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v16, parentValues:Landroid/content/ContentValues;
    #v16=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 55
    .local v12, parentId:J
    #v12=(LongLo);v13=(LongHi);
    const/4 v11, 0x0

    .line 56
    .local v11, parentFlags:I
    #v11=(Null);
    const/4 v2, 0x5

    #v2=(PosByte);
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 57
    .local v15, parentType:I
    #v15=(Integer);
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 59
    .local v14, parentServerId:Ljava/lang/String;
    #v14=(Reference);
    const/16 v2, 0x40

    if-gt v15, v2, :cond_0

    .line 60
    or-int/lit8 v11, v11, 0x48

    .line 63
    :cond_0
    #v11=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    if-eq v15, v2, :cond_1

    const/4 v2, 0x6

    #v2=(PosByte);
    if-eq v15, v2, :cond_1

    const/4 v2, 0x7

    if-eq v15, v2, :cond_1

    if-nez v15, :cond_2

    .line 65
    :cond_1
    or-int/lit8 v11, v11, 0x10

    .line 71
    :cond_2
    if-eqz v14, :cond_5

    .line 72
    const/4 v2, 0x0

    #v2=(Null);
    aput-object v14, v5, v2

    .line 73
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v6, "parentServerId=? AND "

    #v6=(Reference);
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 76
    .local v7, childCursor:Landroid/database/Cursor;
    #v7=(Reference);
    if-nez v7, :cond_3

    .line 100
    .end local v7           #childCursor:Landroid/database/Cursor;
    :goto_0
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 78
    .restart local v7       #childCursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    :try_start_0
    #v6=(Null);v7=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 79
    or-int/lit8 v11, v11, 0x3

    .line 80
    new-instance v10, Landroid/content/ContentValues;

    #v10=(UninitRef);
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v10, childValues:Landroid/content/ContentValues;
    #v10=(Reference);
    const-string v2, "parentKey"

    #v2=(Reference);
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 83
    .local v8, childId:J
    #v8=(LongLo);v9=(LongHi);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 87
    .end local v8           #childId:J
    .end local v10           #childValues:Landroid/content/ContentValues;
    :catchall_0
    #v2=(Conflicted);v3=(Reference);v4=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    #v2=(Boolean);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    .end local v7           #childCursor:Landroid/database/Cursor;
    :goto_2
    #v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    const-string v2, "flags"

    #v2=(Reference);
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_5
    #v2=(PosByte);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v2, "parentKey"

    #v2=(Reference);
    const-wide/16 v3, -0x1

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Mailbox with null serverId: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    #v4=(One);
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "accountSelector"
    .parameter "serverId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "serverId=? AND "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, cursor:Landroid/database/Cursor;
    #v6=(Reference);
    if-nez v6, :cond_0

    .line 122
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 116
    :cond_0
    :try_start_0
    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 117
    invoke-static {p0, v6, p1}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
