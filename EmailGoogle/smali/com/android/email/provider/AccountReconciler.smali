.class public Lcom/android/email/provider/AccountReconciler;
.super Ljava/lang/Object;
.source "AccountReconciler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private static getAllAmAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 51
    .local v0, am:Landroid/accounts/AccountManager;
    #v0=(Reference);
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 53
    .local v1, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Landroid/accounts/Account;>;"
    #v1=(Reference);
    const v2, 0x7f0a0250

    #v2=(Integer);
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 55
    const v2, 0x7f0a024e

    #v2=(Integer);
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 57
    const v2, 0x7f0a024d

    #v2=(Integer);
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 59
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method private static getAllEmailProviderAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 68
    #v3=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 70
    .local v8, c:Landroid/database/Cursor;
    #v8=(Reference);
    if-nez v8, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 84
    :goto_0
    #v6=(Conflicted);v7=(Conflicted);
    return-object v0

    .line 74
    :cond_0
    #v6=(Uninit);v7=(Uninit);
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 76
    .local v7, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/emailcommon/provider/Account;>;"
    :goto_1
    :try_start_0
    #v0=(Conflicted);v6=(Conflicted);v7=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 77
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 78
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    #v6=(Reference);
    invoke-virtual {v6, v8}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 79
    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 82
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    :catchall_0
    #v0=(Conflicted);v6=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    #v0=(Boolean);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private static hasAmAccount(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "name"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/accounts/Account;

    .line 115
    .local v0, account:Landroid/accounts/Account;
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 116
    const/4 v2, 0x1

    .line 119
    .end local v0           #account:Landroid/accounts/Account;
    :goto_0
    #v0=(Conflicted);
    return v2

    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method private static hasEpAccount(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 130
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x1

    .line 134
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :goto_0
    #v0=(Conflicted);
    return v2

    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public static reconcileAccounts(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/email/provider/AccountReconciler;->getAllAmAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, amAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    #v0=(Reference);
    invoke-static {p0}, Lcom/android/email/provider/AccountReconciler;->getAllEmailProviderAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, providerAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {p0, v1, v0, v2}, Lcom/android/email/provider/AccountReconciler;->reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Z

    .line 104
    return-void
.end method

.method private static reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 17
    .parameter "context"
    .parameter
    .parameter
    .parameter "performReconciliation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    .local p2, accountManagerAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    const/4 v9, 0x0

    .line 148
    .local v9, needsReconciling:Z
    #v9=(Null);
    const/4 v1, 0x0

    .line 149
    .local v1, accountDeleted:Z
    #v1=(Null);
    const/4 v7, 0x0

    .line 151
    .local v7, exchangeAccountDeleted:Z
    #v7=(Null);
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v13=(Reference);
    const-string v14, "reconcileAccountsInternal"

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v4=(Conflicted);v7=(Boolean);v8=(Reference);v9=(Boolean);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Lcom/android/emailcommon/provider/Account;

    .line 156
    .local v10, providerAccount:Lcom/android/emailcommon/provider/Account;
    iget-object v11, v10, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 157
    .local v11, providerAccountName:Ljava/lang/String;
    #v11=(Reference);
    iget-wide v13, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v13=(LongLo);v14=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-static {v0, v13, v14}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfoForAccount(Landroid/content/Context;J)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v13

    #v13=(Reference);
    iget-object v12, v13, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    .line 160
    .local v12, providerAccountType:Ljava/lang/String;
    #v12=(Reference);
    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Lcom/android/email/provider/AccountReconciler;->hasAmAccount(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_0

    .line 161
    iget v13, v10, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v13=(Integer);
    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_1

    .line 162
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v13=(Reference);
    const-string v14, "Account reconciler noticed incomplete account; ignoring"

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 167
    :cond_1
    #v13=(Integer);v14=(LongHi);
    const/4 v9, 0x1

    .line 168
    #v9=(One);
    if-eqz p3, :cond_0

    .line 170
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v13=(Reference);
    new-instance v14, Ljava/lang/StringBuilder;

    #v14=(UninitRef);
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #v14=(Reference);
    const-string v15, "Account deleted in AccountManager; deleting from provider: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    #v15=(Null);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 175
    .local v4, auth:Lcom/android/emailcommon/provider/HostAuth;
    #v4=(Reference);
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    #v14=(UninitRef);
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #v14=(Reference);
    const-string v15, "deleted account with hostAuth "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    #v15=(Null);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    if-eqz v4, :cond_2

    iget-object v13, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const v14, 0x7f0a0258

    #v14=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_2

    .line 178
    const/4 v7, 0x1

    .line 181
    :cond_2
    #v13=(Conflicted);
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/email/NotificationController;->cancelNotifications(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    #v13=(Reference);
    const-string v14, "uiaccount"

    iget-wide v15, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v15=(LongLo);v16=(LongHi);
    invoke-static/range {v14 .. v16}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    #v15=(Null);
    const/16 v16, 0x0

    #v16=(Null);
    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x1

    #v1=(One);
    goto/16 :goto_0

    .line 193
    .end local v4           #auth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v10           #providerAccount:Lcom/android/emailcommon/provider/Account;
    .end local v11           #providerAccountName:Ljava/lang/String;
    .end local v12           #providerAccountType:Ljava/lang/String;
    :cond_3
    #v0=(Conflicted);v1=(Boolean);v4=(Conflicted);v9=(Boolean);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Boolean);v14=(Conflicted);v15=(Reference);v16=(Conflicted);
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v13=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/accounts/Account;

    .line 194
    .local v2, accountManagerAccount:Landroid/accounts/Account;
    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 195
    .local v3, accountManagerAccountName:Ljava/lang/String;
    #v3=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-static {v0, v3}, Lcom/android/email/provider/AccountReconciler;->hasEpAccount(Ljava/util/List;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 197
    const/4 v9, 0x1

    .line 199
    #v9=(One);
    if-eqz p3, :cond_4

    .line 200
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v13=(Reference);
    new-instance v14, Ljava/lang/StringBuilder;

    #v14=(UninitRef);
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #v14=(Reference);
    const-string v15, "Account deleted from provider; deleting from AccountManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    #v15=(Null);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    const/4 v14, 0x0

    #v14=(Null);
    const/4 v15, 0x0

    #v15=(Null);
    invoke-virtual {v13, v2, v14, v15}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v5

    .line 209
    .local v5, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    #v5=(Reference);
    invoke-interface {v5}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 210
    :catch_0
    move-exception v6

    .line 211
    .local v6, e:Landroid/accounts/OperationCanceledException;
    #v6=(Reference);
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 212
    .end local v6           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    #v6=(Conflicted);v14=(Null);v15=(Null);
    move-exception v6

    .line 213
    .local v6, e:Landroid/accounts/AuthenticatorException;
    #v6=(Reference);
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 214
    .end local v6           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    #v6=(Conflicted);v14=(Null);v15=(Null);
    move-exception v6

    .line 215
    .local v6, e:Ljava/io/IOException;
    #v6=(Reference);
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 227
    .end local v2           #accountManagerAccount:Landroid/accounts/Account;
    .end local v3           #accountManagerAccountName:Ljava/lang/String;
    .end local v5           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    .end local v6           #e:Ljava/io/IOException;
    :cond_5
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Boolean);v13=(Boolean);v14=(Conflicted);
    if-eqz v1, :cond_7

    .line 228
    sget-object v13, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v13=(Reference);
    const-string v14, "Restarting because account deleted"

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    if-eqz v7, :cond_6

    .line 230
    const v13, 0x7f0a0258

    #v13=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    #v13=(Reference);
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/email/service/EmailServiceUtils;->killService(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    :cond_6
    #v0=(Conflicted);
    const/4 v13, -0x1

    #v13=(Byte);
    invoke-static {v13}, Ljava/lang/System;->exit(I)V

    .line 235
    :cond_7
    #v14=(Conflicted);
    return v9
.end method
