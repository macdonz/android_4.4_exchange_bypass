.class Lcom/android/email/activity/setup/AccountSettingsFragment$7;
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


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 853
    #v2=(One);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v0=(Reference);
    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1502(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 854
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 855
    return v2
.end method
