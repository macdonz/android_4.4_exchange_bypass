.class Lcom/android/email/activity/setup/AccountSetupOptions$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$calendar:Z

.field final synthetic val$contacts:Z

.field final synthetic val$email:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/Account;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$email:Z

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$calendar:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$contacts:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 250
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 251
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$email:Z

    #v2=(Boolean);
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$calendar:Z

    #v3=(Boolean);
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$contacts:Z

    #v4=(Boolean);
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/email/service/EmailServiceUtils;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    .line 256
    new-instance v6, Lcom/android/mail/preferences/AccountPreferences;

    #v6=(UninitRef);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/android/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    .local v6, accountPreferences:Lcom/android/mail/preferences/AccountPreferences;
    #v6=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {v6, v1}, Lcom/android/mail/preferences/AccountPreferences;->setDefaultInboxNotificationsEnabled(Z)V

    .line 259
    return-void
.end method
