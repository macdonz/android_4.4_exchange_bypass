.class public Lcom/android/email/activity/setup/MailboxSettings;
.super Landroid/preference/PreferenceActivity;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
    }
.end annotation


# static fields
.field private static final MAX_EMAIL_LOOKBACK_PROJECTION:[Ljava/lang/String;

.field private static final POLICY_KEY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mMaxLookback:I

.field private final mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mSyncLookbackPref:Landroid/preference/ListPreference;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 69
    #v2=(Null);
    new-array v0, v3, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "policyKey"

    #v1=(Reference);
    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/setup/MailboxSettings;->POLICY_KEY_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "maxEmailLookback"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/setup/MailboxSettings;->MAX_EMAIL_LOOKBACK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    #p0=(Reference);
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 258
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/MailboxSettings$1;-><init>(Lcom/android/email/activity/setup/MailboxSettings;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/MailboxSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMaxLookback:I

    return p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/email/activity/setup/MailboxSettings;->POLICY_KEY_PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/email/activity/setup/MailboxSettings;->MAX_EMAIL_LOOKBACK_PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/MailboxSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    return-void
.end method

.method private enablePreferences(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 133
    return-void
.end method

.method private onDataLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 242
    #v5=(One);
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v2=(Reference);
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 246
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v1, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 247
    .local v1, mailboxName:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    const v2, 0x7f0a021e

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 254
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMaxLookback:I

    #v3=(Integer);
    invoke-static {p0, v2, v3, v5}, Lcom/android/email/activity/setup/MailboxSettings;->setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V

    .line 255
    return-void

    .line 251
    :cond_0
    #v3=(Uninit);v4=(Uninit);
    const v2, 0x7f0a021f

    #v2=(Integer);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/MailboxSettings;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private saveToDatabase()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 276
    #v1=(Null);
    iget-object v10, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_2

    move v4, v0

    .line 277
    .local v4, syncInterval:I
    :goto_0
    #v4=(Boolean);
    iget-object v10, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 279
    .local v6, syncLookback:I
    #v6=(Integer);
    iget-object v10, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    #v10=(Integer);
    if-eq v4, v10, :cond_3

    move v3, v0

    .line 280
    .local v3, syncIntervalChanged:Z
    :goto_1
    #v3=(Boolean);
    iget-object v10, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v10=(Reference);
    iget v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    #v10=(Integer);
    if-eq v6, v10, :cond_4

    move v5, v0

    .line 283
    .local v5, syncLookbackChanged:Z
    :goto_2
    #v5=(Boolean);
    if-nez v3, :cond_0

    if-eqz v5, :cond_1

    .line 284
    :cond_0
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v10, "Saving mailbox settings..."

    #v10=(Reference);
    new-array v11, v1, [Ljava/lang/Object;

    #v11=(Reference);
    invoke-static {v0, v10, v11}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 288
    .local v7, id:J
    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 290
    .local v9, context:Landroid/content/Context;
    #v9=(Reference);
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$2;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/setup/MailboxSettings$2;-><init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;ZIZIJLandroid/content/Context;)V

    #v0=(Reference);
    check-cast v2, [Ljava/lang/Void;

    #v2=(Reference);
    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/MailboxSettings$2;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 317
    .end local v7           #id:J
    .end local v9           #context:Landroid/content/Context;
    :cond_1
    #v0=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void

    .end local v3           #syncIntervalChanged:Z
    .end local v4           #syncInterval:I
    .end local v5           #syncLookbackChanged:Z
    .end local v6           #syncLookback:I
    :cond_2
    #v0=(One);v1=(Null);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Boolean);v11=(Uninit);
    move v4, v1

    .line 276
    #v4=(Null);
    goto :goto_0

    .restart local v4       #syncInterval:I
    .restart local v6       #syncLookback:I
    :cond_3
    #v4=(Boolean);v6=(Integer);v10=(Integer);
    move v3, v1

    .line 279
    #v3=(Null);
    goto :goto_1

    .restart local v3       #syncIntervalChanged:Z
    :cond_4
    #v3=(Boolean);
    move v5, v1

    .line 280
    #v5=(Null);
    goto :goto_2
.end method

.method public static setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V
    .locals 6
    .parameter "context"
    .parameter "pref"
    .parameter "maxLookback"
    .parameter "showWithDefault"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 215
    .local v2, resources:Landroid/content/res/Resources;
    #v2=(Reference);
    if-eqz p3, :cond_1

    .line 216
    const v5, 0x7f0f0013

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 218
    .local v0, entries:[Ljava/lang/CharSequence;
    #v0=(Reference);
    const v5, 0x7f0f0014

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 220
    .local v4, values:[Ljava/lang/CharSequence;
    #v4=(Reference);
    const/4 v1, 0x1

    .line 227
    .local v1, offset:I
    :goto_0
    #v1=(Boolean);
    if-lez p2, :cond_0

    .line 228
    add-int v3, p2, v1

    .line 229
    .local v3, size:I
    #v3=(Integer);
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entries:[Ljava/lang/CharSequence;
    check-cast v0, [Ljava/lang/CharSequence;

    .line 230
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #values:[Ljava/lang/CharSequence;
    check-cast v4, [Ljava/lang/CharSequence;

    .line 233
    .end local v3           #size:I
    .restart local v4       #values:[Ljava/lang/CharSequence;
    :cond_0
    #v3=(Conflicted);
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    return-void

    .line 222
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #offset:I
    .end local v4           #values:[Ljava/lang/CharSequence;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const v5, 0x7f0f0011

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 223
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    #v0=(Reference);
    const v5, 0x7f0f0012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 224
    .restart local v4       #values:[Ljava/lang/CharSequence;
    #v4=(Reference);
    const/4 v1, 0x0

    .restart local v1       #offset:I
    #v1=(Null);
    goto :goto_0
.end method

.method public static final start(Landroid/app/Activity;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/activity/setup/MailboxSettings;

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    #v0=(Reference);
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, -0x1

    #v6=(LongLo);v7=(LongHi);
    const/4 v5, 0x4

    .line 96
    #v5=(PosByte);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "MAILBOX_ID"

    #v4=(Reference);
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 99
    .local v1, mailboxId:J
    #v1=(LongLo);v2=(LongHi);
    cmp-long v3, v1, v6

    #v3=(Byte);
    if-nez v3, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->finish()V

    .line 128
    :cond_0
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void

    .line 104
    :cond_1
    #v0=(Uninit);v3=(Byte);
    const v3, 0x7f06000c

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->addPreferencesFromResource(I)V

    .line 106
    const-string v3, "sync_enabled"

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v3, "sync_window"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    .line 109
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    if-eqz p1, :cond_2

    .line 112
    const-string v3, "MailboxSettings.mailbox"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/Mailbox;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 113
    const-string v3, "MailboxSettings.maxLookback"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMaxLookback:I

    .line 114
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    #v3=(Reference);
    const-string v4, "MailboxSettings.syncEnabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const-string v4, "MailboxSettings.syncWindow"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    .line 124
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    .line 119
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    #v0=(Uninit);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 120
    new-instance v4, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;

    #v4=(UninitRef);
    invoke-direct {v4, p0, v1, v2}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;-><init>(Lcom/android/email/activity/setup/MailboxSettings;J)V

    #v4=(Reference);
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    #v3=(Reference);
    invoke-virtual {v4, v3}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 150
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->isChangingConfigurations()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    #v0=(Integer);
    const v1, 0x102002c

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onBackPressed()V

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "MailboxSettings.mailbox"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    const-string v0, "MailboxSettings.maxLookback"

    iget v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMaxLookback:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v0, "MailboxSettings.syncEnabled"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v0, "MailboxSettings.syncWindow"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method
