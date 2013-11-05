.class Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$2;
.super Ljava/lang/Object;
.source "LimitedMultiSelectDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$2;->this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

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
    .line 142
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$2;->this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->dismiss()V

    .line 143
    return-void
.end method
