.class Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;

.field final synthetic val$save:Z

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2657
    iput-object p1, p0, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->this$0:Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;

    iput-boolean p2, p0, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$save:Z

    iput-boolean p3, p0, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$showToast:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->this$0:Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/ComposeActivity;

    iget-boolean v1, p0, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$save:Z

    #v1=(Boolean);
    iget-boolean v2, p0, Lcom/android/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$showToast:Z

    #v2=(Boolean);
    invoke-static {v0, v1, v2}, Lcom/android/mail/compose/ComposeActivity;->access$200(Lcom/android/mail/compose/ComposeActivity;ZZ)V

    .line 2662
    return-void
.end method
