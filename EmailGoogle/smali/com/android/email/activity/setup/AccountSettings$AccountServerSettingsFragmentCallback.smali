.class Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountServerSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(ILcom/android/email/activity/setup/SetupData;)V
    .locals 2
    .parameter "result"
    .parameter "setupData"

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 670
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 672
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 652
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 656
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 658
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSettings;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 659
    return-void
.end method
