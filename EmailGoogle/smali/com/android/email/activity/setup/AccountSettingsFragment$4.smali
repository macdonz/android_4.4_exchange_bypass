.class Lcom/android/email/activity/setup/AccountSettingsFragment$4;
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
    .line 772
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 777
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method