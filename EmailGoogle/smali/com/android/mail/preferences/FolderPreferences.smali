.class public Lcom/android/mail/preferences/FolderPreferences;
.super Lcom/android/mail/preferences/VersionedPrefs;
.source "FolderPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/preferences/FolderPreferences$PreferenceKeys;
    }
.end annotation


# instance fields
.field private final mFolder:Lcom/android/mail/providers/Folder;

.field private final mPersistentId:Ljava/lang/String;

.field private final mUseInboxDefaultNotificationSettings:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "accountEmail"
    .parameter "folder"
    .parameter "persistentId"
    .parameter "useInboxDefaultNotificationSettings"

    .prologue
    .line 101
    invoke-static {p2, p4}, Lcom/android/mail/preferences/FolderPreferences;->buildSharedPrefsName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/preferences/VersionedPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    #p0=(Reference);
    iput-object p3, p0, Lcom/android/mail/preferences/FolderPreferences;->mFolder:Lcom/android/mail/providers/Folder;

    .line 103
    iput-object p4, p0, Lcom/android/mail/preferences/FolderPreferences;->mPersistentId:Ljava/lang/String;

    .line 104
    iput-boolean p5, p0, Lcom/android/mail/preferences/FolderPreferences;->mUseInboxDefaultNotificationSettings:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V
    .locals 6
    .parameter "context"
    .parameter "accountEmail"
    .parameter "folder"
    .parameter "useInboxDefaultNotificationSettings"

    .prologue
    .line 79
    iget-object v4, p3, Lcom/android/mail/providers/Folder;->persistentId:Ljava/lang/String;

    #v4=(Reference);
    move-object v0, p0

    #v0=(UninitThis);
    move-object v1, p1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move v5, p4

    #v5=(Boolean);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Ljava/lang/String;Z)V

    .line 81
    #v0=(Reference);p0=(Reference);
    return-void
.end method

.method private static buildSharedPrefsName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "persistentId"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "Folder-"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUseInboxDefaultNotificationSettings()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/mail/preferences/FolderPreferences;->mUseInboxDefaultNotificationSettings:Z

    #v0=(Boolean);
    return v0
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notifications-enabled"

    #v1=(Reference);
    invoke-direct {p0}, Lcom/android/mail/preferences/FolderPreferences;->getUseInboxDefaultNotificationSettings()Z

    move-result v2

    #v2=(Boolean);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected canBackup(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mail/preferences/FolderPreferences;->mPersistentId:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    sget-object v0, Lcom/android/mail/preferences/FolderPreferences$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public getNotificationActions(Lcom/android/mail/providers/Account;)Ljava/util/Set;
    .locals 9
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Account;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v6, p0, Lcom/android/mail/preferences/FolderPreferences;->mFolder:Lcom/android/mail/providers/Folder;

    #v6=(Reference);
    const/16 v7, 0x10

    #v7=(PosByte);
    invoke-virtual {v6, v7}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mail/preferences/FolderPreferences;->mFolder:Lcom/android/mail/providers/Folder;

    #v6=(Reference);
    const/16 v7, 0x4000

    #v7=(PosShort);
    invoke-virtual {v6, v7}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 254
    .local v5, supportsArchiveRemoveLabel:Z
    :goto_0
    #v5=(Boolean);
    const-string v6, "delete"

    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getContext()Landroid/content/Context;

    move-result-object v7

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v7

    const/16 v8, 0x8

    #v8=(PosByte);
    invoke-virtual {p1, v8}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    invoke-virtual {v7, v8}, Lcom/android/mail/preferences/MailPrefs;->getRemovalAction(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 257
    .local v3, preferDelete:Z
    #v3=(Boolean);
    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 260
    .local v1, destructiveActionType:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    :goto_1
    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->getPersistedValue()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, destructiveAction:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mail/preferences/MailPrefs;->getDefaultReplyAll()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->getPersistedValue()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, replyAction:Ljava/lang/String;
    :goto_2
    #v4=(Reference);
    new-instance v2, Ljava/util/LinkedHashSet;

    #v2=(UninitRef);
    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-direct {v2, v6}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 268
    .local v2, notificationActions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v2=(Reference);
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    return-object v2

    .line 251
    .end local v0           #destructiveAction:Ljava/lang/String;
    .end local v1           #destructiveActionType:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    .end local v2           #notificationActions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #preferDelete:Z
    .end local v4           #replyAction:Ljava/lang/String;
    .end local v5           #supportsArchiveRemoveLabel:Z
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(PosShort);v8=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_0

    .line 257
    .restart local v3       #preferDelete:Z
    .restart local v5       #supportsArchiveRemoveLabel:Z
    :cond_2
    #v3=(Boolean);v5=(Boolean);v6=(Reference);v7=(Reference);v8=(Boolean);
    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v1=(Reference);
    goto :goto_1

    .line 262
    .restart local v0       #destructiveAction:Ljava/lang/String;
    .restart local v1       #destructiveActionType:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    :cond_3
    #v0=(Reference);v6=(Boolean);
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->getPersistedValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    goto :goto_2
.end method

.method public getNotificationRingtoneUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notification-ringtone"

    #v1=(Reference);
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEveryMessageNotificationEnabled()Z
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notification-notify-every-message"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isNotificationVibrateEnabled()Z
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notification-vibrate"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isNotificationsEnabledSet()Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notifications-enabled"

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
    .line 113
    if-le p1, p2, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "You appear to have downgraded your app. Please clear app data."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 117
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    return-void
.end method

.method public setNotificationRingtoneUri(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notification-ringtone"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->notifyBackupPreferenceChanged()V

    .line 229
    return-void
.end method

.method public setNotificationVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notification-vibrate"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->notifyBackupPreferenceChanged()V

    .line 238
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "notifications-enabled"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    invoke-virtual {p0}, Lcom/android/mail/preferences/FolderPreferences;->notifyBackupPreferenceChanged()V

    .line 219
    return-void
.end method
