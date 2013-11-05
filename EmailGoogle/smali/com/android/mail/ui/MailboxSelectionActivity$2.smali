.class Lcom/android/mail/ui/MailboxSelectionActivity$2;
.super Ljava/lang/Object;
.source "MailboxSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/MailboxSelectionActivity;->completeSetupWithAccounts(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/MailboxSelectionActivity;

.field final synthetic val$accounts:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/mail/ui/MailboxSelectionActivity$2;->this$0:Lcom/android/mail/ui/MailboxSelectionActivity;

    iput-object p2, p0, Lcom/android/mail/ui/MailboxSelectionActivity$2;->val$accounts:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity$2;->this$0:Lcom/android/mail/ui/MailboxSelectionActivity;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity$2;->val$accounts:Landroid/database/Cursor;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->access$100(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V

    .line 214
    return-void
.end method
