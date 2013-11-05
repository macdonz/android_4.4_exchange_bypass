.class Lcom/android/email/activity/setup/MailboxSettings$1;
.super Ljava/lang/Object;
.source "MailboxSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/MailboxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$600(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$600(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$600(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method
