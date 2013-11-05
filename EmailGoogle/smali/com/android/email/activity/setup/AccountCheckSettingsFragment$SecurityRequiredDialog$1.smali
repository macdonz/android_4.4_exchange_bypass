.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

.field final synthetic val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->dismiss()V

    .line 907
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$600(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Z)V

    .line 908
    return-void
.end method
