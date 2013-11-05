.class public Lcom/android/email/preferences/EmailPreferenceMigrator;
.super Lcom/android/mail/preferences/BasePreferenceMigrator;
.source "EmailPreferenceMigrator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/mail/preferences/BasePreferenceMigrator;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method protected static migrate(Landroid/content/Context;IILjava/util/List;)V
    .locals 27
    .parameter "context"
    .parameter "oldVersion"
    .parameter "newVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Account;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v19

    .line 73
    .local v19, preferences:Lcom/android/email/Preferences;
    #v19=(Reference);
    invoke-static/range {p0 .. p0}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v17

    .line 74
    .local v17, mailPrefs:Lcom/android/mail/preferences/MailPrefs;
    #v17=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    move/from16 v0, p1

    #v0=(Integer);
    if-ge v0, v2, :cond_8

    .line 78
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/Preferences;->hasSwipeDelete()Z

    move-result v14

    .line 79
    .local v14, hasSwipeDelete:Z
    #v14=(Boolean);
    if-eqz v14, :cond_0

    .line 81
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/Preferences;->getSwipeDelete()Z

    move-result v23

    .line 82
    .local v23, swipeDelete:Z
    #v23=(Boolean);
    move-object/from16 v0, v17

    #v0=(Reference);
    move/from16 v1, v23

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Lcom/android/mail/preferences/MailPrefs;->setConversationListSwipeEnabled(Z)V

    .line 87
    .end local v23           #swipeDelete:Z
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v23=(Conflicted);
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/Preferences;->hasReplyAll()Z

    move-result v16

    .line 88
    .local v16, isReplyAllSet:Z
    #v16=(Boolean);
    if-eqz v16, :cond_1

    .line 90
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/Preferences;->getReplyAll()Z

    move-result v20

    .line 91
    .local v20, replyAll:Z
    #v20=(Boolean);
    move-object/from16 v0, v17

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Lcom/android/mail/preferences/MailPrefs;->setDefaultReplyAll(Z)V

    .line 95
    .end local v20           #replyAll:Z
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v20=(Conflicted);
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v15=(Reference);v18=(Conflicted);v21=(Conflicted);v24=(Conflicted);v26=(Conflicted);
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/mail/providers/Account;

    .line 97
    .local v8, account:Lcom/android/mail/providers/Account;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "emailAddress = ?"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    iget-object v0, v8, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v26, v0

    #v26=(Reference);
    aput-object v26, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 102
    .local v10, ecAccountCursor:Landroid/database/Cursor;
    #v10=(Reference);
    new-instance v9, Lcom/android/emailcommon/provider/Account;

    #v9=(UninitRef);
    invoke-direct {v9}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 106
    .local v9, ecAccount:Lcom/android/emailcommon/provider/Account;
    #v9=(Reference);
    if-nez v10, :cond_2

    .line 107
    const-string v2, "EmailPrefMigrator"

    const-string v3, "Null old account cursor for mailbox %s"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "EmailPrefMigrator"

    iget-object v7, v8, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v7=(Reference);
    invoke-static {v6, v7}, Lcom/android/mail/utils/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 113
    :cond_2
    :try_start_0
    #v5=(Reference);v7=(Null);
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {v9, v10}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference);
    iget-object v3, v8, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget-object v3, v3, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v4, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 130
    .local v12, folderCursor:Landroid/database/Cursor;
    #v12=(Reference);
    if-nez v12, :cond_4

    .line 131
    const-string v2, "EmailPrefMigrator"

    const-string v3, "Null folder cursor for mailbox %s"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    const-string v6, "EmailPrefMigrator"

    #v6=(Reference);
    iget-object v7, v8, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v7=(Reference);
    iget-object v7, v7, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mail/utils/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 116
    .end local v12           #folderCursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    #v2=(Boolean);v5=(Reference);v7=(Null);v12=(Conflicted);
    const-string v2, "EmailPrefMigrator"

    #v2=(Reference);
    const-string v3, "Couldn\'t load old account for mailbox %s"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "EmailPrefMigrator"

    iget-object v7, v8, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v7=(Reference);
    invoke-static {v6, v7}, Lcom/android/mail/utils/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Reference);
    move-exception v2

    #v2=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 137
    .restart local v12       #folderCursor:Landroid/database/Cursor;
    :cond_4
    #v4=(Reference);v5=(Null);v6=(Null);v7=(Null);v12=(Reference);
    const/4 v11, 0x0

    .line 139
    .local v11, folder:Lcom/android/mail/providers/Folder;
    :try_start_2
    #v11=(Null);
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 140
    new-instance v11, Lcom/android/mail/providers/Folder;

    .end local v11           #folder:Lcom/android/mail/providers/Folder;
    #v11=(UninitRef);
    invoke-direct {v11, v12}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    .restart local v11       #folder:Lcom/android/mail/providers/Folder;
    :cond_5
    #v11=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 146
    new-instance v13, Lcom/android/mail/preferences/FolderPreferences;

    #v13=(UninitRef);
    invoke-virtual {v8}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v11, v3}, Lcom/android/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    .line 151
    .local v13, folderPreferences:Lcom/android/mail/preferences/FolderPreferences;
    #v13=(Reference);
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v2

    #v2=(Integer);
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    const/16 v18, 0x1

    .line 153
    .local v18, notify:Z
    :goto_1
    #v18=(Boolean);
    move/from16 v0, v18

    #v0=(Boolean);
    invoke-virtual {v13, v0}, Lcom/android/mail/preferences/FolderPreferences;->setNotificationsEnabled(Z)V

    .line 156
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getRingtone()Ljava/lang/String;

    move-result-object v21

    .line 157
    .local v21, ringtoneUri:Ljava/lang/String;
    #v21=(Reference);
    move-object/from16 v0, v21

    #v0=(Reference);
    invoke-virtual {v13, v0}, Lcom/android/mail/preferences/FolderPreferences;->setNotificationRingtoneUri(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    const/16 v24, 0x1

    .line 162
    .local v24, vibrate:Z
    :goto_2
    #v24=(Boolean);
    move/from16 v0, v24

    #v0=(Boolean);
    invoke-virtual {v13, v0}, Lcom/android/mail/preferences/FolderPreferences;->setNotificationVibrateEnabled(Z)V

    .line 164
    invoke-virtual {v13}, Lcom/android/mail/preferences/FolderPreferences;->commit()V

    goto/16 :goto_0

    .line 143
    .end local v11           #folder:Lcom/android/mail/providers/Folder;
    .end local v13           #folderPreferences:Lcom/android/mail/preferences/FolderPreferences;
    .end local v18           #notify:Z
    .end local v21           #ringtoneUri:Ljava/lang/String;
    .end local v24           #vibrate:Z
    :catchall_1
    #v0=(Reference);v2=(Conflicted);v3=(Reference);v11=(Conflicted);v13=(Conflicted);v18=(Conflicted);v21=(Conflicted);v24=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 151
    .restart local v11       #folder:Lcom/android/mail/providers/Folder;
    .restart local v13       #folderPreferences:Lcom/android/mail/preferences/FolderPreferences;
    :cond_6
    #v2=(Integer);v3=(One);v11=(Reference);v13=(Reference);
    const/16 v18, 0x0

    #v18=(Null);
    goto :goto_1

    .line 160
    .restart local v18       #notify:Z
    .restart local v21       #ringtoneUri:Ljava/lang/String;
    :cond_7
    #v18=(Boolean);v21=(Reference);
    const/16 v24, 0x0

    #v24=(Null);
    goto :goto_2

    .line 168
    .end local v8           #account:Lcom/android/mail/providers/Account;
    .end local v9           #ecAccount:Lcom/android/emailcommon/provider/Account;
    .end local v10           #ecAccountCursor:Landroid/database/Cursor;
    .end local v11           #folder:Lcom/android/mail/providers/Folder;
    .end local v12           #folderCursor:Landroid/database/Cursor;
    .end local v13           #folderPreferences:Lcom/android/mail/preferences/FolderPreferences;
    .end local v14           #hasSwipeDelete:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #isReplyAllSet:Z
    .end local v18           #notify:Z
    .end local v21           #ringtoneUri:Ljava/lang/String;
    :cond_8
    #v0=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Conflicted);v21=(Conflicted);v24=(Conflicted);v26=(Conflicted);
    const/4 v2, 0x2

    #v2=(PosByte);
    move/from16 v0, p1

    #v0=(Integer);
    if-ge v0, v2, :cond_9

    .line 170
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/Preferences;->getWhitelistedSenderAddresses()Ljava/util/Set;

    move-result-object v25

    .line 171
    .local v25, whitelistedAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v25=(Reference);
    move-object/from16 v0, v17

    #v0=(Reference);
    move-object/from16 v1, v25

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/preferences/MailPrefs;->setSenderWhitelist(Ljava/util/Set;)V

    .line 174
    .end local v25           #whitelistedAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v25=(Conflicted);
    const/4 v2, 0x3

    move/from16 v0, p1

    #v0=(Integer);
    if-ge v0, v2, :cond_a

    .line 177
    const-string v2, "none"

    #v2=(Reference);
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/Preferences;->getConversationListIcon()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_b

    const/16 v22, 0x1

    .line 179
    .local v22, showSenderImages:Z
    :goto_3
    #v22=(Boolean);
    move-object/from16 v0, v17

    #v0=(Reference);
    move/from16 v1, v22

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Lcom/android/mail/preferences/MailPrefs;->setShowSenderImages(Z)V

    .line 181
    .end local v22           #showSenderImages:Z
    :cond_a
    #v0=(Conflicted);v1=(Conflicted);v2=(PosByte);v3=(Conflicted);v22=(Conflicted);
    return-void

    .line 177
    :cond_b
    #v0=(Integer);v2=(Boolean);v3=(Reference);v22=(Uninit);
    const/16 v22, 0x0

    #v22=(Null);
    goto :goto_3
.end method


# virtual methods
.method protected migrate(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x0

    .line 46
    #v3=(Null);
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v7, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Account;>;"
    #v7=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/uiaccts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .local v6, accountCursor:Landroid/database/Cursor;
    #v6=(Reference);
    if-nez v6, :cond_0

    .line 53
    const-string v0, "EmailPrefMigrator"

    const-string v1, "Null cursor returned from query to %s when migrating accounts from %d to %d"

    const/4 v2, 0x3

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/uiaccts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    :goto_0
    #v0=(Conflicted);
    invoke-static {p1, p2, p3, v7}, Lcom/android/email/preferences/EmailPreferenceMigrator;->migrate(Landroid/content/Context;IILjava/util/List;)V

    .line 68
    return-void

    .line 59
    :cond_0
    :goto_1
    :try_start_0
    #v0=(Reference);v3=(Null);v4=(Null);v5=(Null);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/android/mail/providers/Account;

    #v0=(UninitRef);
    invoke-direct {v0, v6}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    #v0=(Reference);
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 63
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    #v0=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
