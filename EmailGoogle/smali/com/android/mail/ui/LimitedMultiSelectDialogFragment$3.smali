.class Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;
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

.field final synthetic val$selectedValues:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;->this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

    iput-object p2, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;->val$selectedValues:Ljava/util/Set;

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
    .line 131
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;->this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->access$000(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;->this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

    invoke-static {v1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->access$000(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;

    .line 133
    .local v0, listener:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;->val$selectedValues:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;->onSelectionChanged(Ljava/util/Set;)V

    .line 137
    .end local v0           #listener:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
