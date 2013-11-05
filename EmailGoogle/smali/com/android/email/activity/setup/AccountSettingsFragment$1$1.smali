.class Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/preferences/FolderPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/preferences/FolderPreferences;->areNotificationsEnabled()Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/preferences/FolderPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/preferences/FolderPreferences;->isNotificationVibrateEnabled()Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 608
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 609
    return-void
.end method
