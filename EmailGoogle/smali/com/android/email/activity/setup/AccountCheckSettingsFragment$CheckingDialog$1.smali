.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field final synthetic val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismiss()V

    .line 715
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 716
    return-void
.end method
