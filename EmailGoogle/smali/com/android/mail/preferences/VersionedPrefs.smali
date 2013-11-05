.class public abstract Lcom/android/mail/preferences/VersionedPrefs;
.super Ljava/lang/Object;
.source "VersionedPrefs.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSharedPreferencesName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/preferences/VersionedPrefs;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "sharedPrefsName"

    .prologue
    const/4 v3, 0x3

    .line 61
    #v3=(PosByte);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/preferences/VersionedPrefs;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/mail/preferences/VersionedPrefs;->mSharedPreferencesName:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/preferences/VersionedPrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 65
    iget-object v2, p0, Lcom/android/mail/preferences/VersionedPrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/preferences/VersionedPrefs;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-direct {p0}, Lcom/android/mail/preferences/VersionedPrefs;->getCurrentVersion()I

    move-result v1

    .line 69
    .local v1, oldVersion:I
    #v1=(Integer);
    invoke-virtual {p0, v1, v3}, Lcom/android/mail/preferences/VersionedPrefs;->performUpgrade(II)V

    .line 70
    invoke-direct {p0, v3}, Lcom/android/mail/preferences/VersionedPrefs;->setCurrentVersion(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->hasMigrationCompleted()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 73
    invoke-static {}, Lcom/android/mail/preferences/PreferenceMigratorHolder;->createPreferenceMigrator()Lcom/android/mail/preferences/BasePreferenceMigrator;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p1, v1, v3}, Lcom/android/mail/preferences/BasePreferenceMigrator;->performMigration(Landroid/content/Context;II)Z

    move-result v0

    .line 76
    .local v0, migrationComplete:Z
    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->setMigrationComplete()V

    .line 80
    .end local v0           #migrationComplete:Z
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private getCurrentVersion()I
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mail/preferences/VersionedPrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    const-string v1, "prefs-version-number"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private setCurrentVersion(I)V
    .locals 2
    .parameter "versionNumber"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "prefs-version-number"

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->shouldBackUp()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    :cond_0
    #v0=(Conflicted);
    return-void
.end method


# virtual methods
.method protected abstract canBackup(Ljava/lang/String;)Z
.end method

.method public clearAllPreferences()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mail/preferences/VersionedPrefs;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method protected getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mail/preferences/VersionedPrefs;->mEditor:Landroid/content/SharedPreferences$Editor;

    #v0=(Reference);
    return-object v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mail/preferences/VersionedPrefs;->mSharedPreferences:Landroid/content/SharedPreferences;

    #v0=(Reference);
    return-object v0
.end method

.method protected hasMigrationCompleted()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mail/preferences/VersionedPrefs;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->hasMigrationCompleted()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected notifyBackupPreferenceChanged()V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/MailIntentService;->broadcastBackupDataChanged(Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method protected abstract performUpgrade(II)V
.end method

.method protected setMigrationComplete()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mail/preferences/VersionedPrefs;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->setMigrationComplete()V

    .line 124
    return-void
.end method

.method public shouldBackUp()Z
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/mail/preferences/VersionedPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 247
    .local v0, allPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/mail/preferences/VersionedPrefs;->canBackup(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    const/4 v3, 0x1

    .line 253
    .end local v2           #key:Ljava/lang/String;
    :goto_0
    #v2=(Conflicted);
    return v3

    :cond_1
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method
