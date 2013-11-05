.class Lcom/android/mail/browse/SyncErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "SyncErrorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/SyncErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/SyncErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/SyncErrorDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mail/browse/SyncErrorDialogFragment$1;->this$0:Lcom/android/mail/browse/SyncErrorDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const/high16 v1, 0x8

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/android/mail/browse/SyncErrorDialogFragment$1;->this$0:Lcom/android/mail/browse/SyncErrorDialogFragment;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/SyncErrorDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    return-void
.end method
