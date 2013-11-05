.class Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

.field final synthetic val$activity:Lcom/android/email/activity/setup/AccountSettings;

.field final synthetic val$isBack:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;ZLcom/android/email/activity/setup/AccountSettings;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    iput-boolean p2, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$isBack:Z

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettings;

    iput p4, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$position:I

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
    .line 844
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$isBack:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettings;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)V

    .line 849
    :goto_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->dismiss()V

    .line 850
    return-void

    .line 847
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettings;

    #v0=(Reference);
    iget v1, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$position:I

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$900(Lcom/android/email/activity/setup/AccountSettings;I)V

    goto :goto_0
.end method
