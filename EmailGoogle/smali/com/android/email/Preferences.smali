.class public Lcom/android/email/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static sPreferences:Lcom/android/email/Preferences;


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    #p0=(Reference);
    const-string v0, "AndroidMail.Main"

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 91
    return-void
.end method

.method public static clearLegacyBackupPreference(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountUuids"

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method public static getLegacyBackupPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "accountUuids"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    const-class v1, Lcom/android/email/Preferences;

    #v1=(Reference);
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/email/Preferences;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email/Preferences;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    .line 103
    :cond_0
    sget-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAutoAdvanceDirection()I
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "autoAdvance"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getConfirmDelete()Z
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "confirm_delete"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getConfirmSend()Z
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "confirm_send"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getConversationListIcon()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "conversation_list_icons"

    #v1=(Reference);
    const-string v2, "senderimage"

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDeviceUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v1=(Reference);
    const-string v2, "deviceUID"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, result:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-object v0

    .line 172
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit p0

    throw v1
.end method

.method public getEnableDebugLogging()Z
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "enableDebugLogging"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getEnableExchangeFileLogging()Z
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "enableExchangeFileLogging"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getEnableExchangeLogging()Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "enableExchangeLogging"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getEnableStrictMode()Z
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "enableStrictMode"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getInhibitGraphicsAcceleration()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "inhibitGraphicsAcceleration"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getLastUsedAccountId()J
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "lastAccountUsed"

    #v1=(Reference);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getOneTimeInitializationProgress()I
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "oneTimeInitializationProgress"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getReplyAll()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "reply_all"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getSwipeDelete()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "swipe_delete"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getTextZoom()I
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "textZoom"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getWhitelistedSenderAddresses()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v1=(Reference);
    const-string v2, "trustedSenders"

    #v2=(Reference);
    const-string v3, ""

    #v3=(Reference);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/Preferences;->parseEmailSet(Ljava/lang/String;)Ljava/util/HashSet;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 266
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Lorg/json/JSONException;
    #v0=(Reference);
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public hasReplyAll()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "reply_all"

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public hasSwipeDelete()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "swipe_delete"

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method parseEmailSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 5
    .parameter "serialized"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v3, Ljava/util/HashSet;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v3, result:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    #v3=(Reference);
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 273
    new-instance v0, Lorg/json/JSONArray;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, arr:Lorg/json/JSONArray;
    #v0=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    #v1=(Null);
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    #v1=(Integer);v2=(Integer);v4=(Conflicted);
    if-ge v1, v2, :cond_0

    .line 275
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-object v3
.end method

.method public setAutoAdvanceDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoAdvance"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    return-void
.end method

.method public setConfirmDelete(Z)V
    .locals 2
    .parameter "set"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_delete"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method

.method public setConfirmSend(Z)V
    .locals 2
    .parameter "set"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_send"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    return-void
.end method

.method public setEnableDebugLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDebugLogging"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method public setEnableExchangeFileLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeFileLogging"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method

.method public setEnableExchangeLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeLogging"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public setEnableStrictMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableStrictMode"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    return-void
.end method

.method public setInhibitGraphicsAcceleration(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inhibitGraphicsAcceleration"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    return-void
.end method

.method public setLastUsedAccountId(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastAccountUsed"

    #v1=(Reference);
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    return-void
.end method

.method public setOneTimeInitializationProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oneTimeInitializationProgress"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    return-void
.end method

.method public setTextZoom(I)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "textZoom"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    return-void
.end method
