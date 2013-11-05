.class public final Lcom/android/mail/preferences/MailPrefs;
.super Lcom/android/mail/preferences/VersionedPrefs;
.source "MailPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/preferences/MailPrefs$RemovalActions;,
        Lcom/android/mail/preferences/MailPrefs$ConversationListSwipeActions;,
        Lcom/android/mail/preferences/MailPrefs$PreferenceKeys;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/mail/preferences/MailPrefs;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 130
    const-string v0, "UnifiedEmail"

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/preferences/VersionedPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    #p0=(Reference);
    return-void
.end method

.method private static createWidgetPreferenceValue(Lcom/android/mail/providers/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "folderUri"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;
    .locals 1
    .parameter "c"

    .prologue
    .line 123
    sget-object v0, Lcom/android/mail/preferences/MailPrefs;->sInstance:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/mail/preferences/MailPrefs;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/preferences/MailPrefs;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/preferences/MailPrefs;->sInstance:Lcom/android/mail/preferences/MailPrefs;

    .line 126
    :cond_0
    sget-object v0, Lcom/android/mail/preferences/MailPrefs;->sInstance:Lcom/android/mail/preferences/MailPrefs;

    return-object v0
.end method

.method private getSenderWhitelist()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 369
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    #v1=(Reference);
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 370
    .local v0, defaultAddressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v0=(Reference);
    const-string v2, "display_images"

    #v2=(Reference);
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private getSenderWhitelistPatterns()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 376
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    #v1=(Reference);
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 377
    .local v0, defaultPatternSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v0=(Reference);
    const-string v2, "display_sender_images_patterns_set"

    #v2=(Reference);
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cacheActiveNotificationSet(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "cache-active-notification-set"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    return-void
.end method

.method protected canBackup(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 145
    sget-object v0, Lcom/android/mail/preferences/MailPrefs$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public clearSenderWhiteList()V
    .locals 3

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference);
    const-string v1, "display_images"

    #v1=(Reference);
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string v1, "display_sender_images_patterns_set"

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 386
    return-void
.end method

.method public clearWidgets([I)V
    .locals 7
    .parameter "appWidgetIds"

    .prologue
    .line 184
    move-object v0, p1

    .local v0, arr$:[I
    #v0=(Reference);
    array-length v3, v0

    .local v3, len$:I
    #v3=(Integer);
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 185
    .local v2, id:I
    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "widget-account-"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v2           #id:I
    :cond_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    return-void
.end method

.method public configureWidget(ILcom/android/mail/providers/Account;Ljava/lang/String;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "account"
    .parameter "folderUri"

    .prologue
    .line 164
    if-nez p2, :cond_0

    .line 165
    sget-object v0, Lcom/android/mail/preferences/MailPrefs;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Cannot configure widget with null account"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "widget-account-"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/android/mail/preferences/MailPrefs;->createWidgetPreferenceValue(Lcom/android/mail/providers/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public getActiveNotificationSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "cache-active-notification-set"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConversationListSwipeActionInteger(Z)I
    .locals 6
    .parameter "allowArchive"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 242
    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getIsConversationListSwipeEnabled()Z

    move-result v1

    .line 243
    .local v1, swipeEnabled:Z
    #v1=(Boolean);
    const-string v4, "delete"

    #v4=(Reference);
    invoke-virtual {p0, p1}, Lcom/android/mail/preferences/MailPrefs;->getRemovalAction(Z)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    move v0, v3

    .line 245
    .local v0, archive:Z
    :goto_0
    #v0=(Boolean);
    if-eqz v1, :cond_2

    .line 246
    if-eqz v0, :cond_1

    .line 249
    :goto_1
    #v2=(PosByte);
    return v2

    .end local v0           #archive:Z
    :cond_0
    #v0=(Uninit);v2=(Null);
    move v0, v2

    .line 243
    #v0=(Null);
    goto :goto_0

    .restart local v0       #archive:Z
    :cond_1
    #v0=(Boolean);
    move v2, v3

    .line 246
    #v2=(One);
    goto :goto_1

    .line 249
    :cond_2
    #v2=(Null);
    const/4 v2, 0x2

    #v2=(PosByte);
    goto :goto_1
.end method

.method public getDefaultReplyAll()Z
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "default-reply-all"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getDisplayImagesFromSender(Ljava/lang/String;)Z
    .locals 7
    .parameter "sender"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/mail/preferences/MailPrefs;->getSenderWhitelist()Ljava/util/Set;

    move-result-object v6

    #v6=(Reference);
    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 317
    .local v2, displayImages:Z
    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 320
    .local v5, sharedPreferences:Landroid/content/SharedPreferences;
    #v5=(Reference);
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 321
    .local v1, defaultPatternSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v1=(Reference);
    const-string v6, "display_sender_images_patterns_set"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 323
    .local v0, currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    #v3=(Reference);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/String;

    .line 324
    .local v4, pattern:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 325
    if-eqz v2, :cond_0

    .line 331
    .end local v0           #currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #defaultPatternSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v2
.end method

.method public getIsConversationListSwipeEnabled()Z
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    #v0=(Reference);
    const-string v1, "conversation-list-swipe"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method public getNumOfDismissesForAutoSyncOff()I
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "num-of-dismisses-auto-sync-off"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getParallaxDirectionAlternative()Z
    .locals 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    #v0=(Reference);
    const-string v1, "ap-parallax-direction"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method public getParallaxSpeedAlternative()Z
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    #v0=(Reference);
    const-string v1, "ap-parallax-speed"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method public getRemovalAction(Z)Ljava/lang/String;
    .locals 3
    .parameter "supportsArchive"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    const-string v0, "archive-and-delete"

    .line 208
    .local v0, defaultAction:Ljava/lang/String;
    :goto_0
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    #v1=(Reference);
    const-string v2, "removal-action"

    #v2=(Reference);
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 205
    .end local v0           #defaultAction:Ljava/lang/String;
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const-string v0, "delete"

    #v0=(Reference);
    goto :goto_0
.end method

.method public getShowSenderImages()Z
    .locals 3

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 396
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    #v0=(Reference);
    const-string v1, "conversation-list-sender-image"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method public getWidgetConfiguration(I)Ljava/lang/String;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "widget-account-"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasMigrationCompleted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "migrated-version"

    #v2=(Reference);
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    #v0=(Boolean);
    return v0
.end method

.method public incNumOfDismissesForAutoSyncOff()V
    .locals 4

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "num-of-dismisses-auto-sync-off"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 438
    .local v0, value:I
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num-of-dismisses-auto-sync-off"

    add-int/lit8 v3, v0, 0x1

    #v3=(Integer);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    return-void
.end method

.method public isConversationPhotoTeaserAlreadyShown()Z
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "conversation-photo-teaser-shown-three"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isLongPressToSelectTipAlreadyShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 289
    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "long-press-to-select-tip-shown"

    #v2=(Reference);
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    #v0=(Boolean);
    return v0
.end method

.method public isWidgetConfigured(I)Z
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "widget-account-"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    .line 135
    if-le p1, p2, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "You appear to have downgraded your app. Please clear app data."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 138
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    if-ne p1, p2, :cond_1

    .line 141
    :cond_1
    return-void
.end method

.method public resetNumOfDismissesForAutoSyncOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    #v3=(Null);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "num-of-dismisses-auto-sync-off"

    #v2=(Reference);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, value:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num-of-dismisses-auto-sync-off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 433
    :cond_0
    return-void
.end method

.method public setConversationListSwipeEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "conversation-list-swipe"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 232
    return-void
.end method

.method public setConversationPhotoTeaserAlreadyShown()V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "conversation-photo-teaser-shown-three"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    return-void
.end method

.method public setDefaultReplyAll(Z)V
    .locals 2
    .parameter "replyAll"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "default-reply-all"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 198
    return-void
.end method

.method public setDisplayImagesFromSender(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "sender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, allowedPatterns:Ljava/util/List;,"Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz p2, :cond_2

    .line 339
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v1=(Reference);v2=(Conflicted);v7=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/util/regex/Pattern;

    .line 340
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/android/mail/preferences/MailPrefs;->getSenderWhitelistPatterns()Ljava/util/Set;

    move-result-object v0

    .line 344
    .local v0, currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v0=(Reference);
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, patternRegex:Ljava/lang/String;
    #v3=(Reference);
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 347
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v5

    .line 348
    .local v5, updatedPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v5=(Reference);
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {p0, v5}, Lcom/android/mail/preferences/MailPrefs;->setSenderWhitelistPatterns(Ljava/util/Set;)V

    .line 365
    .end local v0           #currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    .end local v3           #patternRegex:Ljava/lang/String;
    .end local v5           #updatedPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 355
    :cond_2
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/preferences/MailPrefs;->getSenderWhitelist()Ljava/util/Set;

    move-result-object v6

    .line 356
    .local v6, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v6=(Reference);
    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 361
    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v4

    .line 362
    .local v4, updatedList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v4=(Reference);
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0, v4}, Lcom/android/mail/preferences/MailPrefs;->setSenderWhitelist(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public setLongPressToSelectTipAlreadyShown()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "long-press-to-select-tip-shown"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 296
    return-void
.end method

.method protected setMigrationComplete()V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "migrated-version"

    #v1=(Reference);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method public setSenderWhitelist(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, addresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "display_images"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 301
    return-void
.end method

.method public setSenderWhitelistPatterns(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, patterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "display_sender_images_patterns_set"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 305
    return-void
.end method

.method public setShowSenderImages(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "conversation-list-sender-image"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 392
    return-void
.end method
