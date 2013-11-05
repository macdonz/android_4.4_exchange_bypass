.class Lcom/android/email/activity/setup/AccountSettingsFragment$5;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

.field final synthetic val$policiesCategory:Landroid/preference/PreferenceCategory;

.field final synthetic val$retryAccount:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$5;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$5;->val$policiesCategory:Landroid/preference/PreferenceCategory;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$5;->val$retryAccount:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$5;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$5;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 832
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$5;->val$policiesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$5;->val$retryAccount:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 833
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method
