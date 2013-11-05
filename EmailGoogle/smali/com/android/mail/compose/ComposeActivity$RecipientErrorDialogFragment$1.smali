.class Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2421
    iput-object p1, p0, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;->this$0:Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

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
    .line 2424
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;->this$0:Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/ComposeActivity;

    invoke-static {v0}, Lcom/android/mail/compose/ComposeActivity;->access$100(Lcom/android/mail/compose/ComposeActivity;)V

    .line 2425
    return-void
.end method
