.class public Lcom/android/email/provider/WidgetProvider;
.super Lcom/android/mail/widget/BaseWidgetProvider;
.source "WidgetProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/email/provider/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mail/widget/BaseWidgetProvider;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private static getAccount(Landroid/content/Context;J)Lcom/android/mail/providers/Account;
    .locals 8
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 143
    #v3=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    const-string v1, "uiaccount"

    #v1=(Reference);
    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, ac:Landroid/database/Cursor;
    #v6=(Reference);
    invoke-static {v6}, Lcom/android/email/provider/WidgetProvider;->getPopulatedAccountObject(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v7

    .line 149
    .local v7, uiAccount:Lcom/android/mail/providers/Account;
    #v7=(Reference);
    return-object v7
.end method

.method private static getPopulatedAccountObject(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;
    .locals 4
    .parameter "accountCursor"

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    sget-object v1, Lcom/android/email/provider/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Null account cursor"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    const/4 v0, 0x0

    .line 167
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 159
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v0, 0x0

    .line 161
    .local v0, uiAccount:Lcom/android/mail/providers/Account;
    :try_start_0
    #v0=(Null);
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 162
    new-instance v0, Lcom/android/mail/providers/Account;

    .end local v0           #uiAccount:Lcom/android/mail/providers/Account;
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .restart local v0       #uiAccount:Lcom/android/mail/providers/Account;
    :cond_1
    #v0=(Reference);
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0           #uiAccount:Lcom/android/mail/providers/Account;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static loadAccountIdPref(Landroid/content/Context;I)J
    .locals 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 176
    const-string v3, "com.android.email.widget.WidgetManager"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 177
    .local v2, prefs:Landroid/content/SharedPreferences;
    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "accountId_"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    .local v0, accountId:J
    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static loadMailboxIdPref(Landroid/content/Context;I)J
    .locals 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 187
    const-string v3, "com.android.email.widget.WidgetManager"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 188
    .local v2, prefs:Landroid/content/SharedPreferences;
    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "mailboxId_"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 189
    .local v0, mailboxId:J
    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method private static migrateLegacyWidgetAccountId(J)J
    .locals 2
    .parameter "accountId"

    .prologue
    .line 123
    const-wide/high16 v0, 0x1000

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, p0, v0

    #v0=(Byte);
    if-nez v0, :cond_0

    .line 124
    const-wide/32 p0, 0x10000000

    .line 126
    .end local p0
    :cond_0
    return-wide p0
.end method

.method private static migrateLegacyWidgetMailboxId(JJ)J
    .locals 2
    .parameter "mailboxId"
    .parameter "accountId"

    .prologue
    .line 134
    const-wide/16 v0, -0x2

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, p0, v0

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p2, p3, v0}, Lcom/android/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide p0

    .line 139
    .end local p0
    :cond_0
    :goto_0
    #v0=(Byte);
    return-wide p0

    .line 136
    .restart local p0
    :cond_1
    const-wide/16 v0, -0x3

    #v0=(LongLo);
    cmp-long v0, p0, v0

    #v0=(Byte);
    if-nez v0, :cond_0

    .line 137
    const/16 v0, 0xa

    #v0=(PosByte);
    invoke-static {p2, p3, v0}, Lcom/android/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method protected getAccountObject(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;
    .locals 7
    .parameter "context"
    .parameter "accountUri"

    .prologue
    const/4 v3, 0x0

    .line 62
    #v3=(Null);
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    sget-object v2, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    .local v6, accountCursor:Landroid/database/Cursor;
    #v6=(Reference);
    invoke-static {v6}, Lcom/android/email/provider/WidgetProvider;->getPopulatedAccountObject(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v1

    return-object v1
.end method

.method protected isAccountValid(Landroid/content/Context;Lcom/android/mail/providers/Account;)Z
    .locals 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v3, 0x0

    .line 72
    #v3=(Null);
    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    iget-object v1, p2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    .local v6, accountCursor:Landroid/database/Cursor;
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 78
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 80
    :goto_0
    #v1=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #accountCursor:Landroid/database/Cursor;
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #accountCursor:Landroid/database/Cursor;
    :cond_0
    #v0=(Reference);v1=(Integer);v2=(Reference);v4=(Null);v5=(Null);v6=(Reference);
    move v1, v7

    .line 78
    #v1=(Null);
    goto :goto_0

    .line 80
    :catchall_0
    #v1=(Reference);
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #accountCursor:Landroid/database/Cursor;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move v1, v7

    .line 84
    #v1=(Null);
    goto :goto_1
.end method

.method protected migrateLegacyWidgetInformation(Landroid/content/Context;I)V
    .locals 17
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 89
    const-string v2, "com.android.email.widget.WidgetManager"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 90
    .local v15, prefs:Landroid/content/SharedPreferences;
    #v15=(Reference);
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 92
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    #v12=(Reference);
    invoke-static/range {p1 .. p2}, Lcom/android/email/provider/WidgetProvider;->loadAccountIdPref(Landroid/content/Context;I)J

    move-result-wide v10

    .line 93
    .local v10, accountId:J
    #v10=(LongLo);v11=(LongHi);
    invoke-static/range {p1 .. p2}, Lcom/android/email/provider/WidgetProvider;->loadMailboxIdPref(Landroid/content/Context;I)J

    move-result-wide v13

    .line 95
    .local v13, mailboxId:J
    #v13=(LongLo);v14=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v10, v2

    #v2=(Byte);
    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    #v2=(LongLo);
    cmp-long v2, v13, v2

    #v2=(Byte);
    if-nez v2, :cond_1

    .line 96
    :cond_0
    sget-object v2, Lcom/android/email/provider/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Couldn\'t load account or mailbox.  accountId: %d mailboxId: %d widgetId %d"

    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v4, v6

    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v16=(Conflicted);
    return-void

    .line 101
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Byte);v3=(LongHi);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v16=(Uninit);
    invoke-static {v10, v11}, Lcom/android/email/provider/WidgetProvider;->migrateLegacyWidgetAccountId(J)J

    move-result-wide v10

    .line 102
    invoke-static {v13, v14, v10, v11}, Lcom/android/email/provider/WidgetProvider;->migrateLegacyWidgetMailboxId(JJ)J

    move-result-wide v13

    .line 105
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/email/provider/WidgetProvider;->getAccount(Landroid/content/Context;J)Lcom/android/mail/providers/Account;

    move-result-object v5

    .line 106
    .local v5, uiAccount:Lcom/android/mail/providers/Account;
    #v5=(Reference);
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/email/provider/EmailProvider;->getFolder(Landroid/content/Context;J)Lcom/android/mail/providers/Folder;

    move-result-object v16

    .line 108
    .local v16, uiFolder:Lcom/android/mail/providers/Folder;
    #v16=(Reference);
    if-eqz v5, :cond_2

    if-eqz v16, :cond_2

    .line 109
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    #v1=(Integer);
    invoke-static {v0, v1, v5, v2}, Lcom/android/mail/widget/WidgetService;->saveWidgetInformation(Landroid/content/Context;ILcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/mail/providers/Folder;->type:I

    #v6=(Integer);
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v7, v2, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    #v7=(Reference);
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    #v8=(Reference);
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v9=(Reference);
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    #v3=(Reference);
    move/from16 v4, p2

    #v4=(Integer);
    invoke-virtual/range {v2 .. v9}, Lcom/android/email/provider/WidgetProvider;->updateWidgetInternal(Landroid/content/Context;ILcom/android/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "accountId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    #v0=(Integer);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "mailboxId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/mail/widget/BaseWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 49
    const-string v6, "com.android.email.widget.WidgetManager"

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 50
    .local v4, prefs:Landroid/content/SharedPreferences;
    #v4=(Reference);
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    #v1=(Reference);
    move-object v0, p2

    .local v0, arr$:[I
    #v0=(Reference);
    array-length v3, v0

    .local v3, len$:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    #v2=(Integer);v5=(Conflicted);v7=(Reference);
    if-ge v2, v3, :cond_0

    aget v5, v0, v2

    .line 53
    .local v5, widgetId:I
    #v5=(Integer);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "accountId_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "mailboxId_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v5           #widgetId:I
    :cond_0
    #v5=(Conflicted);
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    return-void
.end method
