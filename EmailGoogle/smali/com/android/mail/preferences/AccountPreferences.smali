.class public Lcom/android/mail/preferences/AccountPreferences;
.super Lcom/android/mail/preferences/VersionedPrefs;
.source "AccountPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/preferences/AccountPreferences$PreferenceKeys;
    }
.end annotation


# static fields
.field private static mInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/preferences/AccountPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/preferences/AccountPreferences;->mInstances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 64
    invoke-static {p2}, Lcom/android/mail/preferences/AccountPreferences;->buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/preferences/VersionedPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    #p0=(Reference);
    return-void
.end method

.method private static buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "Account-"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/preferences/AccountPreferences;
    .locals 3
    .parameter "context"
    .parameter "accountEmail"

    .prologue
    .line 72
    const-class v2, Lcom/android/mail/preferences/AccountPreferences;

    #v2=(Reference);
    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mail/preferences/AccountPreferences;->mInstances:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/preferences/AccountPreferences;

    .line 73
    .local v0, pref:Lcom/android/mail/preferences/AccountPreferences;
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/mail/preferences/AccountPreferences;

    .end local v0           #pref:Lcom/android/mail/preferences/AccountPreferences;
    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/android/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .restart local v0       #pref:Lcom/android/mail/preferences/AccountPreferences;
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/preferences/AccountPreferences;->mInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit v2

    return-object v0

    .line 72
    .end local v0           #pref:Lcom/android/mail/preferences/AccountPreferences;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notifications-enabled"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected canBackup(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 90
    sget-object v0, Lcom/android/mail/preferences/AccountPreferences$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public clearDefaultInboxNotificationsEnabled()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "inbox-notifications-enabled"

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void
.end method

.method public getDefaultInboxNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "inbox-notifications-enabled"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getLastSeenOutboxCount()I
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "last-seen-outbox-count"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getNumOfDismissesForAccountSyncOff()I
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "num-of-dismisses-account-sync-off"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public incNumOfDismissesForAccountSyncOff()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "num-of-dismisses-account-sync-off"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, value:I
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num-of-dismisses-account-sync-off"

    add-int/lit8 v3, v0, 0x1

    #v3=(Integer);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method public isDefaultInboxNotificationsEnabledSet()Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "inbox-notifications-enabled"

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected performUpgrade(II)V
    .locals 2
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 82
    if-le p1, p2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "You appear to have downgraded your app. Please clear app data."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 86
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    return-void
.end method

.method public resetNumOfDismissesForAccountSyncOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    #v3=(Null);
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "num-of-dismisses-account-sync-off"

    #v2=(Reference);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, value:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num-of-dismisses-account-sync-off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    :cond_0
    return-void
.end method

.method public setDefaultInboxNotificationsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "inbox-notifications-enabled"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return-void
.end method

.method public setLastSeenOutboxCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "last-seen-outbox-count"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method
