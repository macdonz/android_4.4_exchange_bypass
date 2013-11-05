.class Lcom/android/mail/ui/TurnAutoSyncOnDialog$1;
.super Ljava/lang/Object;
.source "TurnAutoSyncOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/TurnAutoSyncOnDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/TurnAutoSyncOnDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$1;->this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;

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
    .line 108
    iget-object v0, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$1;->this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/android/mail/ui/TurnAutoSyncOnDialog;)Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$1;->this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;

    invoke-static {v0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/android/mail/ui/TurnAutoSyncOnDialog;)Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;->onCancelAutoSync()V

    .line 111
    :cond_0
    return-void
.end method
